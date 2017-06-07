package com.anthem.techfest.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.anthem.techfest.dao.DemandDAO;
import com.anthem.techfest.model.Demand;

@Service
public class DemandServiceImpl implements DemandService {
	
	private DemandDAO demandDAO;

	public void setDemandDAO(DemandDAO demandDAO) {
		this.demandDAO = demandDAO;
	}

	@Override
	@Transactional
	public void addDemand(Demand p) {
		this.demandDAO.addDemand(p);
	}

	@Override
	@Transactional
	public void updateDemand(Demand p) {
		this.demandDAO.updateDemand(p);
	}

	@Override
	@Transactional
	public List<Demand> listDemands() {
		return this.demandDAO.listDemands();
	}

	@Override
	@Transactional
	public Demand getDemandById(int id) {
		return this.demandDAO.getDemandById(id);
	}

	@Override
	@Transactional
	public void removeDemand(int id) {
		this.demandDAO.removeDemand(id);
	}

}
