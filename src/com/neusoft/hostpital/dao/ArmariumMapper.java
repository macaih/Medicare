package com.neusoft.hostpital.dao;

import java.util.List;

import com.neusoft.hostpital.vo.Armarium;
import com.neusoft.hostpital.vo.User;

/*
 * ҽ���豸��Ĺ���ӿڽӿ�
 * 
 * */
public interface ArmariumMapper {
	boolean insertOne(Armarium arm);
	boolean deletepro_arm(int armariumId);
	boolean updateOne(Armarium arm);
	boolean deletearm(int armariumId);
	List<Armarium> selectAll();
	List<Armarium> selectOne1(String armariumNo);
	Armarium selectOne(int armariumId);
	Armarium select_armNo(String armariumNo);
	
}
