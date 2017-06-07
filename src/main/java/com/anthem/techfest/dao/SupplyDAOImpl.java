package com.anthem.techfest.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.anthem.techfest.model.Supply;

@Repository
public class SupplyDAOImpl implements SupplyDAO{

	private static final Logger logger = LoggerFactory.getLogger(SupplyDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	@Override
	public void addSupply(Supply d) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(d);
		logger.info("Supply saved successfully, Supply Details="+d);
	}

	@Override
	public void updateSupply(Supply d) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(d);
		logger.info("Supply updated successfully, Supply Details="+d);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Supply> listSupply() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Supply> supplyList = session.createQuery("from Supply").list();
		for(Supply d : supplyList){
			logger.info("Supply List::"+d);
		}
		return supplyList;
	}

	@Override
	public Supply getSupplyById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Supply d = (Supply) session.load(Supply.class, new Integer(id));
		logger.info("Supply loaded successfully, Supply details="+d);
		return d;
	}

	@Override
	public void removeSupply(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Supply d = (Supply) session.load(Supply.class, new Integer(id));
		if(null != d){
			session.delete(d);
		}
		logger.info("Supply deleted successfully, Supply details="+d);
	}

}
