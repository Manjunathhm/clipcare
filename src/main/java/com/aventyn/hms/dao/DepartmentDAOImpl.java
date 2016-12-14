package com.aventyn.hms.dao;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

import com.aventyn.hms.domain.Counter;
import com.aventyn.hms.domain.Department;

public class DepartmentDAOImpl implements DepartmentDAO{

	private static final String collectionName="departments";
	
	@Autowired
	MongoTemplate mongoTemplate;
	
	
	@Override
	public String save(Department department) {
		String departmentId=department.getDepartmentId();
		
		if(!departmentId.isEmpty()){	
			System.out.println("Updating the Department.");
			System.out.println(department.getDepartmentName());
			
			mongoTemplate.updateFirst(new Query(Criteria.where("_id").is(departmentId)), new Update(), Department.class);
			mongoTemplate.save(department, collectionName);
		
		}else{
			Counter counter=mongoTemplate.findAndModify(new Query(Criteria.where("_id").is("departmentId")), new Update().inc("sequence", 1), Counter.class, "counters");
			
			Integer seq=counter.getSequence();
			department.setHospitalId("BMS_NRC_BNG019");
			department.setDepartmentId("BMSHTDEPT"+seq);
			mongoTemplate.save(department, collectionName);
		}
		 
		return department.getDepartmentId();
	}


	@Override
	public Map<String, String> getDepartments() {
		Query query= new Query();
		query.fields().include("DepartmentId");
		query.fields().include("DepartmentName");
		Collection<Department> list=(Collection) mongoTemplate.find(query, Department.class, collectionName);
		Map<String, String> map=new HashMap<String, String>();
		for (Department department : list) {
			map.put(department.getDepartmentId(), department.getDepartmentName());
			
		}
		
		return map;
	}

	
	
	
}
