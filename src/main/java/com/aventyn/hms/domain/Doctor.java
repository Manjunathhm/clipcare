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
import org.springframework.data.mongodb.core.mapping.Document;


@SuppressWarnings("serial")
@Document
public class Doctor implements Serializable {

	@Id
	private String doctorId = null;	
	
	private Date dateOfBirth=null;
	private String title=null;
	private String firstName= null;
	private String middleName= null;
	private String lastName= null;	
	private String gender=null;
	private String age=null;
	private Long mobileNumber1;
	private Long mobileNumber2;
	private Long landlineNumber1;
	private Long landlineNumber2;
	private String emailId1;
	private String emailId2;
	private boolean active=true;
	
	private Address currentAddress=new Address();
	private Address permanentAddress=new Address();
	private FamilyMember emergencyContact=new FamilyMember ();
	private boolean sameAsCurrentAddress;
	
	private String qualification=null;
	private String specialization=null;
	private String designation=null;
	private String department=null;
	private Date dateOfJoining=null;
	private String workHistory=null;
	private String stateMedicalRegNumber=null;
	private String countryMedicalRegNumber=null;
	private String otherMedicalRegNumber=null;
	
	private String medicoLegalInsuranceName=null;
	private String sumAssured=null;
	private String dateOfIssue=null;
	private String dateOfExpiry=null;
	private Clone clone=new Clone();
	private long slotTime;
	
	public Clone getClone() {
		return clone;
	}
	public void setClone(Clone clone) {
		this.clone = clone;
	}
		
	public long getSlotTime() {
		return slotTime;
	}
	public void setSlotTime(long slotTime) {
		this.slotTime = slotTime;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public void setDateOfJoining(Date dateOfJoining) {
		this.dateOfJoining = dateOfJoining;
	}
	public String getDoctorId() {
		return doctorId;
	}
	public void setDoctorId(String doctorId) {
		this.doctorId = doctorId;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public Long getMobileNumber1() {
		return mobileNumber1;
	}
	public void setMobileNumber1(Long mobileNumber1) {
		this.mobileNumber1 = mobileNumber1;
	}
	public Long getMobileNumber2() {
		return mobileNumber2;
	}
	public void setMobileNumber2(Long mobileNumber2) {
		this.mobileNumber2 = mobileNumber2;
	}
	public Long getLandlineNumber1() {
		return landlineNumber1;
	}
	public void setLandlineNumber1(Long landlineNumber1) {
		this.landlineNumber1 = landlineNumber1;
	}
	public Long getLandlineNumber2() {
		return landlineNumber2;
	}
	public void setLandlineNumber2(Long landlineNumber2) {
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
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
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
	public boolean isSameAsCurrentAddress() {
		return sameAsCurrentAddress;
	}
	public void setSameAsCurrentAddress(boolean sameAsCurrentAddress) {
		this.sameAsCurrentAddress = sameAsCurrentAddress;
	}
	public FamilyMember getEmergencyContact() {
		return emergencyContact;
	}
	public void setEmergencyContact(FamilyMember emergencyContact) {
		this.emergencyContact = emergencyContact;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getSpecialization() {
		return specialization;
	}
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation; 
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public void setDateOfJoining(String dateOfJoining) {
		try {
	
		SimpleDateFormat sdf=new SimpleDateFormat("MM/dd/yyyy");
		sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
		this.dateOfJoining = sdf.parse(dateOfJoining);
        } catch(ParseException e) {
        	this.dateOfJoining=null;  
        }		 
	}
	public String getDateOfJoining() {
		String reportDate=null;
		  if(dateOfJoining!=null){
		   DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
		   reportDate = df.format(dateOfJoining);
		  }
		  return reportDate;
	}	
	
	public String getWorkHistory() {
		return workHistory;
	}
	public void setWorkHistory(String workHistory) {
		this.workHistory = workHistory;
	}
	public String getStateMedicalRegNumber() {
		return stateMedicalRegNumber;
	}
	public void setStateMedicalRegNumber(String stateMedicalRegNumber) {
		this.stateMedicalRegNumber = stateMedicalRegNumber;
	}
	public String getCountryMedicalRegNumber() {
		return countryMedicalRegNumber;
	}
	public void setCountryMedicalRegNumber(String countryMedicalRegNumber) {
		this.countryMedicalRegNumber = countryMedicalRegNumber;
	}
	public String getOtherMedicalRegNumber() {
		return otherMedicalRegNumber;
	}
	public void setOtherMedicalRegNumber(String otherMedicalRegNumber) {
		this.otherMedicalRegNumber = otherMedicalRegNumber;
	}
	public String getMedicoLegalInsuranceName() {
		return medicoLegalInsuranceName;
	}
	public void setMedicoLegalInsuranceName(String medicoLegalInsuranceName) {
		this.medicoLegalInsuranceName = medicoLegalInsuranceName;
	}
	public String getSumAssured() {
		return sumAssured;
	}
	public void setSumAssured(String sumAssured) {
		this.sumAssured = sumAssured;
	}
	public String getDateOfIssue() {
		return dateOfIssue;
	}
	public void setDateOfIssue(String dateOfIssue) {
		this.dateOfIssue = dateOfIssue;
	}
	public String getDateOfExpiry() {
		return dateOfExpiry;
	}
	public void setDateOfExpiry(String dateOfExpiry) {
		this.dateOfExpiry = dateOfExpiry;
	}
	
	private List<Shift> shifts=new ArrayList<Shift>();

	public List<Shift> getShifts() {
		return shifts;
	}
	public void setShifts(List<Shift> shifts) {
		this.shifts = shifts;
	} 
	
	public Doctor(){
		System.out.println("Zero parameterised Constructor");
		Shift s1=new Shift();
		//Shift s2=new Shift();
		//Shift s3=new Shift();
		this.shifts.add(s1);
		//this.shifts.add(s2);
		//this.shifts.add(s3);
	}
	
}
