package com.inventory.app.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inventory.app.dao.LoginRepository;
import com.inventory.app.model.User;
import com.inventory.app.service.LoginService;

@Service
public class LoginServcieImpl implements LoginService{

	  @Autowired
	 LoginRepository loginRepository;
	
	@Override
	public User loginForm(String username, String password) {
		// TODO Auto-generated method stub
		
		return loginRepository.loginForm(username, password);
	}

}
