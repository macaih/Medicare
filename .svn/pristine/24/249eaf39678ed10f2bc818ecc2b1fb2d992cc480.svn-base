package com.neusoft.hostpital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.hostpital.service.ArmariumService;
import com.neusoft.hostpital.vo.Armarium;

@Controller
public class ArmariumController {
	
	@Autowired
	private ArmariumService aservices;
	

	//登录方法http://127.0.0.1:8080/Medicare
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String arm_login(){
		return "login";
	}
	
	
	//跳转页面index 后台管理
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String arm_index(){
		return "index";
	}
	//跳转head页面
	@RequestMapping(value="/head",method=RequestMethod.GET)
	public String arm_head(){
		return "head";
	}
	//跳转main页面
	@RequestMapping(value="/main",method=RequestMethod.GET)
	public String arm_main(){
		return "main";
	}
	//跳转left页面
	@RequestMapping(value="/left",method=RequestMethod.GET)
	public String arm_left(){
		return "left";
	}
	
	
	//head2页面上的一系列跳转
	@RequestMapping(value="/head2",method=RequestMethod.GET)
	public String arm_head2(){
		return "head2";
	}
	//跳转about页面
	@RequestMapping(value="/about",method=RequestMethod.GET)
	public String arm_about(){
		return "about";
	}
	//跳转services页面
	@RequestMapping(value="/services",method=RequestMethod.GET)
	public String arm_services(){
		return "services";
	}
	//跳转news页面
	@RequestMapping(value="/news",method=RequestMethod.GET)
	public String arm_news(){
		return "news";
	}
	//跳转contact页面
	@RequestMapping(value="/contact",method=RequestMethod.GET)
	public String arm_contact(){
		return "contact";
	}

	//测试检索数据库返回列表功能
	@RequestMapping(value="/arm_stest",method=RequestMethod.GET)
	public String arm_stest(){
		return "arm_stest";
	}
	
	
	
	//医疗设备添加数据页面 跳转
	@RequestMapping(value="/arm_insert",method=RequestMethod.GET)
	public String arm_insert(){
		return "arm_insert";
	}
	//添加数据
	@RequestMapping(value="/arm_insert1",method=RequestMethod.POST)
	public String arm_insert(Armarium arm){
		aservices.insertOne(arm);
		return "redirect:/arm_insert";
	}
	
	//医疗设备添加数据验证编号是否重复
	@RequestMapping(value="/checkarm_no",method=RequestMethod.GET)
	public @ResponseBody Armarium checkarmno(String armariumNo){
		System.out.println(armariumNo);
		Armarium checkno=aservices.select_armNo(armariumNo);
		return checkno;
	}
	
	//查询
	@RequestMapping(value="/arm_selectAll",method=RequestMethod.GET)
	public String arm_showAll(Model model){
		List<Armarium> list=aservices.selectAll();
		model.addAttribute("list", list);
		return "arm_selectAll";
	}
	//json 模糊查询
	@RequestMapping(value = "arm_getJson", method = RequestMethod.GET)
	public @ResponseBody List<Armarium> arm_showone(String armariumNo){		
		List<Armarium> arm=aservices.selectOne1(armariumNo);
		return arm;
	}
	
	//修改
	@RequestMapping(value="/arm_update" ,method=RequestMethod.GET)
	public String arm_updateArm(int armariumId,Model model){
		Armarium arm=aservices.selectOne(armariumId);
		model.addAttribute("arm", arm);
		return "arm_update";
	}
	

	
	//进行修改
	@RequestMapping(value="/arm_update1" ,method=RequestMethod.GET)
	public String arm_updateArm(Armarium arm){
		//String s="arm_update?armariumId="+arm.getArmariumId();
		//System.out.println(s);
		String s1="redirect:arm_selectAll";
		//boolean st=aservices.updateOne(arm);
			aservices.updateOne(arm);		
			return s1;
	}
	
	//进行删除
	@RequestMapping(value="/arm_delete" ,method=RequestMethod.GET)
	public String arm_deleteArm(int armariumId){
		aservices.deletepro_arm(armariumId);
		aservices.deletearm(armariumId);
		return "redirect:arm_selectAll";
	}
	
	
}
