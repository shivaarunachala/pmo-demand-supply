package com.anthem.techfest;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.anthem.techfest.model.Demand;
import com.anthem.techfest.service.DemandService;

@Controller
public class DemandController {
	
	private DemandService demandService;
	
	@Autowired(required=true)
	@Qualifier(value="demandService")
	public void setdemandService(DemandService ds){
		this.demandService = ds;
	}
	
	@RequestMapping(value = "/demands", method = RequestMethod.GET)
	public String listDemands(Model model) {
		model.addAttribute("demand", new Demand());
		model.addAttribute("listDemands", this.demandService.listDemands());
		return "demand";
	}
	
	//For add and update demand both
	@RequestMapping(value= "/demand/add", method = RequestMethod.POST)
	public String addDemand(@ModelAttribute("demand") Demand d){
		
		if(d.getId() == 0){
			//new demand, add it
			this.demandService.addDemand(d);
		}else{
			//existing demand, call update
			this.demandService.updateDemand(d);
		}
		
		return "redirect:/demands";
		
	}
	
	@RequestMapping("/removeDemand/{id}")
    public String removeDemand(@PathVariable("id") int id){
		
        this.demandService.removeDemand(id);
        return "redirect:/demands";
    }
 
    @RequestMapping("/editDemand/{id}")
    public String editDemand(@PathVariable("id") int id, Model model){
        model.addAttribute("demand", this.demandService.getDemandById(id));
        model.addAttribute("listDemands", this.demandService.listDemands());
        return "demand";
    }
    @RequestMapping("/viewDemand/{id}")
    public String viewDemand(@PathVariable("id") int id, Model model){
        model.addAttribute("demand", this.demandService.getDemandById(id));
        model.addAttribute("listDemands", this.demandService.listDemands());
        return "demand";
    }
    
    @InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));

	}

}
