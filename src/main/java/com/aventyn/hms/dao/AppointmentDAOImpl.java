package com.aventyn.hms.dao;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

import com.aventyn.hms.domain.Appointment;
import com.aventyn.hms.domain.Counter;

public class AppointmentDAOImpl implements AppointmentDAO{

	@Autowired
	MongoTemplate mongoTemplate;
	
	public static String Collection_Name="appointments";
	
	@Override
	public Appointment findById(String appointmentId) {
		
		Appointment app=mongoTemplate.findById(appointmentId, Appointment.class, Collection_Name);
		System.out.println("Appointment by ID "+app);
		return app;
		
	}

	@Override
	public Collection<Appointment> getAllAppointments() {

		return mongoTemplate.find(new Query(), Appointment.class, Collection_Name);
	}

	@Override
	public String saveAppointment(Appointment appointment) {
		
		String appointmentId=appointment.getAppointmentId();
		if(appointment.getAppointmentId()==null || appointment.getAppointmentId().isEmpty()){
			Counter counter=mongoTemplate.findAndModify(new Query(Criteria.where("_id").is("patientId")), new Update().inc("sequence", 1), Counter.class, "counters");
			appointment.setAppointmentId("BMSHTAPT"+counter.getSequence());
			mongoTemplate.save(appointment, Collection_Name);
		}else{
			mongoTemplate.updateFirst(new Query(Criteria.where("appointmentId").is(appointmentId)), new Update(), Appointment.class, Collection_Name);
		}
		
		return appointment.getAppointmentId();
	}

	
}
