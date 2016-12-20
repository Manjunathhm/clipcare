package com.aventyn.hms.domain;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.Transient;
import org.springframework.web.multipart.MultipartFile;

@SuppressWarnings("serial")
public class BillingMasters implements Serializable{

	@Id
	private String billingMastersId;
	
	private String departmentId;
	private String serviceCode;
	private String serviceName;
	
	private String serviceAbbreviation;
	private long costOfTheBill;
	private long ABCCost;
	private long billingAmount;
	private Date effectiveFrom;
	private String remarks;
	
	@Transient
	private MultipartFile file;
	private String filePath;
	//private MultipartFile file1;
	 
    public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getBillingMastersId() {
		return billingMastersId;
	}
	public void setBillingMastersId(String billingMastersId) {
		this.billingMastersId = billingMastersId;
	}
	public String getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}
	/* */
	public String getServiceAbbreviation() {
		return serviceAbbreviation;
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

	public void setServiceAbbreviation(String serviceAbbreviation) {
		this.serviceAbbreviation = serviceAbbreviation;
	}
	public long getCostOfTheBill() {
		return costOfTheBill;
	}
	public void setCostOfTheBill(long costOfTheBill) {
		this.costOfTheBill = costOfTheBill;
	}
	public long getABCCost() {
		return ABCCost;
	}
	public void setABCCost(long aBCCost) {
		ABCCost = aBCCost;
	}
	public long getBillingAmount() {
		return billingAmount;
	}
	public void setBillingAmount(long billingAmount) {
		this.billingAmount = billingAmount;
	}
	public String getEffectiveFrom() {
		String dateInString=null;
		  if(effectiveFrom!=null){
		   DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
		   dateInString = df.format(effectiveFrom);
		  }
		  return dateInString;
	}
	public void setEffectiveFrom(String effectiveFrom) {
		try {
			
			SimpleDateFormat sdf=new SimpleDateFormat("MM/dd/yyyy");
			sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
			this.effectiveFrom = sdf.parse(effectiveFrom);
	        } catch(ParseException e) {
	        	this.effectiveFrom=null;  
	        }		 
		}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	/*public MultipartFile getFile1() {
		return file1;
	}

	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
	}
	*/
}
