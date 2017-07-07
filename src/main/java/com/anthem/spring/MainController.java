package com.anthem.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.anthem.spring.model.AppUser;
import com.anthem.spring.service.AppUserService;
import com.anthem.techfest.model.Demand;

@Controller
public class MainController {

	
	private AppUserService appUserService;
	
	@Autowired(required=true)
	@Qualifier(value="appUserService")
	public void setAppUserService(AppUserService ps){
		this.appUserService = ps;
	}
	
	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
	public ModelAndView defaultPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Login Form - Database Authentication");
		model.addObject("message", "This is default page!");
		model.setViewName("hello");
		return model;

	}

	
	
	@RequestMapping(value = { "/", "/dashboard**" }, method = RequestMethod.GET)
	public ModelAndView dashboardPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Dashboard");
		model.addObject("message", "This is dashboard page!");
		model.setViewName("dashboard");
		return model;

	}
	
	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Login Form - Database Authentication");
		model.addObject("message", "This page is for ROLE_ADMIN only!");
		model.setViewName("admin");

		return model;

	}
	
	@RequestMapping(value = "/lead**", method = RequestMethod.GET)
	public ModelAndView leadPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Login Form - Database Authentication");
		model.addObject("message", "This page is for ROLE_lead only!");
		model.setViewName("admin");

		return model;

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password / Not approved!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");

		return model;

	}
	
	//for 403 access denied page
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied() {

		ModelAndView model = new ModelAndView();
		
		//check if user is login
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
		
			model.addObject("username", userDetail.getUsername());
			
		}
		
		model.setViewName("403");
		return model;

	}
	
	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public ModelAndView registration(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password / Not approved!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.addObject("userForm", new AppUser());
		model.setViewName("registration");

		return model;

	}
	
	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String registrationPost(@ModelAttribute("userForm") AppUser u, @RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		if(u.getEnterpriseid() != null){
			//new appUser, add it
			this.appUserService.addAppUser(u);
		}
		return "redirect:/login";

	}
	

}