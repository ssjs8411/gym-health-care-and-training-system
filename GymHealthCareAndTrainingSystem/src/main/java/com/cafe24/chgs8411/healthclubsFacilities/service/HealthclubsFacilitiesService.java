package com.cafe24.chgs8411.healthclubsFacilities.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class HealthclubsFacilitiesService {

	@Autowired
	private HealthclubsFacilitiesDao healthclubsFacilitiesDao;
	
	//�ü� �߰�
	public int healthclubsFacilitiesAdd(HealthclubsFacilities healthclubsFacilities) {
		System.out.println("healthclubsFacilitiesAdd");
		return healthclubsFacilitiesDao.healthclubsFacilitiesinsert(healthclubsFacilities);
	}
	
	//�ü� ����Ʈ
	public List<HealthclubsFacilities> healthclubsFacilitiesView(){
		System.out.println("healthclubsFacilitiesView");
		return healthclubsFacilitiesDao.healthclubsFacilitiesSelectList();
	}
	//Ư�� �ü� ��ȸ
	public HealthclubsFacilities healthclubsFacilitiesmodify(int healthclubs_facilities_no) {
		return healthclubsFacilitiesDao.healthclubsFacilitiesUpdate(healthclubs_facilities_no);
	}
	
	//�ü� ����
	public int healthclubsFacilitiesmodify(HealthclubsFacilities healthclubsFailities) {
		return healthclubsFacilitiesDao.healthclubsFacilitiesUpdate(healthclubsFailities);
	}
}
