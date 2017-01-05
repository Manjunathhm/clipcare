package com.aventyn.hms.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aventyn.hms.dao.AppointmentDAO;
import com.aventyn.hms.dao.CategoryDAO;
import com.aventyn.hms.dao.DepartmentDAO;
import com.aventyn.hms.dao.DoctorDAO;
import com.aventyn.hms.dao.PatientDAO;
import com.aventyn.hms.domain.Appointment;
import com.aventyn.hms.domain.Category;
import com.aventyn.hms.domain.Doctor;
import com.aventyn.hms.domain.Patient;
import com.google.gson.Gson;

@Controller
@RequestMapping("/appointment")
public class AppointmentController {

	@Autowired
	AppointmentDAO appointmentDAO;
	
	@Autowired
	DepartmentDAO departmentDAO;
	
	@Autowired
	DoctorDAO doctorDAO;
	
	@Autowired
	PatientDAO patientDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@ModelAttribute
	public Appointment loadObject(@RequestParam(value="appointmentId", required=false)String appointmentId){
		
		System.out.println("ModelAttribute method "+appointmentId);
		Appointment appointment=null;
		
		if(appointmentId ==null || appointmentId.isEmpty()){
			appointment=new Appointment();
		}else{
			appointment=appointmentDAO.findById(appointmentId);
		}		
		return appointment;
		
	}
	
	@RequestMapping(value="/form", method=RequestMethod.GET)
	public String form(ModelMap model){
		Gson gson = new Gson();

		model.addAttribute("departmentNames",departmentDAO.getDepartments());
		model.addAttribute("types", categoryDAO.getNames());
		
		Collection<Patient> patients=patientDAO.getAllPatients();
		model.addAttribute("patients",patients );
		String jsonPatients=gson.toJson(patients);
		model.addAttribute("jsonPatients", jsonPatients);
		
		Collection<Category> referrals=categoryDAO.findAllCategories();
		model.addAttribute("referrals", referrals);
		String jsonReferrals=gson.toJson(referrals);
		model.addAttribute("jsonReferrals", jsonReferrals);
		
		Collection<Doctor> doctors=doctorDAO.findAllDoctors();
	    String jsonData = gson.toJson(doctors);
	    model.addAttribute("doctors", doctors);
	    model.addAttribute("jsonDoctors",jsonData);
		
	    Collection<Appointment> appointments=appointmentDAO.getAllAppointments();
	    for (Appointment appointment : appointments) {
			System.out.println("DateAndTImeFromDB: "+appointment.getDateAndTimeOfAppointment());
		}
	    String jsonAppointments= gson.toJson(appointments);
	    model.addAttribute("appointments", appointments);
		model.addAttribute("jsonAppointments", jsonAppointments);
		
		
		model.addAttribute("doctor", new Doctor());
		model.addAttribute("category", new Category());
		model.addAttribute("appointment", new Appointment());
		
		return "appointmentForm";
		
	}
	List<Patient> userList=new ArrayList<Patient>();
	
    @RequestMapping(value="/savePatient",method=RequestMethod.POST)
    public @ResponseBody String[] addUser(@ModelAttribute(value="patient") Patient patient, BindingResult result ){
    	System.out.println("Calling the ajax method : form(Post)");
        String[] returnText= new String[2];
        String fullName=patient.getFirstName();
        String[] names=fullName.split(" ");
        int length=names.length;
        String FN="";
        String MN="";
        String LN="";
		for(int i=0;i<length;i++){
			if(i==0){
				FN=names[i];
			}
			else if(i==length-1){
				LN=names[i];
			}else{
				MN=MN+" " +names[i];
			}
		}
		patient.setFirstName(FN);
		patient.setMiddleName(MN.trim());
		patient.setLastName(LN);
        System.out.println("MN :"+patient.getMobileNumber1());
        System.out.println("EM: "+patient.getEmailId1());
        System.out.println("FN: "+patient.getFirstName());
        System.out.println("Gender: "+patient.getGender());
        System.out.println("Type of Patient: "+patient.getPatientType());
        System.out.println("Referral ID : "+patient.getReferralId());
        String patientId=patientDAO.savePatient(patient);
        if(!result.hasErrors()|| patientId!=null){
            userList.add(patient);
            returnText[0] = "Patient details have been saved sucessfully.";
            returnText[1] = patientId;
        }else{
            returnText[0] = "Sorry, an error has occur. Patient details couldn't be saved.";
        }
        return returnText;
    }

    @RequestMapping(value="/saveReferral")
    public @ResponseBody String[] showUsers(@ModelAttribute(value="category") Category category, BindingResult result ){
    	System.out.println("Calling controller's function...."+category.getCategoryName());
    	String[] returnText = new String[3];
    	if(!result.hasErrors()){
            //userList.add(category);
    		String id=categoryDAO.saveCategory(category);
            returnText[0] = "Referral details have been saved sucessfully.";
            returnText[1] = id;
            returnText[2] = category.getCategoryName();
        }else{
            returnText[0] = "Sorry, an error has occur. Referral has not been added to list.";
        }
    	return returnText;
        
    }
    
    @RequestMapping(value="/revisit")
    public @ResponseBody String editShiftTimings(@RequestParam(value="patientId")String patientId,ModelMap model){
    	System.out.println("Patient Id : "+patientId);
    	
    	return "successfully returned....";
    }
    
    @RequestMapping(value="/save")
    public String bookAppointment(@ModelAttribute(value="appointment") Appointment appointment, BindingResult bindingResult){
    	System.out.println("Saving appointment method in controller "+appointment);
    	System.out.println("Details of Appointment : "+appointment.getAppointmentId() +" "+appointment.getCurrentStatus()+" "+appointment.getDoctorId()+" "+appointment.getTypeOfAppointment());
    	System.out.println("Details "+appointment.getEndTime()+" "+appointment.getPatientId()+" "+appointment.getReferralId()+" "+appointment.getStartTime());
    	String id=appointmentDAO.saveAppointment(appointment);
    	
    	System.out.println("Created Id : "+id);
    	return "redirect:form";
    }
    
    @RequestMapping(value="/updateShifts")
    public @ResponseBody String updateShiftTimings(@ModelAttribute(value="doctor")Doctor doctor, BindingResult result){
    	
    	
    	return "Shift Timings have been updated Successfully";
    }
}
