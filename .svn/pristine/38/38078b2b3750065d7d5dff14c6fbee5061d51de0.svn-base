package com.neusoft.hostpital.serviceimpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.hostpital.dao.ProjectMapper;
import com.neusoft.hostpital.service.ProjectService;
import com.neusoft.hostpital.vo.Project;
import com.neusoft.hostpital.vo.Project_Drugs;


@Service
public class ProjectServiceImpl implements ProjectService {

	@Autowired
	private ProjectMapper projectMapper;

	

	@Override
	public void save(Project project) {
		
		projectMapper.save(project);
		
	}

	@Override
	public boolean removeProject(int id) {
		try {
			projectMapper.removeProject(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean updateProject(Project project) {
		try {
			projectMapper.updateProject(project);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<Project> selectAllProject() {
		
		return projectMapper.selectAllProject();
	}

	@Override
	public Project selectProjectById(int id) {
		
		return projectMapper.selectProjectById(id);
	}

	@Override
	public Project selectProject1(String project_no) {
	//System.out.println(projectMapper.selectProject1(project_no));
		return  projectMapper.selectProject1(project_no);
	}

	
	
}


