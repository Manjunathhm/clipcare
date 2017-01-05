package com.aventyn.hms.dao;

import java.util.Collection;
import java.util.List;

import com.aventyn.hms.domain.Category;
import com.aventyn.hms.domain.CategoryTypes;

public interface CategoryDAO {

	public String saveCategory(Category category);
	
	public Collection<Category> findAllCategories();

	public Category findCategoryByID(String categoryID);

	//public void update(Category category);
	
	public List<String> getNames(); 
	
	public void addType(CategoryTypes categoryTypes);

	boolean deleteCategory(Category category);
	
	public String getReferralName(String referralId);
	
	
}
