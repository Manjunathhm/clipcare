package com.aventyn.hms.dao;

import java.util.Collection;

import com.aventyn.hms.domain.ServiceMaster;

public interface ServiceMasterDAO {

	public String save(ServiceMaster billingMasters);
	
	public Collection<ServiceMaster> getBillingMasters();
}
