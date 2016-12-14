package com.aventyn.hms.domain;

import java.io.Serializable;

import org.springframework.data.annotation.Id;

@SuppressWarnings("serial")
public class Counter implements Serializable {

	@Id
	private String _id;
	private Integer sequence;
	
	public String get_id() {
		return _id;
	}
	public void set_id(String _id) {
		this._id = _id;
	}
	public Integer getSequence() {
		return sequence;
	}
	public void setSequence(Integer sequence) {
		this.sequence = sequence;
	}
	
	
}
