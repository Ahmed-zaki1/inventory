package com.inventory.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServiceController {

	
	@RequestMapping("/showServicePage")
	public String display(){
		
		return "addService";
	}
}
