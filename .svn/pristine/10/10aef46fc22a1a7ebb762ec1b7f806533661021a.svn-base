
package com.neusoft.hostpital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.hostpital.service.DiseaseService;
import com.neusoft.hostpital.vo.Armarium;
import com.neusoft.hostpital.vo.Disease;



@Controller 
public class DiseaseController{

	@Autowired
	private DiseaseService diseaseServurcsinterface;

	// 添加服务跳转页面
	@RequestMapping(value = "/dis_insert", method = RequestMethod.GET)
	public String dis_insert() {

		return  "/dis_insert";

	}

	//json 模糊查询
		@RequestMapping(value = "dis_getJson.do", method = RequestMethod.GET)
		public @ResponseBody List<Disease> arm_showone(String disease_no,Model model){		
			System.out.println(disease_no+"a");
			List<Disease> dis=diseaseServurcsinterface.selectOne1(disease_no);
			model.addAttribute("dis", dis);
			return dis;
		}
	
	//调用添加方法
	@RequestMapping(value="/dis_insert1",method=RequestMethod.POST)
	public String insert(Disease info,Model model){
		if(info.getDisease_no()==""||info.getDisease_name()==""){
			return "redirect:dis_selectAll"; 
		}else
		{
		diseaseServurcsinterface.add(info);
		return "redirect:/dis_insert";
		}
		
		}
	
	
	//调用全查询方法
	@RequestMapping(value="/dis_selectAll",method=RequestMethod.GET)
	public String dis_selectAll(Model model){
		List<Disease> list=diseaseServurcsinterface.selectAll();
		//System.out.println(list.size());
		model.addAttribute("list", list);
		return "dis_selectAll";
	}

	//单查询跳转
	@RequestMapping(value="/dis_selectOne",method=RequestMethod.GET)
		public String arm_selectOne(){
			return "dis_selectOne";
		}
			
	//调用单查询方法
	@RequestMapping(value="/dis_showOne",method=RequestMethod.POST)
	public String dis_showOne(int disease_no ,Model model){
		
			Disease disease=diseaseServurcsinterface.selectOne(disease_no);
			//System.out.println(disease.getDisease_name());
			model.addAttribute("dis_list", disease);
			return "dis_showone";
		
	}
	//修改服务页面跳转
	@RequestMapping(value="/dis_update" ,method=RequestMethod.GET)
	public String update(int  disease_id,Model model){
		Disease dis=diseaseServurcsinterface.selectOne(disease_id);
		model.addAttribute("dis", dis);
		return "dis_update";
	}
		//调用修改方法
	@RequestMapping(value="/dis_update1" ,method=RequestMethod.GET)
	public String update(Disease disease){	
		System.out.println(disease.getDisease_no());
		if(disease.getDisease_no()==""||disease.getDisease_name()==""){
			return "redirect:dis_selectAll"; 
		}else
		{
			diseaseServurcsinterface.updateOne(disease);
			return "redirect:dis_selectAll";
		}
		
	}

	//调用删除方法
	@RequestMapping(value="/dis_delete",method=RequestMethod.GET)
	public String delete_disease(int disease_id,Model model){
		try{
			diseaseServurcsinterface.delete(disease_id);
			return "redirect:dis_selectAll";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "redirect:dis_selectAll";
	}
	
	
	@RequestMapping(value="/dis_checkarm_no",method=RequestMethod.GET)
	public @ResponseBody Disease checkarmno(String disease_no){
		System.out.println(disease_no);
		Disease checkno=diseaseServurcsinterface.selectdis_no(disease_no);
		return checkno;
	}
	
	}


