package com.inventory.app.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inventory.app.dao.ProjectRepository;
import com.inventory.app.model.Project;
import com.inventory.app.service.ProjectService;

@Service
public class ProjectServiceImpl implements ProjectService {

	@Autowired
	ProjectRepository projectRepo;
	@Override
	public Project save(Project project) {
		// TODO Auto-generated method stub
		return projectRepo.save(project);
	}

}
