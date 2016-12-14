package com.aventyn.hms.domain;

import java.io.Serializable;

public class FamilyMember implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5737002779454164106L;
	
	private String guardianId;
	private String title;
	private String firstName;
	private String middleName;
	private String lastName;
	private String mobileNumber1=null;
	private String mobileNumber2=null;
	private String landlineNumber1=null;
	private String landlineNumber2=null;
	private String emailId1;
	private String emailId2;
	private String relationship;
	private Address address=new Address();
	
	public String getRelationship() {
		return relationship;
	}
	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}
	
	public String getGuardianId() {
		return guardianId;
	}
	public void setGuardianId(String guardianId) {
		this.guardianId = guardianId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMobileNumber1() {
		return mobileNumber1;
	}
	public void setMobileNumber1(String mobileNumber1) {
		this.mobileNumber1 = mobileNumber1;
	}
	public String getMobileNumber2() {
		return mobileNumber2;
	}
	public void setMobileNumber2(String mobileNumber2) {
		this.mobileNumber2 = mobileNumber2;
	}
	public String getLandlineNumber1() {
		return landlineNumber1;
	}
	public void setLandlineNumber1(String landlineNumber1) {
		this.landlineNumber1 = landlineNumber1;
	}
	public String getLandlineNumber2() {
		return landlineNumber2;
	}
	public void setLandlineNumber2(String landlineNumber2) {
		this.landlineNumber2 = landlineNumber2;
	}
	public String getEmailId1() {
		return emailId1;
	}
	public void setEmailId1(String emailId1) {
		this.emailId1 = emailId1;
	}
	public String getEmailId2() {
		return emailId2;
	}
	public void setEmailId2(String emailId2) {
		this.emailId2 = emailId2;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	
}
