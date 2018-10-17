package com.neusoft.hostpital.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.hostpital.dao.Project_DrugsMapper;
import com.neusoft.hostpital.service.Project_DrugsService;
import com.neusoft.hostpital.vo.Drugs;
import com.neusoft.hostpital.vo.Project;
import com.neusoft.hostpital.vo.Project_Drugs;

@Service
public class Project_DrugsServiceImpl implements Project_DrugsService  {

	@Autowired
	private Project_DrugsMapper  project_drugsMapper;
	@Override
	public void save(Project_Drugs project_drugs) {
		
		 project_drugsMapper.save(project_drugs);
		
	}
	
	@Override
	public List<Project> selectAllProject() {
		
		return project_drugsMapper.selectAllProject();
		
	}
	@Override
	public 	List<Drugs> selectDrugsById(int id) {
		
		return project_drugsMapper.selectDrugsById(id);
	}
	
	
	@Override
	public boolean updateProjectDrugs(Project_Drugs project_drugs) {
		try {
			project_drugsMapper.updateProjectDrugs(project_drugs);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	@Override
	public Project_Drugs selectProdrById(int id) {
		
		return project_drugsMapper.selectProdrById(id);
	}

	@Override
	public List<Project_Drugs> selectDrugsName() {
		
		return project_drugsMapper.selectDrugsName();
		
	}

	@Override
	public boolean removeProdr(int id) {
		try {
			project_drugsMapper.removeProdr(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	@Override
	public boolean removeDrugs(int id,int id1) {
		try {
			project_drugsMapper.removeDrugs(id,id1);
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean removeProDru(Project_Drugs project_drugs) {
			try {
				project_drugsMapper.removeProDru(project_drugs);
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		
	}
	
	@Override
	public void removeProDru(int project_id,int drugs_id) {
		project_drugsMapper.removeProDru(project_id, drugs_id);
	}
	
}
