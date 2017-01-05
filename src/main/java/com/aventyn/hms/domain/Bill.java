package com.aventyn.hms.domain;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import org.springframework.data.annotation.Id;

public class Bill implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6157690310460919745L;

	@Id
	private String billingId;
	
	private String permanentBillId;
	private Date billingDate;
	private String patientId;
	private String appointmentId;
	private long billAmount;
	private long paidAmount;
	private String discount;
	private long dueAmount;
	private String modeOfPayment;
	private String remarks;
	private String cvrNumber;
	
	private String createdBy;
	private String hospitalId;
	private Date dueDate;
	
	List<ServiceMaster> serviceList =new ArrayList<ServiceMaster>();
	ServiceMasterClone clone=new ServiceMasterClone();
	//List<Advance> advances=new ArrayList<Advance>();
	
	public String getBillingDate() {
		String reportDate=null;
		  if(billingDate!=null){
		   DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
		   reportDate = df.format(billingDate);
		  }
		  return reportDate;
	}
	
	public void setBillingDate(String billingDate) {
		try {
			
			SimpleDateFormat sdf=new SimpleDateFormat("MM/dd/yyyy");
			sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
			Date d = sdf.parse(billingDate);
			this.billingDate=d;
	        } catch(ParseException e) {
	        	this.billingDate=null;  
	        }		 
	}
	
	public String getBillingId() {
		return billingId;
	}
	public void setBillingId(String billingId) {
		this.billingId = billingId;
	}
	public String getPermanentBillId() {
		return permanentBillId;
	}
	public void setPermanentBillId(String permanentBillId) {
		this.permanentBillId = permanentBillId;
	}
	public String getPatientId() {
		return patientId;
	}
	public void setPatientId(String patientId) {
		this.patientId = patientId;
	}
	public String getAppointmentId() {
		return appointmentId;
	}
	public void setAppointmentId(String appointmentId) {
		this.appointmentId = appointmentId;
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
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public long getDueAmount() {
		return dueAmount;
	}
	public void setDueAmount(long dueAmount) {
		this.dueAmount = dueAmount;
	}
	public String getModeOfPayment() {
		return modeOfPayment;
	}
	public void setModeOfPayment(String modeOfPayment) {
		this.modeOfPayment = modeOfPayment;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getCvrNumber() {
		return cvrNumber;
	}
	public void setCvrNumber(String cvrNumber) {
		this.cvrNumber = cvrNumber;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getHospitalId() {
		return hospitalId;
	}
	public void setHospitalId(String hospitalId) {
		this.hospitalId = hospitalId;
	}
	public Date getDueDate() {
		return dueDate;
	}
	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}
	public List<ServiceMaster> getServiceList() {
		return serviceList;
	}
	public void setServiceList(List<ServiceMaster> serviceList) {
		this.serviceList = serviceList;
	}
	public ServiceMasterClone getClone() {
		return clone;
	}
	public void setClone(ServiceMasterClone clone) {
		this.clone = clone;
	}
	/*public List<Advance> getAdvances() {
		return advances;
	}
	public void setAdvances(List<Advance> advances) {
		this.advances = advances;
	}*/
	public String toString(){
		
		return "ID "+billingId+" TMPID "+permanentBillId+" BDATE "+billingDate+" PID "+patientId+" APID "+appointmentId+" BAMOUNT "+billAmount+""
				+ " PAID "+paidAmount+" DIS "+discount+" DUE "+dueAmount+" DDATE "+dueDate+" MODE "+modeOfPayment+" CVR "+cvrNumber;
	}
}
