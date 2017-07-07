package com.anthem.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.anthem.spring.model.AppUser;
import com.anthem.spring.service.AppUserService;

@Controller
public class AppUserController {
	
	private AppUserService appUserService;
	
	@Autowired(required=true)
	@Qualifier(value="appUserService")
	public void setAppUserService(AppUserService ps){
		this.appUserService = ps;
	}
	
	@RequestMapping(value = "/appUsers", method = RequestMethod.GET)
	public String listAppUsers(Model model) {
		model.addAttribute("appUser", new AppUser());
		model.addAttribute("listAppUsers", this.appUserService.listAppUsers());
		return "appUser";
	}
	
	//For add and update appUser both
	@RequestMapping(value= "/appUser/add", method = RequestMethod.POST)
	public String addAppUser(@ModelAttribute("appUser") AppUser p){
		
		if(p.getEnterpriseid() != null){
			//new appUser, add it
			this.appUserService.addAppUser(p);
		}else{
			//existing appUser, call update
			this.appUserService.updateAppUser(p);
		}
		
		return "redirect:/appUsers";
		
	}
	
	@RequestMapping("/removeAppUser/{id}")
    public String removeAppUser(@PathVariable("id") String id){
		
        this.appUserService.removeAppUser(id);
        return "redirect:/appUsers";
    }
 
    @RequestMapping("/editAppUser/{id}")
    public String editAppUser(@PathVariable("id") String id, Model model){
        model.addAttribute("appUser", this.appUserService.getAppUserById(id));
        model.addAttribute("listAppUsers", this.appUserService.listAppUsers());
        return "appUser";
    }
	
    @RequestMapping("/enableAppUser/{id}")
    public String enableAppUser(@PathVariable("id") String id, Model model){
    	AppUser u = this.appUserService.getAppUserById(id);
    	u.setEnabled(1);
    	this.appUserService.updateAppUser(u);
    	 
    	model.addAttribute("appUser", new AppUser());
		model.addAttribute("listAppUsers", this.appUserService.listAppUsers());
		return "appUser";
    }
    
    @RequestMapping("/approveAppUser/{id}")
    public String approveAppUser(@PathVariable("id") String id, Model model){
    	AppUser u = this.appUserService.getAppUserById(id);
    	u.setPmoapproval(1);
    	this.appUserService.updateAppUser(u);
    	 
    	model.addAttribute("appUser", new AppUser());
		model.addAttribute("listAppUsers", this.appUserService.listAppUsers());
		return "appUser";
    }
    
    
    
}
