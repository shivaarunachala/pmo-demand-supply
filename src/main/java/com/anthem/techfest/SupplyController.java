package com.anthem.techfest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.anthem.techfest.model.Demand;
import com.anthem.techfest.model.Supply;
import com.anthem.techfest.service.DemandService;
import com.anthem.techfest.service.SupplyService;

@Controller
public class SupplyController {
	
	private SupplyService supplyService;
	private DemandService demandService;
	
	
	@Autowired(required=true)
	@Qualifier(value="demandService")
	public void setdemandService(DemandService ds){
		this.demandService = ds;
	}
	
	@Autowired(required=true)
	@Qualifier(value="supplyService")
	public void setsupplyService(SupplyService ds){
		this.supplyService = ds;
	}
	
	@RequestMapping(value = "/supply", method = RequestMethod.GET)
	public String listSupply(Model model) {
		model.addAttribute("supply", new Supply());
		model.addAttribute("listSupply", this.supplyService.listSupply());
		return "supply";
	}
	
	//For add and update supply both
	@RequestMapping(value= "/supply/add", method = RequestMethod.POST)
	public String addSupply(@ModelAttribute("supply") Supply s){
		
		int demandId = s.getDemand().getId();
		Demand d = this.demandService.getDemandById(demandId);
		
//		this.demandService.addDemand(d);
		
		
		s.setDemand(d);
		
		
		
		if(s.getId() == 0){
			//new supply, add it
			this.supplyService.addSupply(s);
		}else{
			//existing supply, call update
			this.supplyService.updateSupply(s);
		}
		
		return "redirect:/supplyList";
		
	}
	
	@RequestMapping("/removeSupply/{id}")
    public String removeSupply(@PathVariable("id") int id){
		
        this.supplyService.removeSupply(id);
        return "redirect:/supply";
    }
 
    @RequestMapping("/editSupply/{id}")
    public String editSupply(@PathVariable("id") int id, Model model){
    	Supply s = this.supplyService.getSupplyById(id);
    	List<Supply> sList = this.supplyService.listSupply();
        model.addAttribute("supply", s); 
        model.addAttribute("listSupply", sList);
        return "supply";
    }
    
    @RequestMapping("/supplyFeedback/{id}")
    public String supplyFeedback(@PathVariable("id") int id, Model model) {
    	model.addAttribute("supply", this.supplyService.getSupplyById(id));
        return "supplyFeedback";
    }
    @RequestMapping(value= "/feedback/{id}", method = RequestMethod.POST)
    public String feedbackSupply(@ModelAttribute("supply") Supply d, @PathVariable("id") int id, Model model){
    	
    	Supply updatedSupply = supplyService.getSupplyById(id);
    	updatedSupply.setFeedback(d.getFeedback());
    	this.supplyService.updateSupply(updatedSupply);
    	return "redirect:/supplyList";
    }
    @RequestMapping("/supplyList")
    public String supplyList( Model model) {
        model.addAttribute("listSupply", this.supplyService.listSupply());
        return "supplyList";
    }
    
    
//    @ExceptionHandler
}
