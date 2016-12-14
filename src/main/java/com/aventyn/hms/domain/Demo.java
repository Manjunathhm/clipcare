package com.aventyn.hms.domain;

import java.io.Serializable;

public class Demo implements Serializable{

	private String name = null;
    private String education = null;
	
    public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
    
}
