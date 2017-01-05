package com.aventyn.hms.domain;

import java.io.Serializable;

public class ServiceMasterClone implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String departmentId;
	private String serviceCode;
	private String serviceName;
	private long serviceCost;
	private int quantity;
	private String discount;
	private long serviceTotal;
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public long getServiceTotal() {
		return serviceTotal;
	}
	public void setServiceTotal(long serviceTotal) {
		this.serviceTotal = serviceTotal;
	}
	public String getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}
	public String getServiceCode() {
		return serviceCode;
	}
	public void setServiceCode(String serviceCode) {
		this.serviceCode = serviceCode;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public long getServiceCost() {
		return serviceCost;
	}
	public void setServiceCost(long serviceCost) {
		this.serviceCost = serviceCost;
	}
	
	
	
}
