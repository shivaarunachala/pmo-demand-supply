package com.anthem.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.anthem.spring.model.AppUser;

@Repository
public class AppUserDAOImpl implements AppUserDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(AppUserDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	@Override
	public void addAppUser(AppUser p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("AppUser saved successfully, AppUser Details="+p);
	}

	@Override
	public void updateAppUser(AppUser p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("AppUser updated successfully, AppUser Details="+p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AppUser> listAppUsers() {
		Session session = this.sessionFactory.getCurrentSession();
		List<AppUser> appUsersList = session.createQuery("from AppUser").list();
		for(AppUser p : appUsersList){
			logger.info("AppUser List::"+p);
		}
		return appUsersList;
	}

	@Override
	public AppUser getAppUserById(String id) {
		Session session = this.sessionFactory.getCurrentSession();		
		AppUser p = (AppUser) session.load(AppUser.class, id);
		logger.info("AppUser loaded successfully, AppUser details="+p);
		return p;
	}

	@Override
	public void removeAppUser(String id) {
		Session session = this.sessionFactory.getCurrentSession();
		AppUser p = (AppUser) session.load(AppUser.class, id);
		if(null != p){
			session.delete(p);
		}
		logger.info("AppUser deleted successfully, appUser details="+p);
	}

}
