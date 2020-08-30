package com.inventory.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.inventory.app.model.Project;

public interface ProjectRepository extends JpaRepository<Project, Long> {

}
