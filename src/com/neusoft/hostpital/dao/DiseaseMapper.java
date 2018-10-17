package com.neusoft.hostpital.dao;

import java.util.List;

import com.neusoft.hostpital.vo.Disease;


public interface DiseaseMapper {
	boolean add(Disease info);
	boolean delete(int disease_id);
	void deletemiddle(int disease_id);
	boolean updateOne(Disease disease);
	List<Disease> selectAll();
	Disease selectOne(int disease_id);
	List<Disease> selectOne1(String disease_no);
	Disease selectdis_no(String no); 
}
