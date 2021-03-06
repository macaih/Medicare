package com.neusoft.hostpital.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.hostpital.dao.UserMapper;
import com.neusoft.hostpital.service.UserService;
import com.neusoft.hostpital.vo.AllAttribute;
import com.neusoft.hostpital.vo.Armarium;
import com.neusoft.hostpital.vo.Disease;
import com.neusoft.hostpital.vo.Drugs;
import com.neusoft.hostpital.vo.Project;
import com.neusoft.hostpital.vo.User;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	private int i;
	// 验证登录
	/*
	 * @RequestMapping(value="/cklogin",method=RequestMethod.POST) public String
	 * ck_login(com.neusoft.hostpital.vo.User user){
	 * //System.out.println(user.getUserNo());
	 * //System.out.println(user.getUserPass()); //String
	 * tz=userService.select_userNP(user); return null; }
	 */

	// 验证登录
	/*
	 * @RequestMapping(value="/cklogin",method=RequestMethod.POST) public String
	 * ck_login(com.neusoft.hostpital.vo.User user){
	 * //System.out.println(user.getUserNo());
	 * //System.out.println(user.getUserPass()); //String
	 * tz=userService.select_userNP(user); return null; }
	 */

	@RequestMapping(value = "/cklogin", method = RequestMethod.POST)
	public String adminLogin(String userNo, String userPass, Model model) {
		/// System.out.println(userNo);
		// System.out.println(userPass);
		if (userService.adminLogin(userNo, userPass) != null) {
			return "index";
		} else {
			model.addAttribute("msg", "账号或密码错误");
			return "login";
		}
	}

	@RequestMapping(value = "/selectAndLogin", method = RequestMethod.GET)
	public String selectAndLogin() {
		return "head2";
	}

	@RequestMapping(value = "/addIllUser1", method = RequestMethod.GET)
	public String addIllUser() {
		return "addIllUser1";
	}



	@RequestMapping(value = "/selectOrdinary", method = RequestMethod.GET)
	public String selectOrdinary() {
		return "selectOrdinaryUser";
	}

	@RequestMapping(value = "/checkUserDisease", method = RequestMethod.GET)
	public String checkUserDisease() {
		return "checkUserDisease";
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public String addUser() {
		return "addUser";
	}

	@RequestMapping(value = "/checkIllUser", method = RequestMethod.GET)
	public String checkIllUser() {
		return "checkIllUser";
	}

	@RequestMapping(value = "/addOrdinaryUser", method = RequestMethod.POST)
	public String addOrdinaryUser(String userNo, String userName, String userSex, String userWork, Model model) {
		User user = new User(userNo, userName, userSex, userWork, 0);

		if (userService.addOrdinaryUser(user) == true) {
			return "selectOrdinaryUser";
		} else {
			return "false";
		}
	}

	@RequestMapping(value = "/selectOrdinaryUser", method = RequestMethod.GET)
	public @ResponseBody List<User> selectOrdinaryUser(String userNo) {
		System.out.println(userNo);
		List<User> list = new ArrayList<User>();
		list = userService.selectOrdinaryUser(userNo);
		return list;
	}

	@RequestMapping(value = "/removeOrdinaryUser", method = RequestMethod.GET)
	public String removeOrdinaryUser(int userId) {
		if (userService.removeOrdinaryUser(userId)) {
			return "redirect:/selectOrdinary";
		} else {
			return "redirect:/selectOrdinary";
		}
	}

	@RequestMapping(value = "/selectOrdinaryUpdateUser", method = RequestMethod.GET)
	public String selectOrdinaryUpdateUser(int userId, Model model) {

		model.addAttribute("user", userService.selectOrdinaryUpdateUser(userId));
		return "updateOrdinaryUser";
	}

	@RequestMapping(value = "/updateOrdinaryUser", method = RequestMethod.GET)
	public String updateOrdinaryUser(int userId, String userNo, String userName, String userSex, String userWork) {
		User user = new User(userId, userNo, userName, userSex, userWork);
		System.out.println("------------------------");
		System.out.println("------------------------");
		if (userService.updateOrdinaryUser(user)) {
			return "selectOrdinaryUser";
		} else
			return "selectOrdinaryUser";
	}
	
	//进行修改
			@RequestMapping(value="/updateOrdinaryUserc" ,method=RequestMethod.GET)
			public String user_updateUser(User user){
				if(user.getUserName()==""||user.getUserNo()==""||user.getUserSex()==""||user.getUserWork()==""){
					return "redirect:selectOrdinaryUser"; 
				}else
				{
					userService.updateOrdinaryUser(user);
					return "redirect:selectOrdinaryUser";
				}
			}

	@RequestMapping(value = "/addAdminUser", method = RequestMethod.POST)
	public String addAdminUser(String userNo, String userName, String userPass, String userSex, Model model) {
		User user = new User();
		user.setUserNo(userNo);
		user.setUserName(userName);
		user.setUserSex(userSex);
		user.setUserPass(userPass);
		user.setUserPower(1);
		if (userService.addAdminUser(user)) {
			model.addAttribute("message", "添加成功");
			return "addAdmin";
		} else
			return "addAdmin";
	}

	@RequestMapping(value = "/selectAdminUserByNo", method = RequestMethod.GET)
	public @ResponseBody List<User> selectAdminUserByNo(String userNo) {
		List<User> list = new ArrayList<User>();
		list = userService.selectAdminUserByNo(userNo);
		return list;
	}

	@RequestMapping(value = "/removeAdminUser", method = RequestMethod.GET)
	public String removeAdminUser(int userId) {
		System.out.println(userId);
		if (userService.removeAdminUser(userId)) {
			return "selectAdmin";
		} else {
			return "false";
		}
	}

	@RequestMapping(value = "/updateAdminUser", method = RequestMethod.GET)
	public String selectAdminUpdateUser(int userId, Model model) {
		model.addAttribute("user", userService.selectAdminUpdateUser(userId));
		return "updateAdmin";
	}

	// 修改管理员信息
	@RequestMapping(value = "/updateAdminUser", method = RequestMethod.POST)
	public String updateAdminUser(User user) {
		if (userService.updateAdminUser(user)) {
			return "selectAdmin";

		} else
			return "admin";
	}
	
	//进行修改
	@RequestMapping(value="/updateAdminUsera" ,method=RequestMethod.GET)
	public String user_updateUsera(User user){
				if(user.getUserNo()==""||user.getUserName()==""||user.getUserSex()==""||user.getUserPass()==""){
					return "redirect:selectAdmin"; 
				}else
				{
					userService.updateAdminUser(user);
					return "redirect:selectAdmin";
				}
			}

	@RequestMapping(value = "/selectIllUser", method = RequestMethod.GET)
	public @ResponseBody List<User> selectIllUser(String userNo) {

		List<User> list = new ArrayList<User>();
		list = userService.selectIllUser(userNo);
		return list;
	}

	@RequestMapping(value = "/removeIllUser", method = RequestMethod.GET)
	public String removeIllUser(int userId) {
		if (userService.removeIllUser(userId)) {
			return "redirect:/checkIllUser";
			//return "redirect:/selectIllUser";
		} else {
			return "false";
		}
	}

	@RequestMapping(value = "/removeUserProject", method = RequestMethod.GET)
	public String removeUserProject(int userId, int projectId, Model model) {
		if (userService.removeUserProject(userId, projectId)) {
			model.addAttribute("userId", userId);
			return "redirect:/updateUserProject";
		} else {
			return "false";
		}
	}

	@RequestMapping(value = "/removeUserDisesase", method = RequestMethod.GET)
	public String removeUserDisesase(int userId, int diseaseId, Model model) {
		if (userService.removeUserDisesase(userId, diseaseId)) {
			model.addAttribute("userId", userId);
			return "redirect:/updateUserDisease";
		} else {
			return "false";
		}
	}

	// 对于疾病和用户中间表的操作
	@RequestMapping(value = "/addIllUserRroject", method = RequestMethod.POST)
	public String addUserRroject(int userId, String projectName, int projectTime, Model model) {
		if (userService.addUserRroject(userId, projectName, projectTime)) {
			model.addAttribute("userId", userId);
			return "redirect:/updateUserProject";
		} else {
			return "false";
		}
	}

	@RequestMapping(value = "/addIllUserDisease", method = RequestMethod.POST)
	public String addUserDisease(int userId, String diseaseName, Model model) {
		if (userService.addUserDisease(userId, diseaseName)) {
			model.addAttribute("userId", userId);
			return "redirect:/updateUserDisease";
		} else {
			model.addAttribute("userId", userId);
			model.addAttribute("msgfffffffffff", "添加失败，用户疾病已存在!!");
			return "redirect:/updateUserDisease";
		}
	}

	@RequestMapping(value = "/selectAdmin", method = RequestMethod.GET)
	public String adminselect() {
		return "selectAdmin";
	}

	@RequestMapping(value = "/addAdmin", method = RequestMethod.GET)
	public String addAdmin() {
		return "addAdmin";
	}

	@RequestMapping(value = "/updateUserDisease", method = RequestMethod.GET)
	public String updateUserDisease(int userId, Model model) {
		List<AllAttribute> list = new ArrayList<>();
		list = userService.selectDiseaseByUserId(userId);
		model.addAttribute("userDisease", list);
		model.addAttribute("userId", userId);
		return "updateUserDisease";
	}

	@RequestMapping(value = "/updateUserProject", method = RequestMethod.GET)
	public String updateUserProject(int userId, Model model) {
		List<AllAttribute> list = new ArrayList<>();
		list = userService.selectProjectByUserId(userId);
		model.addAttribute("userProject", list);
		model.addAttribute("userId", userId);
		return "updateUserProject";
	}

	@RequestMapping(value = "/isExistIllUser", method = RequestMethod.GET)
	public @ResponseBody int isExistIllUser(String userNo) {
		return userService.isExist(userNo);
	}

	@RequestMapping(value = "/addIllUser2", method = RequestMethod.POST)
	public String updateUserDisease(int userId, String diseaseName, Model model) {
		List<Disease> disease = new ArrayList<Disease>(); 
		disease = userService.getAllDiseaseName();
		if (userService.addIllUserDisease(userId, diseaseName) == true) {
			model.addAttribute("disease", disease);
			model.addAttribute("userId", userId);
			model.addAttribute("message", "添加成功！！");
			return "addIllUser2";
		} else {
			
			model.addAttribute("disease", disease);
			model.addAttribute("userId", userId);
			model.addAttribute("message", "添加失败,可能是因为用户患病已存在！！");
			return "addIllUser2";
		}
	}

	@RequestMapping(value = "/addIllUser3", method = RequestMethod.GET)
	public String addIllUser3(int userId, Model model) {
		List<Project> project = new ArrayList<>();
		project = userService.getAllProjectName();
		model.addAttribute("project", project);
		model.addAttribute("userId", userId);
		return "addIllUser3";
	}

	@RequestMapping(value = "/addIllUser3", method = RequestMethod.POST)
	public String addIllUser3(int userId, String projectName, int time, Model model) {
		List<Project> project = new ArrayList<>();
		project = userService.getAllProjectName();
		if (userService.addIllUserRroject(userId, projectName, time) == true) {
			model.addAttribute("project", project);
			model.addAttribute("userId", userId);
			model.addAttribute("message", "添加成功！！");
			return "addIllUser3";
		} else {
			model.addAttribute("project", project);
			model.addAttribute("userId", userId);
			model.addAttribute("message", "添加失败,可能是因为重复添加了！！");
			return "addIllUser3";
		}
	}

	@RequestMapping(value = "/calculation", method = RequestMethod.POST)
	public String calculation(String userNo, Model model) {
		List<Double> list = new ArrayList<Double>();
		list = userService.calculation(userNo);
		if (list.size() > 0) {
			User user = userService.getUserNameAndNo(userNo);
			model.addAttribute("userName", user.getUserName());
			model.addAttribute("userNo", user.getUserNo());
			model.addAttribute("baoxiao", list.get(0));
			model.addAttribute("zifei", list.get(1));
			model.addAttribute("shiji", list.get(2));
			return "cost";
		} else {
			model.addAttribute("msg", "没有此卡号！！");
			return "head2";
		}
	}

	@RequestMapping(value = "/back", method = RequestMethod.GET)
	public String back() {
		return "head2";
	}

	@RequestMapping(value = "/pro_add3", method = RequestMethod.POST)
	public String pro_add3(String projectNo, String drugsName, int amount, Model model) {
		int projectId = userService.getProjectIdByNo(projectNo).getProject_id();
		List<Drugs> drugs = new ArrayList<Drugs>();
		drugs = userService.getAllDrugsName();
		if(userService.addProjectDrugs(projectId, drugsName, amount)){
		model.addAttribute("drugs", drugs);
		model.addAttribute("projectNo", projectNo);
		model.addAttribute("msg", "添加成功！！");
		return "addPro3";
		}else{
			model.addAttribute("drugs", drugs);
			model.addAttribute("projectNo", projectNo);
			model.addAttribute("msg", "添加失败,可能是因为药品添加重复了！！");
			return "addPro3";
		}
	}

	@RequestMapping(value = "/pro_add22", method = RequestMethod.GET)
	public String pro_add2(String projectNo, Model model) {
		List<Drugs> drugs = new ArrayList<Drugs>();
		drugs = userService.getAllDrugsName();
		model.addAttribute("drugs", drugs);
		model.addAttribute("projectNo", projectNo);
		return "addPro3";
	}

	@RequestMapping(value = "/fanhui", method = RequestMethod.GET)
	public String fanhui() {

		return "pro_add";
	}

	@RequestMapping(value = "/ducProjectDrugs", method = RequestMethod.GET)
	public String ducProjectDrugs(int projectId, Model model) {
		List<AllAttribute> drugs = new ArrayList<>();
		drugs = userService.getDrugsByProjectId(projectId);
		List<AllAttribute> Drugs =userService.selectdrugN();
		model.addAttribute("Drugs", Drugs);
		model.addAttribute("projectId", projectId);
		model.addAttribute("drugs", drugs);
		return "project_drugs";
	}
	
	//验证药品名字是否重复
	@RequestMapping(value = "/check_druname", method = RequestMethod.GET)
	public @ResponseBody AllAttribute check_druname(String drugsName) {
		AllAttribute ckdruname=userService.ckdruname(drugsName);
		return ckdruname;
	}
	

	@RequestMapping(value = "/getProject", method = RequestMethod.GET)
	public @ResponseBody List<Project> getProject(String projectNo) {
		List<Project> list = new ArrayList<Project>();
		list = userService.getLikeProject(projectNo);
		return list;
	}

	@RequestMapping(value = "/proDrugsInsert", method = RequestMethod.POST)
	public String proDrugsInsert(int projectId, String drugsName, int amount, Model model) {
		//System.out.println(projectId + "======" + drugsName + "======" + amount);
		if(userService.addProjectDrugs(projectId, drugsName, amount)){
			model.addAttribute("xxx", "添加成功!!");
			model.addAttribute("projectId", projectId);
			return "redirect:/ducProjectDrugs111";
		}else{
			model.addAttribute("xxx", "添加失败，可能是因为添加重复了！");
			model.addAttribute("projectId", projectId);
			return "redirect:/ducProjectDrugs111";
		}
	}
	
	@RequestMapping(value = "/ducProjectDrugs111", method = RequestMethod.GET)
	public String ducProjectDrugs(int projectId, Model model,String xxx) {
		List<AllAttribute> drugs = new ArrayList<>();
		drugs = userService.getDrugsByProjectId(projectId);
		List<AllAttribute> Drugs =userService.selectdrugN();
		model.addAttribute("xxx", xxx);
		model.addAttribute("Drugs", Drugs);
		model.addAttribute("projectId", projectId);
		model.addAttribute("drugs", drugs);
		return "project_drugs";
	}
	

	@RequestMapping(value = "/removeProDrugs", method = RequestMethod.GET)
	public String removeProDrugs(int projectId, int drugsId, Model model) {
		userService.removeProDrugs(projectId, drugsId);
		model.addAttribute("projectId", projectId);
		return "redirect:/ducProjectDrugs";
	}

	@RequestMapping(value = "/removeProject", method = RequestMethod.GET)
	public String removeProject(int projectId, Model model) {
		userService.delProject(projectId);
		return "redirect:/pro_selectAll";
	}

	// 验证管理员添加时编号是否重复
	@RequestMapping(value = "/checkuser_no", method = RequestMethod.GET)
	public @ResponseBody User checkuserno(String userNo) {
		User checkuno = userService.select_userNo(userNo);
		// System.out.println(checkuno);
		return checkuno;
	}

	@RequestMapping(value = "/isExistUser2", method = RequestMethod.GET)
	public @ResponseBody int isExistUser2(String userNo) {
		return userService.isExistUser2(userNo);
	}

	@RequestMapping(value = "/isExistProjectNo", method = RequestMethod.GET)
	public @ResponseBody Project isExistProjectNo(String projectNo) {
		return userService.isExistProjectNo(projectNo);
	}

	@RequestMapping(value = "/isExistProjectName", method = RequestMethod.GET)
	public @ResponseBody Project isExistProjectName(String projectName) {
		return userService.isExistProjectName(projectName);
	}

	@RequestMapping(value = "/isExistDiseaseName", method = RequestMethod.GET)
	public @ResponseBody Disease isExistDiseaseName(String diseaseName) {
		return userService.isExistDiseaseName(diseaseName);
	}

	@RequestMapping(value = "/pro_add1", method = RequestMethod.POST)
	public String pro_add1(String projectno, String projectname, String projectlevel, Model model) {
		userService.addProject(projectno, projectname, projectlevel);
		List<Armarium> arm = new ArrayList<Armarium>();
		arm = userService.getAllArmName();
		model.addAttribute("arm", arm);
		model.addAttribute("projectNo", projectno);
		return "addPro2";
	}

	@RequestMapping(value = "/pro_add2", method = RequestMethod.POST)
	public String pro_add2(String projectNo, String armName, int proArmTime, Model model) {
		List<Armarium> arm = new ArrayList<Armarium>();
		arm = userService.getAllArmName();
		if (userService.addProjectArm(projectNo, armName, proArmTime)) {
			model.addAttribute("arm", arm);
			model.addAttribute("projectNo", projectNo);
			model.addAttribute("msg", "添加成功!!!");
			return "addPro2";
		} else {
			model.addAttribute("arm", arm);
			model.addAttribute("projectNo", projectNo);
			model.addAttribute("msg", "添加失败，可能是因为此项目重复添加!!");
			return "addPro2";
		}
	}

	@RequestMapping(value = "/isExistArmName", method = RequestMethod.GET)
	public @ResponseBody Armarium isExistArmName(String armName) {
		return userService.isExistArmariumName(armName);

	}
	
	@RequestMapping(value = "/addIllUser1", method = RequestMethod.POST)
	public String addIllUser1(String userNo, Model model) {
		int userId = userService.selectUserIdByUserNo(userNo).getUserId();
		List<Disease> disease = new ArrayList<Disease>(); 
		
		disease = userService.getAllDiseaseName();
		model.addAttribute("disease", disease);
		model.addAttribute("userId", userId);
		return "addIllUser2";
	}

}
