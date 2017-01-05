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

import com.aventyn.hms.dao.ServiceMasterDAO;
import com.aventyn.hms.dao.DepartmentDAO;
import com.aventyn.hms.domain.ServiceMaster;

@Controller
@RequestMapping(value="/serviceMaster")
public class ServiceMasterController {
	
	@Autowired
	ServiceMasterDAO serviceMasterDAO;
	
	@Autowired
	DepartmentDAO departmentDAO;
	
	@ModelAttribute
	public ServiceMaster loadForm(@RequestParam(required=false)String billingMastersId){
		ServiceMaster billing = null;
		if(billingMastersId==null || billingMastersId.isEmpty()){
			billing= new ServiceMaster();
		}else{
			
		}
		
		return billing;
	}
	
	@RequestMapping(value="/form", method=RequestMethod.GET)
	public String getForm(ModelMap model){
		System.out.println("Billing Controller's form()");
		ServiceMaster m=new ServiceMaster();
		Map<String, String> departments= departmentDAO.getDepartments();
		
		model.addAttribute("billingMasters",m);
		model.addAttribute("departments",departments);
		return "serviceMasterForm";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public @ResponseBody String saveBillingMasters(@ModelAttribute("serviceMaster") ServiceMaster serviceMaster,
	        ModelMap map, RedirectAttributes redirect) throws IllegalStateException, IOException {
		
    String saveDirectory = "C:/myfiles/";
    String result=null;

    MultipartFile file = serviceMaster.getFile();

	System.out.println("Bill: "+serviceMaster.getABCCost() +" "+serviceMaster.getBillingAmount()+" "+ serviceMaster.getDepartmentId());
	
    if (null != file) {
        	System.out.println("File Name "+file);
            String fileName = file.getOriginalFilename();
            if (!"".equalsIgnoreCase(fileName)) {
            	file.transferTo(new File(saveDirectory + fileName));
            }
        }
    	serviceMaster.setFilePath(saveDirectory+file.getOriginalFilename());
    	String id=serviceMasterDAO.save(serviceMaster);
    	if(id!=null){
    		
    	System.out.println("Inside IF loop");
    	result="Billing Details for "+serviceMaster.getServiceName() +"has been saved successfully.";
    	}
    	return result;
	}
	
}