package com.mcarthur.dojoandninjas.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String index() {
		return "index.jsp";
	}

	@RequestMapping("/dojos/new")
	public String newDojo() {
		return "newDojo.jsp";	
	}
	
	@RequestMapping("/ninjas/new")
	public String newNinja() {
		return "newNinja.jsp";
	}
	
}
