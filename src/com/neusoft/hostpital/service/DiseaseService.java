package com.neusoft.hostpital.service;

import java.util.List;

import com.neusoft.hostpital.vo.Armarium;
import com.neusoft.hostpital.vo.Disease;


public interface DiseaseService  {

	boolean add(Disease info);
	boolean delete(int disease_id);
	boolean updateOne(Disease disease);
	List<Disease> selectAll();
	Disease selectOne(int disease_id);
	List<Disease> selectOne1(String disease_no);
	Disease selectdis_no(String no); 
}
