package com.aventyn.hms.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aventyn.hms.dao.CategoryDAO;
import com.aventyn.hms.domain.Category;
import com.aventyn.hms.domain.CategoryTypes;

@Controller
@RequestMapping("/category")
public class CategoryController {

	@Autowired
	CategoryDAO categoryDAO=null;
	
	
	@ModelAttribute
	public Category loadModelObject(@RequestParam(required=false, value="categoryId")String categoryId){
		System.out.println("ID in Model Object method: "+categoryId);
		Category category=null;
		
		if(categoryId == null || categoryId.isEmpty()){
			category=new Category();
		}else{
			category=categoryDAO.findCategoryByID(categoryId);
			System.out.println("Else Block "+categoryId);
		}
		
		return category;
	}
	
	@RequestMapping(value={"/form", "/edit"}, method = RequestMethod.GET)	
	public String form(ModelMap model) {
		  		
		System.out.println("form() method of Category Controller");
		
		model.addAttribute("categories", categoryDAO.findAllCategories());
		model.addAttribute("types", categoryDAO.getNames());
		
		return "categoryForm";
	}

	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String form(@ModelAttribute Category category) {
		
		System.out.println("Save method of Controller");
		
		categoryDAO.saveCategory(category);
	
		System.out.println("After Save..Controller.......");
		
		return "redirect:form";
	}
	
	@RequestMapping(value="/categoryList", method=RequestMethod.GET)
	public String getAllCategories(ModelMap model){
		
		System.out.println("getAllCategories() controller");		
		model.addAttribute("categories", categoryDAO.findAllCategories());
		model.addAttribute("types", categoryDAO.getNames());
		
		return "categoryList";
	}
	
	@RequestMapping(value="/{categoryId}", method=RequestMethod.GET)
	public String editCategory(ModelMap model, @PathVariable("categoryId")String categoryId){
		
		System.out.println("Editing the object of ID :: "+categoryId+" in Controller");
				
		Category editCategory=categoryDAO.findCategoryByID(categoryId);		
		model.addAttribute("category", editCategory);
		model.addAttribute("categories", categoryDAO.findAllCategories());
		model.addAttribute("types", categoryDAO.getNames());
		return "form";
		
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String deleteCategory(ModelMap model,Category category){
		
		categoryDAO.deleteCategory(category);
		
		model.addAttribute("categories", categoryDAO.findAllCategories());
		model.addAttribute("types", categoryDAO.getNames());
		
		return "redirect:form";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	 public String create(@ModelAttribute("create") CategoryTypes  create, ModelMap model){
	 
	 System.out.println("Referral Controller."); 
	  
	 System.out.println("Object contains Name in referral controler "+create.getType());
	 
	 Collection<String> list = categoryDAO.getNames();
	 
	 if(list.contains(create.getType())) {
	        model.addAttribute("msg", "Category Exists.");
	    } else {
	     categoryDAO.addType(create);
	    }
	 
		model.addAttribute("categories", categoryDAO.findAllCategories());
		model.addAttribute("types", categoryDAO.getNames());
	 	
	
	 return "categoryForm";
	 }
}	 

