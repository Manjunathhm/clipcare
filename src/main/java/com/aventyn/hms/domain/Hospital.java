package com.aventyn.hms.domain;

import java.util.List;

import org.springframework.data.annotation.Id;

public class Hospital {

	@Id
	private String hospitalId;
	
	private String hospitalName;
	private String location;
	private String branch;
	private List<String> departments;
	/*private List<String> specializations;
	private List<String> designations;
*/	
	
	public String getHospitalId() {
		return hospitalId;
	}
	public void setHospitalId(String hospitalId) {
		this.hospitalId = hospitalId;
	}
	public String getHospitalName() {
		return hospitalName;
	}
	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public List<String> getDepartments() {
		return departments;
	}
	public void setDepartments(List<String> departments) {
		this.departments = departments;
	}
	/*public List<String> getSpecializations() {
		return specializations;
	}
	public void setSpecializations(List<String> specializations) {
		this.specializations = specializations;
	}
	public List<String> getDesignations() {
		return designations;
	}
	public void setDesignations(List<String> designations) {
		this.designations = designations;
	}*/
}
