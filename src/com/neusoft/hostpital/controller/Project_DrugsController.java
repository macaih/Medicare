package com.neusoft.hostpital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.neusoft.hostpital.service.Project_DrugsService;
import com.neusoft.hostpital.vo.Drugs;
import com.neusoft.hostpital.vo.Project;
import com.neusoft.hostpital.vo.Project_Drugs;





@Controller
public class Project_DrugsController {
	
	@Autowired
	private Project_DrugsService project_drugsService;
	
	  
	//跳转添加界面
	@RequestMapping(value = "/addProject_Drugs", method = RequestMethod.GET)
	public String reg() {

		return "addProject_Drugs";
	}
	
	
	// 添加数据
	@RequestMapping(value = "/addProject_Drugs", method = RequestMethod.POST)
			public String reg(Project_Drugs project_drugs) {
		project_drugsService.save(project_drugs);
				return "addProject_Drugs";
			}
	
	
	
	// 显示项目所有数据
	@RequestMapping(value = "/showAll", method = RequestMethod.GET)
	public String showAll(Model model) {
		List<Project> list = project_drugsService.selectAllProject();
		model.addAttribute("list", list);
		return "findproject1";
	}
	//显示项目所用药物
	@RequestMapping(value = "/drugsdetails", method = RequestMethod.GET)
	public String update(int id, Model model) {
		System.out.println(id);	
		List<Drugs> drugs = project_drugsService.selectDrugsById(id);
		
		for (Drugs drugs2 : drugs) {
			System.out.println(drugs2.getProject_id());
		}
		model.addAttribute("drugs", drugs);
		return "drugsdetails";
	}
	
	// 显示项目药品链接表所有数据
		@RequestMapping(value = "/showAll1", method = RequestMethod.GET)
		public String selectDrugsName(Model model1,Model model)
		{
		
			List<Project_Drugs> list1 = project_drugsService.selectDrugsName();
			model1.addAttribute("list1", list1);
			List<Project> list =project_drugsService.selectAllProject();
			model.addAttribute("list", list);
			return "project_drugs";
		}
    
		
		// 根据名称查询某条数据
			@RequestMapping(value = "/updateProjectDrugs", method = RequestMethod.GET)
			 public String updateProjectDrugs(int id, Model model) {
			 Project_Drugs project_drugs = project_drugsService.selectProdrById(id);
			 model.addAttribute("project_drugs",project_drugs);
			 return "updateProjectDrugs";
			}
		 
	
	  //修改数据
		@RequestMapping(value = "/updateProjectDrugs", method = RequestMethod.POST)
		public String updateProjectDrugs(Project_Drugs project_drugs) {
			project_drugsService.updateProjectDrugs(project_drugs);
		
		return "redirect:/showAll1";
			}
		

		
		//删除中间表数据
		@RequestMapping(value = "/pro_dru_delete", method = RequestMethod.GET)
		public String deletepro_dru(int project_id,int drugs_id,Model model) {
			
			System.out.println(project_id+"sfdasdfas"+drugs_id);
			project_drugsService.removeProDru(project_id, drugs_id);
			model.addAttribute("project_id", project_id);
			return "redirect:/showAll1";
		}
	
	
	
	
	
	

}
