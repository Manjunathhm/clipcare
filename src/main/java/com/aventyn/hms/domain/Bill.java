package com.aventyn.hms.domain;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import org.springframework.data.annotation.Id;

public class Bill implements Serializable{

	@Id
	private String billingId;
	
	private String serviceId;
	private String appointmentId;
	private String hospitalId;
	private String userId;
	private long billAmount;
	private long advancePaid;
	private long paidAmount;
	private long dueAmount;
	private Date billingDate;
	private Date dueDate;
	private String cvrNumber;
	private String modeOfPayment;
	private double percentageOfDiscount;
	
	public long getAdvancePaid() {
		return advancePaid;
	}
	public void setAdvancePaid(long advancePaid) {
		this.advancePaid = advancePaid;
	}
	public double getPercentageOfDiscount() {
		return percentageOfDiscount;
	}
	public void setPercentageOfDiscount(double percentageOfDiscount) {
		this.percentageOfDiscount = percentageOfDiscount;
	}
	
	public String getBillingId() {
		return billingId;
	}
	public void setBillingId(String billingId) {
		this.billingId = billingId;
	}
	public String getServiceId() {
		return serviceId;
	}
	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}
	public String getAppointmentId() {
		return appointmentId;
	}
	public void setAppointmentId(String appointmentId) {
		this.appointmentId = appointmentId;
	}
	public String getHospitalId() {
		return hospitalId;
	}
	public void setHospitalId(String hospitalId) {
		this.hospitalId = hospitalId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public long getBillAmount() {
		return billAmount;
	}
	public void setBillAmount(long billAmount) {
		this.billAmount = billAmount;
	}
	public long getPaidAmount() {
		return paidAmount;
	}
	public void setPaidAmount(long paidAmount) {
		this.paidAmount = paidAmount;
	}
	public long getDueAmount() {
		return dueAmount;
	}
	public void setDueAmount(long dueAmount) {
		this.dueAmount = dueAmount;
	}
	public String getBillingDate() {
		String billDate=null;
		  if(billingDate!=null){
		   DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
		   billDate = df.format(billingDate);
		  }
		  return billDate;
	}
	public void setBillingDate(String billDate) {
		try{
			
		SimpleDateFormat sdf=new SimpleDateFormat("MM/dd/yyyy");
		sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
		this.billingDate = sdf.parse(billDate);
        } catch(ParseException e) {
        	this.billingDate=null;  
        }	
	}
	public Date getDueDate() {
		return dueDate;
	}
	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}
	public String getCvrNumber() {
		return cvrNumber;
	}
	public void setCvrNumber(String cvrNumber) {
		this.cvrNumber = cvrNumber;
	}
	public String getModeOfPayment() {
		return modeOfPayment;
	}
	public void setModeOfPayment(String modeOfPayment) {
		this.modeOfPayment = modeOfPayment;
	}
	
}
