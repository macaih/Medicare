package com.neusoft.hostpital.vo;

import java.util.List;


public class Project {
     public Project() {
		super();
		// TODO Auto-generated constructor stub
	}
	private int project_id;
     private String project_no;
     private String project_name;
     private String project_level;
     private List<Drugs> drugs;
	public List<Drugs> getDrugs() {
		return drugs;
	}
	public Project(String project_no, String project_name, String project_level) {
		super();
		this.project_no = project_no;
		this.project_name = project_name;
		this.project_level = project_level;
	}
	public void setDrugs(List<Drugs> drugs) {
		this.drugs = drugs;
	}
	public int getProject_id() {
		return project_id;
	}
	public void setProject_id(int project_id) {
		this.project_id = project_id;
	}
	public String getProject_no() {
		return project_no;
	}
	
	public Project(int project_id, String project_no, String project_name, String project_level) {
		super();
		this.project_id = project_id;
		this.project_no = project_no;
		this.project_name = project_name;
		this.project_level = project_level;
	}
	public void setProject_no(String project_no) {
		this.project_no = project_no;
	}
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	public String getProject_level() {
		return project_level;
	}
	public void setProject_level(String project_level) {
		this.project_level = project_level;
	}
	/*public Project( String project_no, String project_name, String project_level) {
		super();
		
		this.project_no = project_no;
		this.project_name = project_name;
		this.project_level = project_level;*/
	}
     
	
	

