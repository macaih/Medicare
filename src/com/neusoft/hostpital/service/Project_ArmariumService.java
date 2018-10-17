package com.neusoft.hostpital.service;
import java.util.List;
import com.neusoft.hostpital.vo.AllAttribute;
import com.neusoft.hostpital.vo.Project_Armarium;

public interface Project_ArmariumService {
	//void addProArm(Project_Armarium project_armarium);
	Project_Armarium getProject_id(String Project_name);
	Project_Armarium getArmarium_id(String Armarium_name);
	boolean removeProArm(Project_Armarium project_armarium);
	List<Project_Armarium> selectProjectname(int project_id);
	List<Project_Armarium> selectarmName();
	List<AllAttribute> selectArmriumByProjectId(int projectId);
	boolean addProArm(int projectId,String armName,int time);
	void removeProArm(int projectId,int armId);
	Project_Armarium check_armname(String Armarium_name);
}
