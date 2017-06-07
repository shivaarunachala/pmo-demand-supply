package com.journaldev.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.journaldev.spring.dao.AppUserDAO;
import com.journaldev.spring.model.AppUser;

@Service
public class AppUserServiceImpl implements AppUserService {
	
	private AppUserDAO appUserDAO;

	public void setAppUserDAO(AppUserDAO appUserDAO) { 
		this.appUserDAO = appUserDAO;
	}

	@Override
	@Transactional
	public void addAppUser(AppUser p) {
		this.appUserDAO.addAppUser(p);
	}

	@Override
	@Transactional
	public void updateAppUser(AppUser p) {
		this.appUserDAO.updateAppUser(p);
	}

	@Override
	@Transactional
	public List<AppUser> listAppUsers() {
		return this.appUserDAO.listAppUsers();
	}

	@Override
	@Transactional
	public AppUser getAppUserById(String id) {
		return this.appUserDAO.getAppUserById(id);
	}

	@Override
	@Transactional
	public void removeAppUser(String id) {
		this.appUserDAO.removeAppUser(id);
	}

}
