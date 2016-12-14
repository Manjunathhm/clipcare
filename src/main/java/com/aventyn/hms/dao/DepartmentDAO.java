package com.aventyn.hms.dao;

import java.util.Map;

import com.aventyn.hms.domain.Department;

public interface DepartmentDAO {

	
	public String save(Department department);
	
	public Map<String, String> getDepartments();
}
