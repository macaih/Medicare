package com.neusoft.hostpital.dao;

import java.security.KeyStore.Entry.Attribute;
import java.util.List;

import com.neusoft.hostpital.vo.AllAttribute;
import com.neusoft.hostpital.vo.Project_Armarium;

public interface Project_ArmariumMapper {
	void addProArm(Project_Armarium project_armarium);
	Project_Armarium getProject_id(String Project_name);
	Project_Armarium getArmarium_id(String Armarium_name);
	boolean removeProArm(Project_Armarium project_armarium);
	List<Project_Armarium> selectProjectname(int project_id);
	List<Project_Armarium> selectarmName();
	List<AllAttribute> selectArmriumByProjectId(int projectId);
	AllAttribute getArmIdByName(String armariumName);
	void addProArm(int projectId,int armId,int time);
	void removeProArm(int projectId,int armId);
	Project_Armarium check_armname(String Armarium_name);
}
