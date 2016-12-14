package com.aventyn.hms.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

import com.aventyn.hms.domain.BillingMasters;
import com.aventyn.hms.domain.Counter;

public class BillingMastersDAOImpl implements BillingMastersDAO {

	@Autowired
	MongoTemplate mongoTemplate;
	
	@Override
	public String save(BillingMasters billingMasters) {
		String id=billingMasters.getBillingId();
		
		if(id!=null){	
			System.out.println("Updating the Billing Details....");
			System.out.println(billingMasters.getBillingAmount() + billingMasters.getABCCost());
			
			mongoTemplate.updateFirst(new Query(Criteria.where("_id").is(id)), new Update(), BillingMasters.class);
			mongoTemplate.save(billingMasters, "billingMasters");
		
		}else{
			Counter counter=mongoTemplate.findAndModify(new Query(Criteria.where("_id").is("billingId")), new Update().inc("sequence", 1), Counter.class, "counters");

			Integer seq=counter.getSequence();
			billingMasters.setBillingId("BMSHTBILL"+seq);
			mongoTemplate.save(billingMasters, "billingMasters");
		}
		 
		return billingMasters.getBillingId();
	}
}
