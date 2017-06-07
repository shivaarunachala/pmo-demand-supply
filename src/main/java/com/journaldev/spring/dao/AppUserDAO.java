package com.journaldev.spring.dao;

import java.util.List;

import com.journaldev.spring.model.AppUser;

public interface AppUserDAO {

	public void addAppUser(AppUser p);
	public void updateAppUser(AppUser p);
	public List<AppUser> listAppUsers();
	public AppUser getAppUserById(String id);
	public void removeAppUser(String id);
}
