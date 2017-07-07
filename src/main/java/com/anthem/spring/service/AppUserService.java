package com.anthem.spring.service;

import java.util.List;

import com.anthem.spring.model.AppUser;

public interface AppUserService {

	public void addAppUser(AppUser p);
	public void updateAppUser(AppUser p);
	public List<AppUser> listAppUsers();
	public AppUser getAppUserById(String id);
	public void removeAppUser(String id);
	
}
