package com.aventyn.hms.dao;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

import com.aventyn.hms.domain.ServiceMaster;
import com.aventyn.hms.domain.Counter;

public class ServiceMasterDAOImpl implements ServiceMasterDAO {

	@Autowired
	MongoTemplate mongoTemplate;
	
	public static String collectionName="serviceMasters";
	
	@Override
	public String save(ServiceMaster serviceMaster) {
		String id=serviceMaster.getServiceMasterId();
		
		if(id!=null){	
			System.out.println("Updating the Billing Details....");
			System.out.println(serviceMaster.getBillingAmount() + serviceMaster.getABCCost());
			
			mongoTemplate.updateFirst(new Query(Criteria.where("_id").is(id)), new Update(), ServiceMaster.class);
			mongoTemplate.save(serviceMaster, collectionName);
		
		}else{
			Counter counter=mongoTemplate.findAndModify(new Query(Criteria.where("_id").is("serviceMasterId")), new Update().inc("sequence", 1), Counter.class, "counters");

			Integer seq=counter.getSequence();
			serviceMaster.setServiceMasterId("BMSHTSERV"+seq);
			mongoTemplate.save(serviceMaster, collectionName);
		}
		 
		return serviceMaster.getServiceMasterId();
	}

	@Override
	public Collection<ServiceMaster> getBillingMasters() {
		
		return mongoTemplate.findAll(ServiceMaster.class, collectionName);
	}
}
