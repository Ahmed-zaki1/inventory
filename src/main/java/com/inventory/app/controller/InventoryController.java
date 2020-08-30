package com.inventory.app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.inventory.app.model.User;
import com.inventory.app.service.LoginService;

@Controller
public class InventoryController {

	
	 @Autowired 
	 LoginService loginServices;
	 
	@RequestMapping("/show")
	public String display(){
		
		return "login";
	}
	
	
	@PostMapping("/login")
	public String loginFrom(ModelMap model, HttpServletRequest request, @ModelAttribute("user") User user) {

		String userName = user.getUsername();
		String password = user.getPassword();

		User userValidate = loginServices.loginForm(userName, password);
		if (userValidate.getUsername().equals(userName)&& userValidate.getPassword().equals(password)) {
			HttpSession session = request.getSession(false);
			session.setAttribute("username", userName);
			return "dashboard";
		} else {
			System.out.println("credential Error");
		}
		return "login";
	}
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("username");
		return "login";
	}
	 
	
	
}
