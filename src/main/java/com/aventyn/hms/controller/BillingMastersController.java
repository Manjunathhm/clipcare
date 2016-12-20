package com.aventyn.hms.controller;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.aventyn.hms.dao.BillingMastersDAO;
import com.aventyn.hms.dao.DepartmentDAO;
import com.aventyn.hms.domain.BillingMasters;

@Controller
@RequestMapping(value="/billingMasters")
public class BillingMastersController {
	
	@Autowired
	BillingMastersDAO billingMastersDAO;
	
	@Autowired
	DepartmentDAO departmentDAO;
	
	@ModelAttribute
	public BillingMasters loadForm(@RequestParam(required=false)String billingMastersId){
		BillingMasters billing = null;
		if(billingMastersId==null || billingMastersId.isEmpty()){
			billing= new BillingMasters();
		}else{
			
		}
		
		return billing;
	}
	
	@RequestMapping(value="/form", method=RequestMethod.GET)
	public String getForm(ModelMap model){
		System.out.println("Billing Controller's form()");
		BillingMasters m=new BillingMasters();
		Map<String, String> departments= departmentDAO.getDepartments();
		
		model.addAttribute("billingMasters",m);
		model.addAttribute("departments",departments);
		return "billingMastersForm";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public @ResponseBody String saveBillingMasters(@ModelAttribute("billingMasters") BillingMasters billingMasters,
	        ModelMap map, RedirectAttributes redirect) throws IllegalStateException, IOException {
		
    String saveDirectory = "C:/myfiles/";
    String result=null;

    MultipartFile file = billingMasters.getFile();

	System.out.println("Bill: "+billingMasters.getABCCost() +" "+billingMasters.getBillingAmount()+" "+ billingMasters.getDepartmentId());
	
    if (null != file) {
        	System.out.println("File Name "+file);
            String fileName = file.getOriginalFilename();
            if (!"".equalsIgnoreCase(fileName)) {
            	file.transferTo(new File(saveDirectory + fileName));
            }
        }
    	billingMasters.setFilePath(saveDirectory+file.getOriginalFilename());
    	String id=billingMastersDAO.save(billingMasters);
    	if(id!=null){
    		
    		System.out.println("Inside IF loop");
    	result="Billing Details for "+billingMasters.getServiceName() +"has been saved successfully.";
    	//redirect.addFlashAttribute("successMsg", "Billing Details for "+billingMasters.getServiceName() +"has been saved successfully.");
    	//redirect.addFlashAttribute("billingMasters", billingMasters);
    	// map.addAttribute("files", fileNames);
    	}
    	return result;
	}
	
}