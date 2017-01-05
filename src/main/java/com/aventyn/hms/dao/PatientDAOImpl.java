package com.aventyn.hms.dao;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

import com.aventyn.hms.domain.Counter;
import com.aventyn.hms.domain.Patient;

public class PatientDAOImpl implements PatientDAO{

	public static String collectionName="patients";
	@Autowired
	MongoTemplate mongoTemplate;
	
	@Override
	public Patient findPatientById(String patientId) {
		return mongoTemplate.findById(patientId, Patient.class, collectionName);
	}
	
	@Override
	public String savePatient(Patient patient) {
		
		String patientId=patient.getPatientId();
		
		if(patientId ==null || patientId.isEmpty()){
			
			System.out.println("Save method of PatientDAO Impl, Id is : "+patientId);
			Counter counter=mongoTemplate.findAndModify(new Query(Criteria.where("_id").is("patientId")), new Update().inc("sequence", 1), Counter.class, "counters");
			patient.setPatientId("BMSHTPT"+counter.getSequence());
			mongoTemplate.save(patient, collectionName);
		
		}else{
			
			System.out.println("Updating the Patient Info Id is : "+patientId);
			mongoTemplate.updateFirst(new Query(Criteria.where("_id").is(patientId)), new Update(), Patient.class);
			mongoTemplate.save(patient, collectionName);
			
		}
		return patient.getPatientId();
		
	}

	@Override
	public Collection<Patient> getAllPatients() {
		Query query=new Query();
		query.fields().include("patientId");
		query.fields().include("firstName");
		query.fields().include("middleName");
		query.fields().include("lastName");
		query.fields().include("dateOfBirth");
		query.fields().include("age");
		query.fields().include("gender");
		query.fields().include("mobileNumber1");
		query.fields().include("emailId1");
		query.fields().include("currentAddress");
				
		return mongoTemplate.find(query, Patient.class, collectionName);
		
	}

	@Override
	public Map<String, String> getPatientNames() {
		Map<String, String> names=new HashMap<String, String>();
		Query query=new Query();
		query.fields().include("patientId");
		query.fields().include("firstName");
		query.fields().include("middleName");
		query.fields().include("lastName");
		
		Collection<Patient> patients=mongoTemplate.find(query, Patient.class, collectionName);
		for (Patient patient : patients) {
			names.put(patient.getPatientId(), patient.getFirstName()+" "+patient.getMiddleName()+" "+patient.getLastName());
		}
		
		return names;
	}

	/*@Override
	public Long getNextSequence() {
		Counter counter=mongotemplate.findAndModify(new Query(Criteria.where("_id").is("patientId")), new Update().inc("sequence", 1), Counter.class, "counters");
        
		//System.out.println("Incremented sequence: "+counter.get_id());
		System.out.println("Sequ : "+counter.getSequence());
		System.out.println("counter : "+counter);
		return counter.getSequence();
	}
*/
}
