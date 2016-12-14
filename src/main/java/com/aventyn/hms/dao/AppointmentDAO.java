package com.aventyn.hms.dao;

import java.util.Collection;

import com.aventyn.hms.domain.Appointment;

public interface AppointmentDAO {

	public Appointment findById(String appointmentId);
	
	public Collection<Appointment> getAllAppointments();
	
	public String saveAppointment(Appointment appointment);
	
	
}
