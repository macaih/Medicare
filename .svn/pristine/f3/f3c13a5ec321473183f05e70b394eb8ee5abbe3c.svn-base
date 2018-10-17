package com.neusoft.hostpital.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.hostpital.service.Project_ArmariumService;
import com.neusoft.hostpital.vo.AllAttribute;
import com.neusoft.hostpital.vo.Project_Armarium;

@Controller
public class Project_ArmariumController {

	@Autowired
	private Project_ArmariumService project_armariumService;
	


	//跳转添加中间表数据页面
	@RequestMapping(value = "/pro_arm_insert", method = RequestMethod.GET)
	public String addpro_arm1() {
		
		return "pro_arm_add";
	}
	

	//添加中间表数据cz

	@RequestMapping(value = "/selectProArm", method = RequestMethod.GET)
	public String selectProArm(int projectId,Model model,String xxx) {
		List<AllAttribute> list = new ArrayList<>();
		list = project_armariumService.selectArmriumByProjectId(projectId);
		List<Project_Armarium> Arm=project_armariumService.selectarmName();
		model.addAttribute("Arm",Arm);
		model.addAttribute("proArm", list);
		model.addAttribute("projectId", projectId);
		return "pro_arm_selectAll";
	}
	

	@RequestMapping(value = "/selectProArm111", method = RequestMethod.GET)
	public String selectProArm111(int projectId,Model model,String xxx) {
		List<AllAttribute> list = new ArrayList<>();
		list = project_armariumService.selectArmriumByProjectId(projectId);
		List<Project_Armarium> Arm=project_armariumService.selectarmName();
		model.addAttribute("Arm",Arm);
		model.addAttribute("proArm", list);
		model.addAttribute("xxx", xxx);
		model.addAttribute("projectId", projectId);
		return "pro_arm_selectAll";
	}
	

	//验证设施名字是否重复
	@RequestMapping(value = "/check_armname", method = RequestMethod.GET)
	public @ResponseBody Project_Armarium check_armname(String Armarium_name) {
		System.out.println(Armarium_name);
		Project_Armarium ckarmname=project_armariumService.check_armname(Armarium_name);
		return ckarmname;
	}
	

	//跳转添加中间表数据页面
	@RequestMapping(value = "/pro_arm_insert1", method = RequestMethod.POST)
	public String addpro_arm(int projectId,String armariumName,int time,Model model) {
		//System.out.println(projectId);
		//System.out.println(armariumName);
		//System.out.println(time);
		if(project_armariumService.addProArm(projectId, armariumName, time)){
			model.addAttribute("xxx", "添加成功！！！");
			model.addAttribute("projectId", projectId);
			return "redirect:/selectProArm111";
		}else{
			model.addAttribute("xxx", "添加失败，可能是因为重复添加了");
			model.addAttribute("projectId", projectId);
			return "redirect:/selectProArm111";
		}
		
	}
	
	//删除中间表数据
	@RequestMapping(value = "/pro_arm_delete", method = RequestMethod.GET)
	public String deletepro_arm(int projectId,int armId,Model model) {
		project_armariumService.removeProArm(projectId, armId);
		model.addAttribute("projectId", projectId);
		return "redirect:/selectProArm";
	}
	
	@RequestMapping(value = "/pro_arm_selectAll", method = RequestMethod.GET)
	public String pro_arm_selectAll(int project_id,Model model) {	
		//System.out.println(project_id);
		List<Project_Armarium> proArm=project_armariumService.selectProjectname(project_id);

		model.addAttribute("proArm",proArm);
		model.addAttribute("projectId", project_id);
		return "pro_arm_selectAll";
	}
	
	@RequestMapping(value = "/pro_arm_ckname", method = RequestMethod.GET)
	public String pro_arm_ckname(String armariumName) {
		//System.out.println(armariumName);
		project_armariumService.getArmarium_id(armariumName);
		//System.out.println(project_armariumService.getArmarium_id(armariumName));
		return armariumName;	

	}
	
}