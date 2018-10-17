package com.neusoft.hostpital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.hostpital.service.DrugsService;
import com.neusoft.hostpital.vo.Drugs;

@Controller
public class DrugsController {

	@Autowired
	private DrugsService drugsService;

	// �������ҳ����ת
	@RequestMapping(value = "/Drugs_add", method = RequestMethod.GET)
	public String add() {
		return "Drugs_add";
	}
	//�������ȡ��ת��
	@RequestMapping(value = "/Drugs_add1", method = RequestMethod.GET)
	public String Drugs_add1() {
		return "Drugs_add";
	}

	// �������
	@RequestMapping(value = "/Drugs_add", method = RequestMethod.POST)
	public String addDrugs(Drugs drugs) {
		drugsService.addDrugs(drugs);
		return "redirect:/Drugs_add";
	}
	
	//��֤ҩƷ���ʱ����Ƿ��ظ�
	@RequestMapping(value="/checkdrugs_no",method=RequestMethod.GET)
	public @ResponseBody Drugs checkdrugsno(String drugs_no){
		Drugs checkdno=drugsService.select_drugsNo(drugs_no);
		return checkdno;
	}
	
	// ��ʾ��������
	@RequestMapping(value = "/Drugs_sele", method = RequestMethod.GET)
	public String shoAllDrugs(Model model) {
		List<Drugs> list = drugsService.selectAllDrugs();
		model.addAttribute("list", list);
		return "Drugs_sele";
	}
	
	// json ģ����ѯ
	@RequestMapping(value = "drugs_getJson", method = RequestMethod.GET)
	public @ResponseBody List<Drugs> drugs_showone1(String drugs_no) {
		List<Drugs> drugs = drugsService.selectOne11(drugs_no);
		return drugs;
	}

	// �����û���ɾ��ĳ������
	@RequestMapping(value = "/deleteone", method = RequestMethod.GET)
	public String deleteoneDrugs(int id) {
		drugsService.delectProject_Drugs(id);
		drugsService.delectDrugs(id);
		return "redirect:/Drugs_sele";
	}

	// ����ID��ѯĳ������
	@RequestMapping(value = "/Drugs_update", method = RequestMethod.GET)
	public String selectoneDrugs(int id, Model model) {
		Drugs drugs = drugsService.selectDrugsById(id);
		model.addAttribute("drugs", drugs);
		return "Drugs_update";
	}

	// �޸�����
	@RequestMapping(value = "/Drugs_upadte", method = RequestMethod.GET)
	public String updateDrugs(Drugs drugs) {
		drugsService.updateDrugs(drugs);
		return "redirect:/Drugs_sele";
	}	
	//�����޸�
		@RequestMapping(value="/Drugs_updated" ,method=RequestMethod.GET)
		public String drugs_updateDrugs(Drugs drugs){
			if(drugs.getDrugs_name()==""||drugs.getDrugs_type()==""){
				return "redirect:Drugs_sele"; 
			}else
			{
				drugsService.updateDrugs(drugs);
				return "redirect:Drugs_sele";
			}
		}	

}
