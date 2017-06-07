/**
 * 
 */
package com.anthem.techfest.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.anthem.techfest.dao.SupplyDAO;
import com.anthem.techfest.model.Supply;

/**
 * @author ravilla.mounika
 *
 */
public class SupplyServiceImpl implements SupplyService{
	
	private SupplyDAO demandDAO;

	public void setSupplyDAO(SupplyDAO demandDAO) {
		this.demandDAO = demandDAO;
	}

	@Override
	@Transactional
	public void addSupply(Supply p) {
		this.demandDAO.addSupply(p);
	}

	@Override
	@Transactional
	public void updateSupply(Supply p) {
		this.demandDAO.updateSupply(p);
	}

	@Override
	@Transactional
	public List<Supply> listSupply() {
		return this.demandDAO.listSupply();
	}

	@Override
	@Transactional
	public Supply getSupplyById(int id) {
		return this.demandDAO.getSupplyById(id);
	}

	@Override
	@Transactional
	public void removeSupply(int id) {
		this.demandDAO.removeSupply(id);
	}
}
