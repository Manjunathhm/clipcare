package com.aventyn.hms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aventyn.hms.dao.PatientDAO;
import com.aventyn.hms.domain.Hospital;
import com.aventyn.hms.domain.Patient;

/**
 * @author aventyn
 *
 */
@Controller
@RequestMapping(value="/patient")
public class PatientController {

	@Autowired
	PatientDAO patientDAO=null;
	 
	@Autowired
	CategoryController categoryController;
	
	@ModelAttribute
	public Patient getObject(@RequestParam(value="patientId", required=false) String patientId){
		System.out.println("Model Attribute method :: "+patientId);
		Patient patient;
		if(patientId == null || patientId.isEmpty()){
			patient=new Patient();
		}else{			
			patient=patientDAO.findPatientById(patientId);
			System.out.println("Minor status :: "+patient.isMinor());
		}
		return patient;	
	}
	
	@RequestMapping(value={"/form", "/edit"}, method=RequestMethod.GET)
	public String demo(ModelMap model){
		System.out.println("New Patient form");
		model.addAttribute("message", "DEmo for Display..");
		Hospital hospital = new Hospital();
		hospital.setHospitalId("BMS_NRC_BNG019");
		hospital.setHospitalName("BMS Hospital");
		hospital.setBranch("NR Colony");
		hospital.setLocation("Bangalore");
		model.addAttribute("hospital", hospital);
		model.addAttribute("patients", patientDAO.getAllPatients());
		return "patientForm";
	}
	 
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String savePatient(Patient patient){

		System.out.println("ID b4 Save method of Patient Controller "+patient.getPatientId()+ patient.getFirstName());
		String id=patientDAO.savePatient(patient);
		System.out.println("ID after Save method of Patient Controller " + id);

		return "redirect:patientList";
	}
	
	@RequestMapping(value="/patientList", method=RequestMethod.GET)
	public String get(ModelMap model){
		
		model.addAttribute("patients", patientDAO.getAllPatients());
		model.addAttribute("message", "DEmo for Display..");
		return "/patientList";
	}

	/*@RequestMapping(value="/demo", method=RequestMethod.GET)
	public void checkSeq(){
		System.out.println("Sequence checking....");
		Long l=patientDAO.getNextSequence();
		System.out.println("Next : "+l);
	}*/
}
