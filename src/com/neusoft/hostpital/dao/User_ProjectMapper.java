package com.neusoft.hostpital.dao;

import java.util.List;

import com.neusoft.hostpital.vo.User_Project;

public interface User_ProjectMapper {
	List<User_Project> selectAllUserId();

	List<User_Project> selectAllProjectId();

	List<User_Project> selectAllUserProject();

	void save(User_Project user_Project);

	boolean removeUserProject(int id);

	boolean updateUserProject(User_Project user_Project);
	
	User_Project selectUserProjectById(int id);
}
