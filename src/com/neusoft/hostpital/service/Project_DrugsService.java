package com.neusoft.hostpital.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.neusoft.hostpital.vo.Project_Drugs;
import com.neusoft.hostpital.vo.Drugs;
import com.neusoft.hostpital.vo.Project;

@Service
public interface Project_DrugsService {
	void save(Project_Drugs project_drugs);
	List<Project> selectAllProject();
	List<Drugs> selectDrugsById(int id);
	List<Project_Drugs> selectDrugsName();
	Project_Drugs selectProdrById(int id);
	boolean removeProdr(int id);
	boolean removeDrugs(int id, int id1);
	boolean updateProjectDrugs(Project_Drugs project_drugs);
	boolean removeProDru(Project_Drugs project_drugs);
	void removeProDru(int project_id, int drugs_id);

	
   
	
	

	
	
	

}
