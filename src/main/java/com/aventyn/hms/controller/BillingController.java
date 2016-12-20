package com.aventyn.hms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aventyn.hms.dao.PatientDAO;
import com.aventyn.hms.domain.Bill;

@Controller
@RequestMapping(value="/billing")
public class BillingController {
	
	@Autowired
	PatientDAO patientDAO;
	
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
		model.addAttribute("patients", patientDAO.getAllPatients());
		
		System.out.println("Billing Page.");
		
		return "billingForm";
	}
	
	@RequestMapping(value="/lastBill")
	public @ResponseBody String lastBill(ModelMap model){
		Bill b=new Bill();
		b.setBillAmount(1000);;
		b.setBillingId("12345SDf");
		model.addAttribute("lastBills", "");
		System.out.println("Last Bills...");
		return "success";
	}
}
