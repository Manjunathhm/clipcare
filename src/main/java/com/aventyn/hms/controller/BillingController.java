package com.aventyn.hms.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aventyn.hms.dao.ServiceMasterDAO;
import com.aventyn.hms.dao.AppointmentDAO;
import com.aventyn.hms.dao.BillingDAO;
import com.aventyn.hms.dao.CategoryDAO;
import com.aventyn.hms.dao.DoctorDAO;
import com.aventyn.hms.dao.PatientDAO;
import com.aventyn.hms.domain.Advance;
import com.aventyn.hms.domain.Bill;
import com.aventyn.hms.domain.Doctor;
import com.aventyn.hms.domain.Patient;
import com.aventyn.hms.domain.ServiceMaster;
import com.aventyn.hms.domain.ServiceMasterClone;
import com.google.gson.Gson;

@Controller
@RequestMapping(value="/billing")
public class BillingController {
	
	@Autowired
	PatientDAO patientDAO;
	
	@Autowired
	ServiceMasterDAO serviceMasterDAO;
	
	@Autowired
	AppointmentDAO appointmentDAO;
	
	@Autowired
	BillingDAO billingDAO;
	
	@Autowired
	DoctorDAO doctorDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@ModelAttribute
	public Bill loadObject(@RequestParam(value="billingId", required=false)String billingId){
		Bill bill=null;
		
		if(billingId==null || billingId.isEmpty()){
			bill=new Bill();
		}
		
		return bill;
	}
	
	@RequestMapping(value="/form")
	public String form(ModelMap model){
		model.addAttribute("appointments", appointmentDAO.getAllAppointments());
		Collection<ServiceMaster> list=serviceMasterDAO.getBillingMasters();
		Map<String, String> map=new HashMap<String, String>();
		for (ServiceMaster serviceMaster : list) {
			map.put(serviceMaster.getServiceMasterId(), serviceMaster.getServiceName());
		}
		
		/*Map<String, String> numberToString = new HashMap<String, String>(); 
		numberToString.put("1", "JSP"); 
		numberToString.put("BMSHTPT1", "Java"); 
		numberToString.put("3", "JSTL"); 
		numberToString.put("4", "J2EE"); 
		numberToString.put("5", "JEE");*/

		model.addAttribute("patientNames", patientDAO.getPatientNames());
		model.addAttribute("doctorNames", doctorDAO.getDoctorNames());
		
		model.addAttribute("services",map);
		model.addAttribute("doctor", new Doctor());
			
		return "billingForm";
	}
	
	@RequestMapping(value="/{patientId}")
	public @ResponseBody String[] lastBill(ModelMap model, @RequestParam("patientId") String patientId){
		System.out.println("ID: "+patientId);
		
		String[] result=new String[4];
		Gson gson = new Gson();
		Patient patient=patientDAO.findPatientById(patientId);
		System.out.println("ReferralId in Billing controller: "+patient.getReferralId());
		Collection<Patient> coll=new ArrayList<Patient>();
		coll.add(patient);
		String personalData=gson.toJson(coll);
		result[0]=personalData;
		
		String lastBills=gson.toJson(billingDAO.lastFiveBills(patientId));
		model.addAttribute("lastBills", lastBills);
		result[1]=lastBills;
		result[2]=categoryDAO.getReferralName(patient.getReferralId());
		
		String advances=gson.toJson(billingDAO.getMyDueBills(patientId));
		model.addAttribute("dueBills", advances);
		result[3]=advances;
		return result;
	}
	
	@RequestMapping(value="/loadService")
	public @ResponseBody String service(ModelMap model, String serviceId){
		System.out.println("Ser Name: "+serviceId);
		Gson gson = new Gson();
		Collection<ServiceMaster> list=serviceMasterDAO.getBillingMasters();
		Collection<ServiceMaster> resultList = new ArrayList<ServiceMaster>();
		for (ServiceMaster serviceMaster : list) {
			if(serviceMaster.getServiceMasterId().equalsIgnoreCase(serviceId)){
				resultList.add(serviceMaster);
			}
		}
		
		String jsonService=gson.toJson(resultList);
		model.addAttribute("jsonService", jsonService);
		return jsonService;
	}
	
	@RequestMapping(value="/save")
	public @ResponseBody String save(@ModelAttribute(value="bill")Bill bill){
		ServiceMasterClone sm=null;
		bill.setClone(sm);
		System.out.println("BillAmount: "+bill.getBillAmount());
		System.out.println("Amount Paid : "+bill.getPaidAmount());
		System.out.println("DueAmount: "+bill.getBillingDate());
		
		Bill cb=billingDAO.getMyBill(bill.getPatientId(), bill.getAppointmentId());
		if(cb!=null){
		System.out.println("GET MY BILL: "+cb.getPermanentBillId());
		bill.setPermanentBillId(cb.getPermanentBillId());
			
		}
		
		return "Bill Details "+billingDAO.save(bill)+" have been saved Successfully";
	}
	/*@RequestMapping(value="/save")
	public String save(@ModelAttribute(value="/bill")Bill bill,ModelMap model){
		ServiceMasterClone sm=null;
		bill.setClone(sm);
		System.out.println(bill);
		System.out.println("DATE IN DAO B4: "+bill.getBillingDate());
		System.out.println("New ID generated: "+billingDAO.save(bill));
		Bill b=billingDAO.findById(bill.getBillingId());
		System.out.println("Date : "+b.getBillingDate());
		return "dashboard";
	}*/
}
