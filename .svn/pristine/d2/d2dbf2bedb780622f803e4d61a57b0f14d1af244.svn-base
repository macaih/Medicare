package com.neusoft.hostpital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neusoft.hostpital.service.User_ProjectService;
import com.neusoft.hostpital.vo.User_Project;

@Controller
public class User_ProjectController {

	@Autowired
	private User_ProjectService user_ProjectService;

	@RequestMapping(value = "/up_add", method = RequestMethod.GET)
	public String addUserProject(Model model) {
		List<User_Project> list = user_ProjectService.selectAllUserId();
		List<User_Project> list1 = user_ProjectService.selectAllProjectId();
		model.addAttribute("userId", list);// 传值
		model.addAttribute("projectId", list1);
		return "up_add";// 跳转页面
	}

	// 显示所有数据
	@RequestMapping(value = "/up_select", method = RequestMethod.GET)
	public String showAll(Model model) {
		List<User_Project> list = user_ProjectService.selectAllUserProject();
		model.addAttribute("list", list);
		return "up_select";
	}

	// 添加数据

	@RequestMapping(value = "/addUserProject", method = RequestMethod.POST)
	public String regUser(User_Project user_Project) {
		user_ProjectService.save(user_Project);
		return "redirect:/up_select";
	}
	
	// 根据用户名删除某条数据
		@RequestMapping(value = "/delete", method = RequestMethod.GET)
		public String deleteUserProject(int id) {
			user_ProjectService.removeUserProject(id);
			return "redirect:/up_select";
		}
		
		// 根据名称查询某条数据
		@RequestMapping(value = "/update", method = RequestMethod.GET)
		public String update(int id, Model model) {
			User_Project user_Project = user_ProjectService.selectUserProjectById(id);
			model.addAttribute("user_Project", user_Project);
			return "up_update";
		}
		// 修改数据
		@RequestMapping(value = "/update", method = RequestMethod.POST)
		public String update(User_Project user_Project) {
			user_ProjectService.updateUserProject(user_Project);
			return "redirect:/up_select";
		}
}
