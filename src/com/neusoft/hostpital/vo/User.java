package com.neusoft.hostpital.vo;

import java.util.ArrayList;
import java.util.List;



/**
 * ≥÷æ√ªØ¿‡
 * 
 * @author JTXY
 *
 */
public class User {
	private int userId;
	private String userNo;
	private String userName;
	private String userSex;
	private String userWork;
	private ArrayList<Disease> disease;
	// private Hospital hospitalName;
	private ArrayList<Project> project;
	private int userPower;
	private String userPass;
	public User(int userId, String userNo, String userName, String userSex, String userWork) {
		super();
		this.userId = userId;
		this.userNo = userNo;
		this.userName = userName;
		this.userSex = userSex;
		this.userWork = userWork;
	}

	
	public User(String userNo, String userName, String userSex, String userWork, int userPower) {
		super();
		this.userNo = userNo;
		this.userName = userName;
		this.userSex = userSex;
		this.userWork = userWork;
		this.userPower = userPower;
	}
	

	public User(String userNo, String userName, String userSex, int userPower) {
		super();
		this.userNo = userNo;
		this.userName = userName;
		this.userSex = userSex;
		this.userPower = userPower;
	}


	public User(String userNo, String userName, String userSex, int userPower, String userPass) {
		super();
		this.userNo = userNo;
		this.userName = userName;
		this.userPass = userPass;
		this.userSex = userSex;
		this.userPower = userPower;
		
	}


	public User(int userId, String userNo, String userName, String userSex) {
		super();
		this.userId = userId;
		this.userNo = userNo;
		this.userName = userName;
		
		this.userSex = userSex;
	}


	public int getUserPower() {
		return userPower;
	}

	public void setUserPower(int userPower) {
		this.userPower = userPower;
	}



	public ArrayList<Project> getProject() {
		return project;
	}

	public void setProject(ArrayList<Project> project) {
		this.project = project;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getUserName() {
		return userName;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}


	public ArrayList<Disease> getDisease() {
		return disease;
	}


	public void setDisease(ArrayList<Disease> disease) {
		this.disease = disease;
	}


	public String getUserWork() {
		return userWork;
	}

	public void setUserWork(String userWork) {
		this.userWork = userWork;
	}


	public String getUserPass() {
		return userPass;
	}


	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public User(String userNo,String userPass) {
		super();
		this.userNo = userNo;
		this.userPass=userPass;
	}
	
}
