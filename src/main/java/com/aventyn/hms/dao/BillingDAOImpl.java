package com.aventyn.hms.dao;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

import com.aventyn.hms.domain.Bill;
import com.aventyn.hms.domain.Counter;

public class BillingDAOImpl implements BillingDAO {

	private static String collectionName="outPatientBills";
	
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
		Counter billCounter=mongoTemplate.findAndModify(new Query(Criteria.where("_id").is("billingId")), new Update().inc("sequence",1), Counter.class, "counters");
		if(id==null || id.isEmpty()){
			System.out.println("Create New Bill");
			if(bill.getBillAmount()==bill.getPaidAmount()){
				bill.setBillingId("F"+bill.getPatientId()+"/"+billCounter.getSequence());
			}else{
				bill.setBillingId("A"+bill.getPatientId()+"/"+billCounter.getSequence());
			}
			mongoTemplate.save(bill, collectionName);
		}
		
		return bill.getBillingId();
	}

	@Override
	public List<Bill> getAllBills() {
		List<Bill> bills=mongoTemplate.findAll(Bill.class, collectionName);
		return bills;
	}

	@Override
	public List<Bill> lastFiveBills(String patientId) {
		Query query = new Query();

		/*LocalDate localDate = LocalDate.now();
		LocalDateTime localDateTime = LocalDateTime.of(localDate, LocalTime.MIDNIGHT);
		Instant instant = localDateTime.toInstant(ZoneOffset.UTC);
		Date date = Date.from(instant);

	    System.out.println("Date for querying : "+date);*/
	    System.out.println("PID: "+patientId);
		query.addCriteria(Criteria.where("patientId").is(patientId));
	    query.with(new Sort(Sort.Direction.ASC, "billingDate"));
	    query.limit(5);
	    List<Bill> list=mongoTemplate.find(query, Bill.class, collectionName);
	    for (Bill bill : list) {
			System.out.println("BIll Date : "+bill.getBillingDate());
		}
		return list;
	}

	@Override
	public List<Bill> getMyDueBills(String patientId) {
		
		Query query = new Query();
		query.addCriteria(Criteria.where("billingId").regex("A.*").and("patientId").is(patientId));
		List<Bill> bills=mongoTemplate.find(query, Bill.class, collectionName);
		// TODO Auto-generated method stub
		return bills;
	}
	
	
	@Override
	public Bill getMyBill(String patientId, String appointmentId) {
		// TODO Auto-generated method stub
		Query query=new Query();
		query.addCriteria(Criteria.where("patientId").is(patientId).and("appointmentId").is(appointmentId));
		
		Bill bill=mongoTemplate.findOne(query, Bill.class, collectionName);
		
		return bill;
	}

	


}
