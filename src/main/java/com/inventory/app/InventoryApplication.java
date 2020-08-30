package com.inventory.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

//@ComponentScan(basePackages = {"com.inventory.app.controller","com.inventory.app.service.LoginService","com.inventory.app.dao.LoginRepository"})
//@ComponentScan(basePackages = "com.inventory.app")
@SpringBootApplication
public class InventoryApplication {

	public static void main(String[] args) {
		SpringApplication.run(InventoryApplication.class, args);
	}

}	
