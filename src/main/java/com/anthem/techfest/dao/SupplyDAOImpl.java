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
	public void addSupply(Supply s) {
		Session session = this.sessionFactory.getCurrentSession();
		
		if(session.contains(s.getDemand())) session.update(s.getDemand());
		else session.merge(s.getDemand());
		
		session.persist(s);
		
		logger.info("Supply saved successfully, Supply Details="+s);
	}

	@Override
	public void updateSupply(Supply s) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(s);
		logger.info("Supply updated successfully, Supply Details="+s);
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
		Supply s = (Supply) session.load(Supply.class, new Integer(id));
		if(null != s){
			session.delete(s);
		}
		logger.info("Supply deleted successfully, Supply details="+s);
	}

}
