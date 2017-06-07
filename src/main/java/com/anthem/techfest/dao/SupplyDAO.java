/**
 * 
 */
package com.anthem.techfest.dao;

import java.util.List;

import com.anthem.techfest.model.Supply;

/**
 * @author ravilla.mounika
 *
 */
public interface SupplyDAO {
	
	public void addSupply(Supply p);
	public void updateSupply(Supply p);
	public List<Supply> listSupply();
	public Supply getSupplyById(int id);
	public void removeSupply(int id);
}
