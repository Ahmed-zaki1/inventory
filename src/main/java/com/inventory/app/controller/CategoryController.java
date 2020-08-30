package com.inventory.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CategoryController {

	@RequestMapping("/showCategoryPage")
	public String display(){
		
		return "addCategory";
	}
	
	
}
