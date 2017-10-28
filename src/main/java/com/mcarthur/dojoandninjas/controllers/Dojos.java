package com.mcarthur.dojoandninjas.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mcarthur.dojoandninjas.models.*;
import com.mcarthur.dojoandninjas.services.*;

@Controller
public class Dojos {
	
	private final DojoService dojoService;
	private final NinjaService ninjaService;
	
	public Dojos(DojoService dojoService, NinjaService ninjaService) {
		this.dojoService = dojoService;
		this.ninjaService = ninjaService;
	}
	
	@RequestMapping("/")
	public String index(Model model) {
		Iterable<Dojo> dojos = dojoService.allDojos();
		
		model.addAttribute("dojos", dojos);
		return "index.jsp";
	}
	
	@RequestMapping("/dojos/new")
	public String newDojo() {
		return "newDojo.jsp";	
	}
	
	@PostMapping("/dojos/new")
	public String addDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			
			return "newDojo.jsp";
		}
		else {
			dojoService.addDojo(dojo);
			return "redirect:/";
		}
	}
	
	@RequestMapping("/ninjas/new")
	public String newNinja(Model model) {
		Iterable<Dojo> dojos = dojoService.allDojos();
		
		model.addAttribute("dojos", dojos);
		return "newNinja.jsp";
	}
	
	@PostMapping("/ninjas/new")
	public String addNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result) {
		if(result.hasErrors()) {
			return "newNinja.jsp";
		}
		else {
			ninjaService.addNinja(ninja);
			return "redirect:/";
		}
	}
	
	@RequestMapping("/dojos/{id}")
	public String displayDojo(@PathVariable("id") Long id, Model model) {
		Dojo dojo = dojoService.findById(id);
		
		model.addAttribute("dojo", dojo);
		return "displayDojo.jsp";
	}
	
	@RequestMapping("/delete/ninja/{id}")
	public String deleteNinja(@PathVariable("id") Long id) {
		Ninja ninja = ninjaService.findById(id);
		ninjaService.destroyNinja(ninja);
		
		return "redirect:/";
	}
	
	@RequestMapping("/ninja/{id}")
	public String displayNinja(@PathVariable("id") Long id, Model model) {
		Ninja ninja = ninjaService.findById(id);
		
		model.addAttribute("ninja", ninja);
		return "editNinja.jsp";
	}
	
	@PostMapping("/ninja/{id}")
	public String editNinja(@PathVariable("id") Long id, @Valid @ModelAttribute("ninja") Ninja ninja,BindingResult result) {
		if(result.hasErrors()) {
			return "editNinja.jsp";
		}
		else {
			
			ninjaService.updateNinja(id, ninja);
			
			return "redirect:/";			
		}
	}
	
	
}
