package com.anthem.techfest.dao;

import java.util.List;

import com.anthem.techfest.model.Demand;

public interface DemandDAO {

	public void addDemand(Demand p);
	public void updateDemand(Demand p);
	public List<Demand> listDemands();
	public Demand getDemandById(int id);
	public void removeDemand(int id);
}
