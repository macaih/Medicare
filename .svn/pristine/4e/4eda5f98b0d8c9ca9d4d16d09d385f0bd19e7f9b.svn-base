package com.neusoft.hostpital.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.hostpital.dao.DiseaseMapper;
import com.neusoft.hostpital.service.DiseaseService;
import com.neusoft.hostpital.vo.Armarium;
import com.neusoft.hostpital.vo.Disease;


@Service
public class DiseaseServiceimpl implements DiseaseService {
	@Autowired
	private DiseaseMapper dao;
	
	@Override
	// 增加服务,实现服务接口在方法
	public boolean add(Disease info) {
		try{
		dao.add(info);
		return true;
	}catch(Exception e){
		e.printStackTrace();
	}
	return false;
	}
	
	@Override
	public boolean delete(int disease_id) {
		try{
			dao.deletemiddle(disease_id);
			dao.delete(disease_id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
		
		
	}

	@Override
	public List<Disease> selectAll() {
		
		return dao.selectAll();
	}



	@Override
	public Disease selectOne(int disease_id) {
		dao.selectOne(disease_id);
		return dao.selectOne(disease_id);
	}

	@Override
	public boolean updateOne(Disease disease) {
		try {
		
 		dao.updateOne(disease);
			
			return true;
		} catch (Exception e) {
			
		e.printStackTrace();
		}
		return false;
	}

	
	
	public List<Disease> selectOne1(String disease_id) {
		String disease_id1='%'+disease_id+'%';
		return dao.selectOne1(disease_id1);	
	}
	
	@Override
	public Disease selectdis_no(String no) {      	
		return dao.selectdis_no(no);
	}
}
