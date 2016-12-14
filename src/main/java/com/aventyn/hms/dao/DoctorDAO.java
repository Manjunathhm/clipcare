package com.aventyn.hms.dao;

import java.util.Collection;
import java.util.List;

import com.aventyn.hms.domain.Doctor;

public interface DoctorDAO {

	public Doctor findDoctorById(String doctorId);
	
	public String save(Doctor doctor);
	
	public Collection<Doctor> findAllDoctors();
	
	public boolean delete(String doctorId);
	
	public List<String> getDepartmentNames();
	
	public void saveShifts(String doctorId);

		
}
