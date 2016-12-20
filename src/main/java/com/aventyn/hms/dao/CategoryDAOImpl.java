package com.aventyn.hms.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

import com.aventyn.hms.domain.Category;
import com.aventyn.hms.domain.CategoryTypes;
import com.mongodb.WriteResult;


public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	MongoTemplate mongoTemplate;
	
	WriteResult wr;
	
	@Override
	public Category findCategoryByID(String categoryId) {
		
		return mongoTemplate.findById(categoryId, Category.class, "categories");
	}
		
	@Override
	public String saveCategory(Category category) {
 		
		String id=category.getCategoryId();
		System.out.println("Object to be updated ::"+id);
		System.out.println("Updated NAME:: "+category.getCategoryName());

		
		if(id==null || id.isEmpty()){
			
			String type=category.getCategoryType();
			String name=category.getCategoryName();
			SimpleDateFormat simpleDateFormat =
		            new SimpleDateFormat("yyyyMMddhhmmss");
			String dateAsString = simpleDateFormat.format(new Date());
			if(type.equalsIgnoreCase("Doctors")){
				String doctName=category.getCategoryName();
				category.setCategoryName("Dr."+doctName);
			}
			category.setCategoryId((type.substring(0, 3)).concat(name.substring(0, 3)).concat(dateAsString));
			mongoTemplate.save(category, "categories");
			
		}
		else{
			mongoTemplate.updateFirst(new Query(Criteria.where("_id").is(id)),new Update(),Category.class);
			
			mongoTemplate.save(category, "categories");
			System.out.println("Document updated in IMPL class");

		}
		return category.getCategoryId();
	}

	@Override
	public Collection<Category> findAllCategories() {
		Query query=new Query();
		query.fields().include("categoryId");
		query.fields().include("categoryType");
		query.fields().include("categoryName");
		query.fields().include("categoryBranch");
		query.fields().include("mobileNumber");
		query.fields().include("categoryEmailID1");
		query.fields().include("isActive");

		List<Category> list=mongoTemplate.find(query, Category.class, "categories");
			
		return list;
	}

	
	@Override
	public List<String> getNames() {

		List<CategoryTypes> objects=mongoTemplate.findAll(CategoryTypes.class, "categoryTypes");
		List<String> types = new ArrayList<String>();
		for (CategoryTypes c : objects) {
			types.add(c.getType());
		}
		return types;
	}
  
	@Override
	public void addType(CategoryTypes categoryTypes) {

		mongoTemplate.save(categoryTypes, "categoryTypes");
		
	}

	@Override
	public boolean deleteCategory(Category category){
		
		String categoryId=category.getCategoryId();
		mongoTemplate.findAndModify(new Query(Criteria.where("_id").is(categoryId)), new Update().set("isActive", false), Category.class, "categories");
		
		return true; 
	}

	
}
