package com.neusoft.hostpital.dao;

import java.util.List;

import com.neusoft.hostpital.vo.Hospital;

public interface HospitalMapper {

	void addHospital(Hospital hospital);

	boolean delectHospital(int id);

	boolean updateHospital(Hospital hospital);

	List<Hospital> selectAllHospital();

	Hospital selectHospitalById(int id);

	List<Hospital> selectOneH(String hospitalNo);
	
	Hospital select_hospitalNo(String hospitalNo);
}
