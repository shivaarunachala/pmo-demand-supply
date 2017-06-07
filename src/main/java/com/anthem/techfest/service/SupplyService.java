package com.anthem.techfest.service;

import java.util.List;

import com.anthem.techfest.model.Supply;

public interface SupplyService {
	
	public void addSupply(Supply p);
	public void updateSupply(Supply p);
	public List<Supply> listSupply();
	public Supply getSupplyById(int id);
	public void removeSupply(int id);
}
