package com.neusoft.hostpital.dao;

import java.util.List;

import com.neusoft.hostpital.vo.AllAttribute;
import com.neusoft.hostpital.vo.Armarium;
import com.neusoft.hostpital.vo.Disease;
import com.neusoft.hostpital.vo.Drugs;
import com.neusoft.hostpital.vo.Project;
import com.neusoft.hostpital.vo.User;
/*
 * �û���Ĺ���ӿڽӿ�
 * 
 * */

public interface UserMapper {
	
	User adminLogin(String userNo,String userPass);
	
	void addOrdinaryUser(User user);
	
	List<User> selectOrdinaryUser(String userNo);
	
	void addIllUser();
	
	void updateUser(User user);
	
	boolean updateOrdinaryUser(User user);
	
	void addAdminUser(User user);
	
	User selectOrdinaryUpdateUser(int userId);
	
	List<User> selectAllUser();
	
	List<User> selectAdminUserByNo(String userNo);
	
	void removeAdminUser(int userId);
	
	User selectAdminUpdateUser(int userId);
	
	void updateAdminUser(User user);
	
	List<User> selectIllUser(String userNo);
	
	void removeIllUserDisesase(int userId);
	
	void removeIllUserProject(int userId);
	
	void removeIllUserArmarium(int userId);
	
	List<AllAttribute> selectProjectByUserId(int userId);
	
	List<AllAttribute> selectDiseaseByUserId(int userId);
	
	void removeUserProject(int userId,int projectId);
	
	void removeUserDisesase(int userId,int diseaseId);
	
	AllAttribute selectPidByPname (String projectName);
	
	void addUserRroject(int userId,int projectId,int time);
	
	AllAttribute selectDidByDname(String diseaseName);
	
	void addUserDisease(int userId,int diseaseId);
	
	AllAttribute selectUserIdByUserNo(String userNo);
	
	List<User> isExistIllUser(String userNo);
	
	User isExistUser(String No);
	
	List<AllAttribute> getProIdAndProTime(int userId);
	
	User selectUserByUserNo(String userNo);
	
	List<AllAttribute> getArmIdAndDay(int projectId);
	
	AllAttribute getArmPrice(int projectId);
	
	List<AllAttribute> getDrugsIdAndAmount(int projectId);
	
	AllAttribute getDrugsPriceAndType(int drugsId);
	
	User getUserNameAndNo(String userNo);
	
	String select_userNP(User user);
	
	void addProject(String a,String b,String c);
	
	Project getProjectIdByNo(String projectNo);

	Armarium getArmIdByName(String armName);
	
	void addProjectArm(int projectId,int armariumId,int time);
	
	Drugs getdrugsIdByName(String drugsName);
	
	void addProjectDrugs(int projectId,int drugsId,int amount);
	
	List<Project> getLikeProject(String projectNo);
	
	List<AllAttribute> getDrugsByProjectId(int projectId);
	
	void removeProDrugs(int projectId,int drugsId);
	
	void delProjectArmarium(int projectId);
	
	void delProjectDrugs(int projectId);
	
 	void delProject(int projectId);
 	
 	void delUserProject(int projectId);

 	User select_userNo(String userNo);

 	void delProjectUser(int userId);
 	
 	void delDiseaseUser(int userId);
 	
	void removeOrdinaryUser(int userId);
	
	User isExistUser2(String userNo);

	
	List<AllAttribute> selectdrugN();

	
	Project isExistProjectNo(String projectNo);
	
	Project isExistProjectName(String projectName);
	
	Disease isExistDiseaseName(String diseaseName);


	AllAttribute ckdruname(String drugsName);

	
	Armarium isExistArmariumName(String armariumName);
	
	List<Armarium> getAllArmName();
	
	List<Drugs> getAllDrugsName();
	
	List<Disease> getAllDiseaseName();
	
	List<Project> getAllProjectName();

}
