package com.neusoft.hostpital.dao;

import java.util.List;


import com.neusoft.hostpital.vo.Drugs;
import com.neusoft.hostpital.vo.Project;
import com.neusoft.hostpital.vo.Project_Drugs;

public interface Project_DrugsMapper {

	List<Project> selectAllProject();
	List<Drugs> selectDrugsById(int id);
	void save(Project_Drugs project_drugs);
	boolean updateProjectDrugs(Project_Drugs project_drugs);
	List<Project_Drugs> selectDrugsName();
	Project_Drugs selectProdrById(int id);
	boolean removeProdr(int id);
	boolean removeDrugs(int id,int id1);
	boolean removeProDru(Project_Drugs project_drugs);
	void removeProDru(int project_id, int drugs_id);

	
}
