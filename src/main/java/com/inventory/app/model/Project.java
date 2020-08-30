package com.inventory.app.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table
@Entity
public class Project {
   @Id
   @GeneratedValue(strategy = GenerationType.AUTO)
	private int projectId;
   
   private String projectCode;
   
   private String projectName;
   
   
   private String projectDescryption;
   
   
   private String ScopeWork;


public int getProductId() {
	return projectId;
}


public void setProductId(int productId) {
	this.projectId = projectId;
}


public String getProjectCode() {
	return projectCode;
}


public void setProjectCode(String projectCode) {
	this.projectCode = projectCode;
}


public String getProjectName() {
	return projectName;
}


public void setProjectName(String projectName) {
	this.projectName = projectName;
}


public String getProjectDescryption() {
	return projectDescryption;
}


public void setProjectDescryption(String projectDescryption) {
	this.projectDescryption = projectDescryption;
}


public String getScopeWork() {
	return ScopeWork;
}

public void setScopeWork(String scopeWork) {
	ScopeWork = scopeWork;
}

@Override
public String toString() {
	return "Product [productId=" + projectId + ", projectCode=" + projectCode + ", projectName=" + projectName
			+ ", projectDescryption=" + projectDescryption + ", ScopeWork=" + ScopeWork + ", getProductId()="
			+ getProductId() + ", getProjectCode()=" + getProjectCode() + ", getProjectName()=" + getProjectName()
			+ ", getProjectDescryption()=" + getProjectDescryption() + ", getScopeWork()=" + getScopeWork() + "]";
}
   
   
   
   
   
}
