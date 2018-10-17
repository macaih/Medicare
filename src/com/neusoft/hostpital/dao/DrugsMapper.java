package com.neusoft.hostpital.dao;

import java.util.List;

import com.neusoft.hostpital.vo.Drugs;

public interface DrugsMapper {
	
	void addDrugs(Drugs drugs);
	boolean delectProject_Drugs(int id);
	boolean delectDrugs(int id);
	boolean updateDrugs(Drugs drugs);
	List<Drugs> selectAllDrugs();
	Drugs selectDrugsById(int id);
	List<Drugs> selectOne11(String drugsNo);
	Drugs select_drugsNo(String drugsNo);
}
