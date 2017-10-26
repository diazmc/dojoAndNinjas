package com.mcarthur.dojoandninjas.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Dojos {
	
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
