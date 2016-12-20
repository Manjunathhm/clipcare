package com.aventyn.hms.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

import com.aventyn.hms.domain.Counter;
import com.aventyn.hms.domain.Department;
import com.aventyn.hms.domain.Doctor;

public class DoctorDAOImpl implements DoctorDAO{

	@Autowired
	MongoTemplate mongoTemplate;
	
	@Override
	public Doctor findDoctorById(String doctorId) { 
		return mongoTemplate.findById(doctorId, Doctor.class, "doctors");
	}

	@Override
	public String save(Doctor doctor) {
		String doctorId=doctor.getDoctorId();
		
		if(!doctorId.isEmpty()){	
			System.out.println("Updating the doctor's Details....");
			System.out.println(doctor.getFirstName() + doctor.getShifts().get(1).getToTime());
			
			mongoTemplate.updateFirst(new Query(Criteria.where("_id").is(doctorId)), new Update(), Doctor.class);
			mongoTemplate.save(doctor, "doctors");
		
		}else{
			Counter counter=mongoTemplate.findAndModify(new Query(Criteria.where("_id").is("doctorId")), new Update().inc("sequence", 1), Counter.class, "counters");

			Integer seq=counter.getSequence();
			doctor.setDoctorId("BMSHTDR"+seq);
			doctor.setActive(true);
			mongoTemplate.save(doctor, "doctors");
		}
		 
		return doctor.getDoctorId();
	}

	@Override
	public Collection<Doctor> findAllDoctors() {
		
		Query query=new Query();
		query.fields().include("firstName");
		query.fields().include("middleName");
		query.fields().include("lastName");
		query.fields().include("mobileNumber1");
		query.fields().include("emailId1");
		query.fields().include("age");
		query.fields().include("gender");
		query.fields().include("department");
		query.fields().include("qualification");
		query.fields().include("shifts");
		query.fields().include("slotTime");
				
		return mongoTemplate.find(query, Doctor.class, "doctors");
	}

	@Override
	public boolean delete(String doctorId) {
		System.out.println("Deleting the Doctor : "+doctorId);
		mongoTemplate.findAndModify(new Query(Criteria.where("_id").is(doctorId)), new Update().set("active", false), Doctor.class, "doctors");
		return true;
	}


	@Override
	public List<String> getDepartmentNames() {

	//	List<Department> objects=mongoTemplate.findAll(Department.class, "departmentNames");
		List<String> departmentNames = new ArrayList<String>();
		Department dp=new Department();
		Department dp2=new Department();
		Department dp3=new Department();
		dp.setDepartmentName("Cardiology");
		dp2.setDepartmentName("Physiology");
		dp3.setDepartmentName("General Practitioners");
		List<String> departments=new ArrayList<String>();
		departments.add(dp.getDepartmentName());
		departments.add(dp2.getDepartmentName());
		departments.add(dp3.getDepartmentName());
		
		return departmentNames;
	}
	/*@Override
	public List<String> getDepartments() {

		Department dp=new Department();
		Department dp2=new Department();
		Department dp3=new Department();
		dp.setDepartment("Cardiology");
		dp2.setDepartment("Physiology");
		dp3.setDepartment("General Practitioners");
		List<String> departments=new ArrayList<String>();
		departments.add(dp.getDepartment());
		departments.add(dp2.getDepartment());
		departments.add(dp3.getDepartment());
		
		return departments;
	}*/

	@Override
	public void saveShifts(String doctorId) {

		System.out.println("Saving the Shifts of Doctor");
		
		mongoTemplate.updateFirst(new Query(Criteria.where("_id").is(doctorId)), new Update(), Doctor.class);
		
		//mongoTemplate.save(doctor, "doctors");
	}
}
