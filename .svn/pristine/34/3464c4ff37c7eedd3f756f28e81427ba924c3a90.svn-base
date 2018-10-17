package com.neusoft.hostpital.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.hostpital.dao.HospitalMapper;
import com.neusoft.hostpital.service.HospitalService;
import com.neusoft.hostpital.vo.Drugs;
import com.neusoft.hostpital.vo.Hospital;

@Service
public class HospitalServiceImpl implements HospitalService {
	
		@Autowired
		private HospitalMapper hospitalMapper;
		
		@Override
		public void addHospital(Hospital hospital){
			hospitalMapper.addHospital(hospital);
		}
		
		@Override
		public boolean delectHospital(int id) {
			try {
				hospitalMapper.delectHospital(id);
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		
		@Override
		public boolean updateHospital(Hospital hospital) {
			try {
				hospitalMapper.updateHospital(hospital);
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		
		@Override
		public List<Hospital> selectAllHospital() {
			return hospitalMapper.selectAllHospital();
		}

		@Override
		public Hospital selectHospitalById(int id) {
			
			return hospitalMapper.selectHospitalById(id);
		}
		
		@Override
		public List<Hospital> selectOneH(String hospitalNo) {
			String hospitalNo1='%'+hospitalNo+'%';
			return hospitalMapper.selectOneH(hospitalNo1);
		}
		
		@Override
		public Hospital select_hospitalNo(String hospitalNo) {
			return hospitalMapper.select_hospitalNo(hospitalNo);
		}
}
