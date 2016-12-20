package com.aventyn.hms.dao;

import java.util.List;

import com.aventyn.hms.domain.Bill;

public interface BillingDAO {

	public Bill findById(String billingId);
	
	public String save(Bill bill);
	
	public List<Bill> getAllBills();
	
}
