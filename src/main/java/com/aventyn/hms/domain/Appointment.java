package com.aventyn.hms.domain;

import java.io.Serializable;
import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Appointment implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -603679307492870534L;
	
	@Id
	private String appointmentId;
	
	private Date dateAndTimeOfAppointment;
	private long slotDuration;
	private String typeOfAppointment;
	private String doctorId;
	private String patientId;
	private String referralId;
	private String currentStatus;
	private long startTime;
	private long endTime;
	
	public String getReferralId() {
		return referralId;
	}
	public void setReferralId(String referralId) {
		this.referralId = referralId;
	}
	public long getStartTime() {
		return startTime;
	}
	public void setStartTime(long startTime) {
		this.startTime = startTime;
	}
	public long getEndTime() {
		return endTime;
	}
	public void setEndTime(long endTime) {
		this.endTime = endTime;
	}
	private String patientArrivalTime;
	private String doctorArrivalTime;
	private String patientWaitingTime;
	
	public String getAppointmentId() {
		return appointmentId;
	}
	public void setAppointmentId(String appointmentId) {
		this.appointmentId = appointmentId;
	}
	public Date getDateAndTimeOfAppointment() {
		return dateAndTimeOfAppointment;
	}
	public void setDateAndTimeOfAppointment(Date dateAndTimeOfAppointment) {
		this.dateAndTimeOfAppointment = dateAndTimeOfAppointment;
	}
	public long getSlotDuration() {
		return slotDuration;
	}
	public void setSlotDuration(long slotDuration) {
		this.slotDuration = slotDuration;
	}
	public String getTypeOfAppointment() {
		return typeOfAppointment;
	}
	public void setTypeOfAppointment(String typeOfAppointment) {
		this.typeOfAppointment = typeOfAppointment;
	}
	public String getDoctorId() {
		return doctorId;
	}
	public void setDoctorId(String doctorId) {
		this.doctorId = doctorId;
	}
	public String getPatientId() {
		return patientId;
	}
	public void setPatientId(String patientId) {
		this.patientId = patientId;
	}
	public String getCurrentStatus() {
		return currentStatus;
	}
	public void setCurrentStatus(String currentStatus) {
		this.currentStatus = currentStatus;
	}
	public String getPatientArrivalTime() {
		return patientArrivalTime;
	}
	public void setPatientArrivalTime(String patientArrivalTime) {
		this.patientArrivalTime = patientArrivalTime;
	}
	public String getDoctorArrivalTime() {
		return doctorArrivalTime;
	}
	public void setDoctorArrivalTime(String doctorArrivalTime) {
		this.doctorArrivalTime = doctorArrivalTime;
	}
	public String getPatientWaitingTime() {
		return patientWaitingTime;
	}
	public void setPatientWaitingTime(String patientWaitingTime) {
		this.patientWaitingTime = patientWaitingTime;
	}
	
	
	
}
