package com.aventyn.hms.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;


@SuppressWarnings(value = { })
@Document
public class Category implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2824243267076214278L;

	@Id
	private String categoryId;
	
	private String categoryName;
	private String categoryBranch;
	private Long mobileNumber; 
	private Long landlineNumber;
	private String categoryEmailID1;
	private String categoryEmailID2;
	private String companyWebsite;
	private String categoryType;
	private boolean isActive=true;
	
	private Address categoryAddress;
	List<ContactPerson> contactPersons;
	
	public Category(){
		ContactPerson cp=new ContactPerson();
		this.contactPersons= new ArrayList<ContactPerson>();
		this.contactPersons.add(cp);
	}
	
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getCategoryBranch() {
		return categoryBranch;
	}
	public void setCategoryBranch(String categoryBranch) {
		this.categoryBranch = categoryBranch;
	}
	
	public Long getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(Long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public Long getLandlineNumber() {
		return landlineNumber;
	}
	public void setLandlineNumber(Long landlineNumber) {
		this.landlineNumber = landlineNumber;
	}
	public String getCategoryEmailID1() {
		return categoryEmailID1;
	}
	public void setCategoryEmailID1(String categoryEmailID1) {
		this.categoryEmailID1 = categoryEmailID1;
	}
	public String getCategoryEmailID2() {
		return categoryEmailID2;
	}
	public void setCategoryEmailID2(String categoryEmailID2) {
		this.categoryEmailID2 = categoryEmailID2;
	}
	public String getCompanyWebsite() {
		return companyWebsite;
	}
	public void setCompanyWebsite(String companyWebsite) {
		this.companyWebsite = companyWebsite;
	}
	public String getCategoryType() {
		return categoryType;
	}
	public void setCategoryType(String categoryType) {
		this.categoryType = categoryType;
	}
	public Address getCategoryAddress() {
		return categoryAddress;
	}
	public void setCategoryAddress(Address categoryAddress) {
		this.categoryAddress = categoryAddress;
	}
	public List<ContactPerson> getContactPersons() {
		return contactPersons;
	}
	public void setContactPersons(List<ContactPerson> contactPersons) {
		this.contactPersons = contactPersons;
	}
	public boolean getIsActive() {
		return isActive;
	}
	public void setIsActive(boolean isActive) {
		this.isActive = isActive;
	}
}
