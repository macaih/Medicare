package com.neusoft.hostpital.serviceimpl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.hostpital.dao.ArmariumMapper;
import com.neusoft.hostpital.service.ArmariumService;
import com.neusoft.hostpital.vo.Armarium;
import com.neusoft.hostpital.vo.User;

@Service
public class ArmariumServiceImpl implements ArmariumService{
	
	@Autowired
	private ArmariumMapper armariumMapper;
	
	@Override
	public boolean insertOne(Armarium arm) {
		if(arm.getArmariumPrice()==null||arm.getArmariumNo()==""||arm.getArmariumName()==""){
		try{
			return false;
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
		}
		else{
			if(arm.getArmariumPrice()>0&&arm.getArmariumPrice()!=null&&arm.getArmariumNo()!=""&&arm.getArmariumName()!=""){
				armariumMapper.insertOne(arm);
				}
				else{					
					return false;
				}
			return false;
		}
		
	}

	@Override
	public boolean deletepro_arm(int armariumId) {
		try {
			armariumMapper.deletepro_arm(armariumId);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean updateOne(Armarium arm) {	
		if(arm.getArmariumPrice()!=null&&arm.getArmariumName()!=""&&arm.getArmariumPrice()>0){
		try {			
			armariumMapper.updateOne(arm);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
		}
		else{
			return false;
		}
	}

	@Override
	public List<Armarium> selectAll() {
		
		return armariumMapper.selectAll();
	}

	@Override
	public Armarium selectOne(int id) {
		
		return armariumMapper.selectOne(id);
	}

	@Override
	public boolean deletearm(int armariumId) {
		try {
			armariumMapper.deletearm(armariumId);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<Armarium> selectOne1(String armariumNo) {
		String armariumNo1='%'+armariumNo+'%';
		return armariumMapper.selectOne1(armariumNo1);
	}

	@Override
	public Armarium select_armNo(String armariumNo) {
		return armariumMapper.select_armNo(armariumNo);
		
	}



}

