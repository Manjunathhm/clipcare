package com.aventyn.hms.domain;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

@SuppressWarnings("serial")
public class Shift implements Serializable{
	
	private ArrayList<String> workingDays = new ArrayList<String>();
	private Date fromTime;
	private Date toTime;
	private boolean strictSession=false;
	
	public void setFromTime(String fromTime) {
		  try{
		   SimpleDateFormat sdf= new SimpleDateFormat("hh:mm a");
		   
		   this.fromTime =sdf.parse(fromTime);
		   System.out.println("Setter method : "+fromTime);
		  }catch(ParseException e){
		   this.fromTime = null;
		  }
		}
	
	public String getFromTime() {
		  String tmp=null;
		  if(fromTime!=null){
		   DateFormat df = new SimpleDateFormat("hh:mm a");
		   
		   tmp=df.format(fromTime);
		    System.out.println("Getter method time :: "+tmp);
		  }		  
		  return tmp;
		 }
	
	
	public boolean isStrictSession() {
		return strictSession;
	}
	public void setStrictSession(boolean strictSession) {
		this.strictSession = strictSession;
	}
	public ArrayList<String> getWorkingDays() {
		return workingDays;
	}
	public void setWorkingDays(ArrayList<String> workingDays) {
		this.workingDays = workingDays;
	}
	/*public String getFromTime() {
		return fromTime;
	}
	public void setFromTime(String fromTime) {
		this.fromTime = fromTime;
	}*/
	
	public void setToTime(String toTime) {
		  try{
		   SimpleDateFormat sdf= new SimpleDateFormat("hh:mm a");
		   
		   this.toTime =sdf.parse(toTime);
		   System.out.println("Setter method : "+toTime);
		  }catch(ParseException e){
		   this.toTime = null;
		  }
		}
	
	public String getToTime() {
		  String tmp=null;
		  if(toTime!=null){
		   DateFormat df = new SimpleDateFormat("hh:mm a");
		   
		   tmp=df.format(toTime);
		    System.out.println("Getter method time :: "+tmp);
		  }		  
		  return tmp;
		 }
	
	public Shift(){
		/*workingDays.add("Mon");
		workingDays.add("Tue");
		workingDays.add("Wed");
		workingDays.add("Thu");
		workingDays.add("Fri");*/
		
		
	}
	

}
