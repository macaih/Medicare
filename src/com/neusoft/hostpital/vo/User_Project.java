package com.neusoft.hostpital.vo;

public class User_Project {
		
	private int u_p_id;
	private int user_id;
	private int project_id;
	private int time;
	public int getU_p_id() {
		return u_p_id;
	}
	public void setU_p_id(int u_p_id) {
		this.u_p_id = u_p_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getProject_id() {
		return project_id;
	}
	public void setProject_id(int project_id) {
		this.project_id = project_id;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "User_ProjectService [u_p_id=" + u_p_id + ", user_id=" + user_id + ", project_id=" + project_id + ", time="
				+ time + "]";
	}
	public User_Project() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
