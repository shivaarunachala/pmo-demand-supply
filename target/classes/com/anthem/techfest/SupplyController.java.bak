package com.anthem.techfest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.anthem.techfest.model.Supply;
import com.anthem.techfest.service.SupplyService;

@Controller
public class SupplyController {
	
	private SupplyService supplyService;
	
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
	public String addSupply(@ModelAttribute("supply") Supply d){
		
		if(d.getId() == 0){
			//new supply, add it
			this.supplyService.addSupply(d);
		}else{
			//existing supply, call update
			this.supplyService.updateSupply(d);
		}
		
		return "redirect:/supply";
		
	}
	
	@RequestMapping("/removeSupply/{id}")
    public String removeSupply(@PathVariable("id") int id){
		
        this.supplyService.removeSupply(id);
        return "redirect:/supply";
    }
 
    @RequestMapping("/editSupply/{id}")
    public String editSupply(@PathVariable("id") int id, Model model){
        model.addAttribute("supply", this.supplyService.getSupplyById(id));
        model.addAttribute("listSupply", this.supplyService.listSupply());
        return "supply";
    }
    
    @RequestMapping("/supplyFeedback/{id}")
    public String supplyFeedback(@PathVariable("id") int id, Model model){

    	 model.addAttribute("supply", this.supplyService.getSupplyById(id));
    	
    	
        return "supplyFeedback";
    }
    @RequestMapping(value= "/feedback/{id}", method = RequestMethod.POST)
    public String feedbackSupply(@PathVariable("id") int id, Model model){
    	return "redirect:/supplyFeedback/{id}";
    }
}
