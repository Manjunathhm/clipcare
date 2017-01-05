package com.aventyn.hms.dao;

import java.util.Collection;
import java.util.Map;

import com.aventyn.hms.domain.Patient;

public interface PatientDAO {

	
	public String savePatient(Patient patient);

	public Patient findPatientById(String patientId);

	public Collection<Patient> getAllPatients();
	
	public Map<String, String> getPatientNames();
	//public Long getNextSequence();
}
