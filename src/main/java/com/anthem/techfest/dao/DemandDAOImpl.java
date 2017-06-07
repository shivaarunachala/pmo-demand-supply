package com.anthem.techfest.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.anthem.techfest.model.Demand;

@Repository
public class DemandDAOImpl implements DemandDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(DemandDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	@Override
	public void addDemand(Demand d) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(d);
		logger.info("Demand saved successfully, Demand Details="+d);
	}

	@Override
	public void updateDemand(Demand d) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(d);
		logger.info("Demand updated successfully, Demand Details="+d);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Demand> listDemands() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Demand> DemandsList = session.createQuery("from Demand").list();
		for(Demand d : DemandsList){
			logger.info("Demand List::"+d);
		}
		return DemandsList;
	}

	@Override
	public Demand getDemandById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Demand d = (Demand) session.load(Demand.class, new Integer(id));
		logger.info("Demand loaded successfully, Demand details="+d);
		return d;
	}

	@Override
	public void removeDemand(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Demand d = (Demand) session.load(Demand.class, new Integer(id));
		if(null != d){
			session.delete(d);
		}
		logger.info("Demand deleted successfully, Demand details="+d);
	}

}
