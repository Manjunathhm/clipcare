package com.aventyn.hms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aventyn.hms.dao.DepartmentDAO;
import com.aventyn.hms.domain.Department;


@Controller
@RequestMapping(value="/department")
public class DepartmentController {

	@Autowired
	DepartmentDAO departmentDAO;
	
	@ModelAttribute
	public Department loadObject(@RequestParam(required=false)String departmentId){
		
		Department department = null;
		if(departmentId==null || departmentId.isEmpty()){
			department=new Department();
		}else{
			
		}
		return department;
	}
	
	@RequestMapping(value="/form", method=RequestMethod.GET)
	public String form(){
		System.out.println("Form method of Department Controller");
		
		return "departmentForm";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public @ResponseBody String save(@ModelAttribute(value="department") Department department, BindingResult result){
		String returnText= null;
		
		System.out.println("Save method..."+department.getDepartmentName());
				
		if(!result.hasErrors()){
			String id=departmentDAO.save(department);
            returnText = "Department has been saved sucessfully with ID: "+id;
        }else{
            returnText = "Sorry, an error has occur. Department details couldn't be saved.";
        }
		return returnText;
	}
}
