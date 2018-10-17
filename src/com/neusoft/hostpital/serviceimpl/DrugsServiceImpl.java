package com.neusoft.hostpital.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.hostpital.dao.DrugsMapper;
import com.neusoft.hostpital.service.DrugsService;
import com.neusoft.hostpital.vo.Drugs;

@Service
public class DrugsServiceImpl implements DrugsService {

	@Autowired
	private DrugsMapper drugsMapper;

	@Override
	public void addDrugs(Drugs drugs) {
		drugsMapper.addDrugs(drugs);
		
	}

	@Override
	public boolean delectDrugs(int id) {
		try {
			drugsMapper.delectDrugs(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean updateDrugs(Drugs drugs) {
		try {
			drugsMapper.updateDrugs(drugs);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<Drugs> selectAllDrugs() {
		return drugsMapper.selectAllDrugs();
	}

	@Override
	public Drugs selectDrugsById(int id) {

		return drugsMapper.selectDrugsById(id);
	}

	@Override
	public List<Drugs> selectOne11(String drugsNo) {
		String drugsNo1 = '%' + drugsNo + '%';
		return drugsMapper.selectOne11(drugsNo1);
	}

	@Override
	public boolean delectProject_Drugs(int id) {
		try {
			drugsMapper.delectProject_Drugs(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public Drugs select_drugsNo(String drugsNo) {
		return drugsMapper.select_drugsNo(drugsNo);
	}
}
