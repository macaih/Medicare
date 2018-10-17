package com.neusoft.hostpital.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.hostpital.service.ProjectService;
import com.neusoft.hostpital.serviceimpl.ProjectServiceImpl;
import com.neusoft.hostpital.vo.Armarium;
import com.neusoft.hostpital.vo.Hospital;
import com.neusoft.hostpital.vo.Project;
import com.neusoft.hostpital.vo.Project_Drugs;


@Controller
public class ProjectController {

	@Autowired
	private ProjectService projectService;

	
	@RequestMapping(value="/pro_add",method=RequestMethod.GET)
	public String pro_add(){
		return "pro_add";
	}
	
	//�������
	@RequestMapping(value="/pro_a",method=RequestMethod.POST)
	public String pro_add(Project pro){
		projectService.save(pro);
		return "redirect:/pro_add";
	}
	
	//ҽ����Ŀ���������֤����Ƿ��ظ�
		@RequestMapping(value="/checkarm_no1",method=RequestMethod.GET)
		public @ResponseBody Project checkarmno1(String project_no){
			System.out.println(project_no);
			Project checkno1=projectService.selectProject1(project_no);
			return checkno1;
		}
	
	//��ѯ
	@RequestMapping(value="/pro_selectAll",method=RequestMethod.GET)
	public String pro_showAll(Model model){
		List<Project> list=projectService.selectAllProject();
		model.addAttribute("list", list);
		return "pro_selectAll";
	}
	
	//����ѯ��ת
		/*@RequestMapping(value="/pro_selectOne",method=RequestMethod.GET)
		public String pro_selectOne(){
			return "pro_selectOne";
		}
		
		//����ѯ
		@RequestMapping(value="/pro_showone",method=RequestMethod.POST)
		public  String pro_showone(String project_no,Model model){
			Project pro=projectService.selectProject1(project_no);
			model.addAttribute("pro", pro);
			return "pro_showone";
		}
	*/
	
	
	@RequestMapping(value = "getJson1.do", method = RequestMethod.GET)
	public @ResponseBody Project pro_showone(String project_no){
		System.out.println(project_no);
		Project pro=projectService.selectProject1(project_no);
	//	System.out.println(pro);
		return pro;
	}
	
	//�޸�
	@RequestMapping(value="/pro_update" ,method=RequestMethod.GET)
	public String pro_updatePro(int project_id,Model model){
		Project pro=projectService.selectProjectById(project_id);
		model.addAttribute("pro", pro);
		return "pro_update";
	}

	//�����޸�
		@RequestMapping(value="/pro_update1" ,method=RequestMethod.GET)
		public String pro_updatePro(Project project){
			//String s="pro_update?project_id="+project.getProject_id();
			System.out.println(project.getProject_level());
			String s1="redirect:pro_selectAll";
			//boolean st=projectService.updateProject(project);
			projectService.updateProject(project);		
				return s1;
		}
		
    //ɾ��
	@RequestMapping(value="/removeProject" ,method=RequestMethod.POST)
	public String removeProject(int projectId){
		
		return "redirect:pro_selectAll";
	}
				
			
}
