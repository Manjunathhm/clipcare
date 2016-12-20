package com.aventyn.hms.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

import com.aventyn.hms.domain.Bill;
import com.aventyn.hms.domain.Counter;

public class BillingDAOImpl implements BillingDAO {

	private static String collectionName="bills";
	
	@Autowired
	MongoTemplate mongoTemplate;
	
	@Override
	public Bill findById(String billingId) {
		System.out.println("Find Bill by ID "+billingId);
		Bill bill=mongoTemplate.findById(billingId, Bill.class, collectionName);
		return bill;
	}

	@Override
	public String save(Bill bill) {
		System.out.println("Saving the bill.");
		String id=bill.getBillingId();
		if(id==null || id.isEmpty()){
			Counter counter=mongoTemplate.findAndModify(new Query(Criteria.where("_id").is("billingId")), new Update().inc("sequence",1), Counter.class, "counters");
			bill.setBillingId("BMSHTBILL"+counter.getSequence());
			mongoTemplate.save(bill, collectionName);
		}
		else{
			System.out.println("Updating the bill details");
		}
		
		return bill.getBillingId();
	}

	@Override
	public List<Bill> getAllBills() {
		List<Bill> bills=mongoTemplate.findAll(Bill.class, collectionName);
		return bills;
	}

}
