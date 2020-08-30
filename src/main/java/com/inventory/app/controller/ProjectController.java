package com.inventory.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.inventory.app.model.Project;
import com.inventory.app.service.ProjectService;

@Controller
public class ProjectController {
	       
	       @Autowired
	       ProjectService projectService;
	       
		@RequestMapping("/showProjectPage")
		public String display(){
			
			return "addProject";
		}
		
		@PostMapping("/saveProject")
		@ResponseBody
		public ResponseEntity<Project> addProject(@RequestBody Project project){
			
			 Project projectReponse= projectService.save(project);
			
			 HttpHeaders responseHeaders = new HttpHeaders();
		        return new ResponseEntity<>(projectReponse, responseHeaders, HttpStatus.OK);
			
			
			
		}
		
}
