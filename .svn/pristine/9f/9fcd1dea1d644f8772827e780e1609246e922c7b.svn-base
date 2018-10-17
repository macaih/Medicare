package com.neusoft.hostpital.serviceimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysql.fabric.xmlrpc.base.Array;
import com.neusoft.hostpital.dao.UserMapper;
import com.neusoft.hostpital.service.UserService;
import com.neusoft.hostpital.vo.AllAttribute;
import com.neusoft.hostpital.vo.Armarium;
import com.neusoft.hostpital.vo.Disease;
import com.neusoft.hostpital.vo.Drugs;
import com.neusoft.hostpital.vo.Project;
import com.neusoft.hostpital.vo.User;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	public User adminLogin(String userNo,String userPass) {
		//System.out.println(userNo);
		//System.out.println(userPass);
		//System.out.println(userMapper.adminLogin(userNo, userPass));
		if (userMapper.adminLogin(userNo, userPass) != null && userMapper.adminLogin(userNo, userPass).getUserPower()== 1) {
			return userMapper.adminLogin(userNo, userPass);
		} else{
			return null;
		}
	}

	public boolean addOrdinaryUser(User user) {
		try {
			userMapper.addOrdinaryUser(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
			// TODO: handle exception
		}
	}

	public List<User> selectOrdinaryUser(String userNo) {
		
		return userMapper.selectOrdinaryUser("%"+userNo+"%");
	}

	public boolean removeOrdinaryUser(int userId) {
		try {
			userMapper.delDiseaseUser(userId);
			userMapper.delProjectUser(userId);
			userMapper.removeOrdinaryUser(userId);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return false;
		}
	}

	public User selectOrdinaryUpdateUser(int userId) {
		return userMapper.selectOrdinaryUpdateUser(userId);
	}
	
	public boolean updateOrdinaryUser(User user){
		try {
			userMapper.updateOrdinaryUser(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
			// TODO: handle exception
		}
	}
	
	public boolean addAdminUser(User user){
		try {
			userMapper.addAdminUser(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<User> selectAdminUserByNo(String userNo) {
		return userMapper.selectAdminUserByNo("%"+userNo+"%");
	}

	@Override
	public boolean removeAdminUser(int userId) {
		try {
			userMapper.removeAdminUser(userId);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return false;
		}
	}

	@Override
	public User selectAdminUpdateUser(int userId) {
		return userMapper.selectAdminUpdateUser(userId);
	}

	@Override
	public boolean updateAdminUser(User user) {
		try {
			userMapper.updateAdminUser(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return false;
		}
	}

	@Override
	public List<User> selectIllUser(String userNo) {
		return userMapper.selectIllUser("%"+userNo+"%");	
	}

	@Override
	public boolean removeIllUser(int userId) {
		try {
			userMapper.removeIllUserDisesase(userId);
			userMapper.removeIllUserProject(userId);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return false;
		}
	}

	@Override
	public List<AllAttribute> selectProjectByUserId(int userId) {
		return userMapper.selectProjectByUserId(userId);
	}

	@Override
	public List<AllAttribute> selectDiseaseByUserId(int userId) {
		return userMapper.selectDiseaseByUserId(userId);
	}

	@Override
	public boolean removeUserProject(int userId, int projectId) {
		try {
			userMapper.removeUserProject(userId, projectId);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
			// TODO: handle exception
		}
	}

	@Override
	public boolean removeUserDisesase(int userId, int diseaseId) {		
		try {
		userMapper.removeUserDisesase(userId, diseaseId);
		return true;
	} catch (Exception e) {
		e.printStackTrace();
		return false;
		// TODO: handle exception
	}}
	
	@Override
	public boolean addUserRroject(int userId,String projectName,int time) {
		int projectId = userMapper.selectPidByPname(projectName).getProjectId();
		try {
			userMapper.addUserRroject(userId, projectId, time);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
			// TODO: handle exception
		}
	
	}
	
	@Override
	public boolean addIllUserRroject(int userId,String projectName,int time) {
		int projectId = userMapper.selectPidByPname(projectName).getProjectId();
		try {
			userMapper.addUserRroject(userId, projectId, time);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
			// TODO: handle exception
		}
	
	}

	@Override
	public boolean addUserDisease(int userId, String diseaseName) {
		
		try {
			int diseaseId = userMapper.selectDidByDname(diseaseName).getDiseaseId();
			userMapper.addUserDisease(userId,diseaseId);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	@Override
	public boolean addIllUserDisease(int userId, String diseaseName) {
		int diseaseId = userMapper.selectDidByDname(diseaseName).getDiseaseId();
		try {
			userMapper.addUserDisease(userId,diseaseId);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public AllAttribute selectUserIdByUserNo(String userNo) {
		return userMapper.selectUserIdByUserNo(userNo);
	}

	@Override
	public int isExist(String userNo) {
		if(userMapper.isExistIllUser(userNo).size()!=0){
			return 1;
		}else if(userMapper.isExistUser(userNo)!=null){
			return 2;
		}else{
			return 3;
			}
	}
	
	public List<Double> calculation(String userNo){
		try {
			double zifei = 0;
			double projectZifei = 0;
			double baoxiao = 0;
			double shiji = 0;
			double projectBaoxiao = 0;
			List<Double> feiyong = new ArrayList<Double>();
			User user = userMapper.selectUserByUserNo(userNo);
			int userId = user.getUserId();
			String isWork = user.getUserWork();
			List<AllAttribute> listPro = new ArrayList<AllAttribute>();
			listPro = userMapper.getProIdAndProTime(userId);
			for (AllAttribute allAttribute : listPro) {
				List<AllAttribute> listArm = new ArrayList<AllAttribute>();
				int projectId = allAttribute.getProjectId();
				int projectTime = allAttribute.getProjectTime();
				listArm = userMapper.getArmIdAndDay(projectId);
				for(int i = 0;i<listArm.size();i++){
					projectBaoxiao+=userMapper.getArmPrice(listArm.get(i).getArmId()).getArmPrice()*listArm.get(i).getProArmTime();
				}
				List<AllAttribute> listDrugs = new ArrayList<AllAttribute>();
				listDrugs = userMapper.getDrugsIdAndAmount(projectId);
				for(int i = 0;i<listDrugs.size();i++){
					AllAttribute drugs = userMapper.getDrugsPriceAndType(listDrugs.get(i).getDrugsId());
					if(drugs.getDrugsType().equals("¼×")){
						projectBaoxiao+=drugs.getDrugsPrice()*listDrugs.get(i).getProDrugsAmount();
					}else if(drugs.getDrugsType().equals("ÒÒ")){
						projectBaoxiao+=drugs.getDrugsPrice()*listDrugs.get(i).getProDrugsAmount()*0.5;
						projectZifei+=drugs.getDrugsPrice()*listDrugs.get(i).getProDrugsAmount()*0.5;
					}else{
						projectZifei+=drugs.getDrugsPrice()*listDrugs.get(i).getProDrugsAmount();
					}
				}
				projectBaoxiao*=projectTime;
				projectZifei*=projectTime;
				zifei+=projectZifei;
				baoxiao+=projectBaoxiao;
				projectZifei = 0;
				projectBaoxiao = 0;
			}
			if(isWork.equals("ÓÐ")){
				shiji = zifei+baoxiao*0.9;
				feiyong.add(baoxiao);
				feiyong.add(zifei);
				feiyong.add(shiji);
			}else{
				shiji = zifei+baoxiao*0.8;
				feiyong.add(baoxiao);
				feiyong.add(zifei);
				feiyong.add(shiji);
			}
			return feiyong;
		} catch (Exception e) {
			List<Double> list = new ArrayList<Double>();
			return list;
		}
		
	}

	@Override
	public User getUserNameAndNo(String userNo) {
		return userMapper.getUserNameAndNo(userNo);
	}

	@Override
	public boolean addProjectArm(String projectNo, String armName, int time) {
		int projectId = userMapper.getProjectIdByNo(projectNo).getProject_id();
		int armId = userMapper.getArmIdByName(armName).getArmariumId();
		try {
			userMapper.addProjectArm(projectId,armId,time);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public Project getProjectIdByNo(String projectNo) {
		return userMapper.getProjectIdByNo(projectNo);
	}

	@Override
	public boolean addProjectDrugs(int projectId, String drugsName, int amount) {
		try {
			int drugsId = userMapper.getdrugsIdByName(drugsName).getDrugs_id();
			userMapper.addProjectDrugs(projectId, drugsId, amount);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public List<Project> getLikeProject(String projectNo) {
		return userMapper.getLikeProject("%"+projectNo+"%");
	}

	@Override
	public List<AllAttribute> getDrugsByProjectId(int projectId) {
		return userMapper.getDrugsByProjectId(projectId);
	}

	@Override
	public void removeProDrugs(int projectId, int drugsId) {
		userMapper.removeProDrugs(projectId, drugsId);
	}

	@Override
	public void addProject(String a, String b, String c) {
		userMapper.addProject(a, b, c);
	}

	@Override
	public void delProject(int projectId) {
		userMapper.delProjectDrugs(projectId);
		userMapper.delProjectArmarium(projectId);
		userMapper.delUserProject(projectId);
		userMapper.delProject(projectId);
	}
	@Override
	public User select_userNo(String userNo) {
		System.out.println(userNo);
		System.out.println(userMapper.select_userNo(userNo));
		return userMapper.select_userNo(userNo);
	}

	@Override
	public int isExistUser2(String userNo) {
		if(userMapper.isExistUser2(userNo)!=null){
			return 1;
		}else return 2; 
	}


	@Override
	public List<AllAttribute> selectdrugN() {
		return userMapper.selectdrugN();
	}

	


	@Override
	public Project isExistProjectNo(String projectNo) {
		return userMapper.isExistProjectNo(projectNo);
	}

	@Override
	public Project isExistProjectName(String projectName) {
		return userMapper.isExistProjectName(projectName);
	}

	@Override
	public Disease isExistDiseaseName(String diseaseName) {
		return userMapper.isExistDiseaseName(diseaseName);
	}


	@Override
	public AllAttribute ckdruname(String drugsName) {
		
		return userMapper.ckdruname(drugsName);
	}
	
	


	@Override
	public Armarium isExistArmariumName(String armariumName) {
return userMapper.isExistArmariumName(armariumName);
	}

	@Override
	public List<Armarium> getAllArmName() {
		return userMapper.getAllArmName();
	}

	@Override
	public List<Drugs> getAllDrugsName() {
		return userMapper.getAllDrugsName();
	}

	@Override
	public List<Disease> getAllDiseaseName() {
		return userMapper.getAllDiseaseName();
	}

	@Override
	public List<Project> getAllProjectName() {
		return userMapper.getAllProjectName();
	}
		


}
