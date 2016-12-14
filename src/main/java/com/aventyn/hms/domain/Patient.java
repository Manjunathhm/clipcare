/**
 * 
 */
package com.aventyn.hms.domain;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

/**
 * @author aventyn
 *
 */
@Document
public class Patient implements Serializable{

	private static final long serialVersionUID = 3353750369693051758L;
	
	@Id
	private String patientId;
	
	private String patientTitle;
	private String firstName=null;
	private String middleName=null;
	private String lastName=null;
	private Date dateOfBirth=null;
	private Integer age=null;
	private String gender;
	private boolean minor=false;
	private String hospitalId;
	private String paymentType;
	private String mobileNumber1;
	private String mobileNumber2;
	private String landlineNumber1;
	private String landlineNumber2;
	private String emailId1;
	private String emailId2;
	private String patientType;
	private String referralId;
	private boolean sameAsCurrentAddress=false;
	
	private FamilyMember guardian= new FamilyMember();
	private Address currentAddress=new Address();
	private Address permanentAddress=new Address();	
	
	public String getPatientId() {
		return patientId;
	}
	public void setPatientId(String patientId) {
		this.patientId = patientId;
	}
	public String getPatientTitle() {
		return patientTitle;
	}
	public void setPatientTitle(String patientTitle) {
		this.patientTitle = patientTitle;
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
	public void setDateOfBirth(String dateOfBirth) {
		try {
	
		SimpleDateFormat sdf=new SimpleDateFormat("MM/dd/yyyy");
		sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
		this.dateOfBirth = sdf.parse(dateOfBirth);
        } catch(ParseException e) {
        	this.dateOfBirth=null;  
        }		 
	}
	public String getDateOfBirth() {
		String reportDate=null;
		  if(dateOfBirth!=null){
		   DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
		   reportDate = df.format(dateOfBirth);
		  }
		  return reportDate;
	}	
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getHospitalId() {
		return hospitalId;
	}
	public void setHospitalId(String hospitalId) {
		this.hospitalId = hospitalId;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
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
	public boolean isSameAsCurrentAddress() {
		return sameAsCurrentAddress;
	}
	public void setSameAsCurrentAddress(boolean sameAsCurrentAddress) {
		this.sameAsCurrentAddress = sameAsCurrentAddress;
	}
	public FamilyMember getGuardian() {
		return guardian;
	}
	public void setGuardian(FamilyMember guardian) {
		this.guardian = guardian;
	}
	public Address getCurrentAddress() {
		return currentAddress;
	}
	public void setCurrentAddress(Address currentAddress) {
		this.currentAddress = currentAddress;
	}
	public Address getPermanentAddress() {
		return permanentAddress;
	}
	public void setPermanentAddress(Address permanentAddress) {
		this.permanentAddress = permanentAddress;
	}
	public boolean isMinor() {
		return minor;
	}
	public void setMinor(boolean minor) {
		this.minor = minor;
	}
	public String getPatientType() {
		return patientType;
	}
	public void setPatientType(String patientType) {
		this.patientType = patientType;
	}
	public String getReferralId() {
		return referralId;
	}
	public void setReferralId(String referralId) {
		this.referralId = referralId;
	}
}
