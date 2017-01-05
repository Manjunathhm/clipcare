package com.aventyn.hms.domain;

import java.util.Date;

import org.springframework.data.annotation.Id;

public class Advance {
	
	@Id
	private String advanceId;
	
	private long advanceAmount;
	private String modeOfPayment;
	private Date dateOfPayment;
	
	public String getAdvanceId() {
		return advanceId;
	}
	public void setAdvanceId(String advanceId) {
		this.advanceId = advanceId;
	}
	public long getAdvanceAmount() {
		return advanceAmount;
	}
	public void setAdvanceAmount(long advanceAmount) {
		this.advanceAmount = advanceAmount;
	}
	public String getModeOfPayment() {
		return modeOfPayment;
	}
	public void setModeOfPayment(String modeOfPayment) {
		this.modeOfPayment = modeOfPayment;
	}
	public Date getDateOfPayment() {
		return dateOfPayment;
	}
	public void setDateOfPayment() {
		System.out.println("Setting the date for Advance paid");
		this.dateOfPayment = new Date();
	}
	
}
