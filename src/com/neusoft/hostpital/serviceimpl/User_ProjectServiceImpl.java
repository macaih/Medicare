package com.neusoft.hostpital.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.hostpital.dao.User_ProjectMapper;
import com.neusoft.hostpital.service.User_ProjectService;
import com.neusoft.hostpital.vo.User_Project;

@Service
public class User_ProjectServiceImpl implements User_ProjectService {
	@Autowired
	private User_ProjectMapper user_projectMapper;
	
	@Override
	public List<User_Project> selectAllUserId() {
		
		return user_projectMapper.selectAllUserId();
	}

	@Override
	public List<User_Project> selectAllProjectId() {
		
		return user_projectMapper.selectAllProjectId();
	}
	
	
	@Override
	public List<User_Project> selectAllUserProject() {
		
		return user_projectMapper.selectAllUserProject();
	}
	
	@Override
	public void save(User_Project user_Project) {
		user_projectMapper.save(user_Project);
		
	}

	@Override
	public boolean removeUserProject(int id) {
		try {
			user_projectMapper.removeUserProject(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	@Override
	public User_Project selectUserProjectById(int id) {
		
		return user_projectMapper.selectUserProjectById(id);
	}

	
	@Override
	public boolean updateUserProject(User_Project user_Project) {
		try {
			user_projectMapper.updateUserProject(user_Project);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
