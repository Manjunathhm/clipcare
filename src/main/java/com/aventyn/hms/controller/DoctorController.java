package com.aventyn.hms.controller;

import java.util.Collection;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aventyn.hms.dao.DoctorDAO;
import com.aventyn.hms.domain.Doctor;
import com.aventyn.hms.domain.Shift;

@Controller
@RequestMapping(value="/doctor")
public class DoctorController {

	@Autowired
	DoctorDAO doctorDAO;
	
	@ModelAttribute
	public Doctor loadObject(@RequestParam(value="doctorId", required=false)String doctorId){
		System.out.println("Model Attribute Method "+doctorId);
		Doctor doctor = null;		        
		
		if(doctorId == null || doctorId.isEmpty()){
			doctor=new Doctor();
		}else{
			doctor=doctorDAO.findDoctorById(doctorId);
			System.out.println("Else Block "+doctor);
		}
		return doctor;
	}
	
	@RequestMapping(value="/demo", method=RequestMethod.GET)
	public String demo(){
		System.out.println("Demo method of Controller");
		return "demo";
	}
	@RequestMapping(value="/success", method=RequestMethod.POST)
	public String success(){
		System.out.println("Demo method of Controller");
		return "doctorList";
	}
	
	
	@RequestMapping(value={"/form", "/edit" }, method=RequestMethod.GET)
	public String form(ModelMap model){
		
		System.out.println("Doctor Form calling....");
			
		Collection<Doctor> dcs=doctorDAO.findAllDoctors();
		model.addAttribute("doctors", dcs);
		for (Doctor doctor : dcs) {
			System.out.println("Dept: "+doctor.getDepartment());
			System.out.println("shifts: "+doctor.getShifts().size());
			List<Shift> ss=doctor.getShifts();
			for (Shift shift : ss) {
				System.out.println("Working Days: "+shift.getWorkingDays());
				System.out.println("Time: "+shift.getFromTime() +"-"+shift.getToTime());
			}
			
		}
		return "doctorFormh";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String save(@Valid @ModelAttribute("doctor") Doctor doctor,
            BindingResult result) {
		System.out.println(doctor.getFirstName());
 
		System.out.println("Controller's save()."+doctor.getDoctorId());
        if (result.hasErrors()) {
            return "doctorForm";
        }
        else{
		
		System.out.println("Doctor "+doctorDAO.save(doctor) +" has been saved successfully");		
		
		return "redirect:doctorList";
        }
	}
	
	@RequestMapping(value="/doctorList", method=RequestMethod.GET)
	public String getDoctors(ModelMap model){
		
		Collection<Doctor> doctors=doctorDAO.findAllDoctors();
		for (Doctor doctor : doctors) {
			System.out.println("Doctors : "+doctor);
		}
		
		model.addAttribute("doctors", doctors);
		return "doctorList";
	}
}
