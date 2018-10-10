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
	
	//시설 추가
	public int healthclubsFacilitiesAdd(HealthclubsFacilities healthclubsFacilities) {
		System.out.println("healthclubsFacilitiesAdd");
		return healthclubsFacilitiesDao.healthclubsFacilitiesinsert(healthclubsFacilities);
	}
	
	//시설 리스트
	public List<HealthclubsFacilities> healthclubsFacilitiesView(){
		System.out.println("healthclubsFacilitiesView");
		return healthclubsFacilitiesDao.healthclubsFacilitiesSelectList();
	}
	//특정 시설 조회
	public HealthclubsFacilities healthclubsFacilitiesmodify(int healthclubs_facilities_no) {
		System.out.println("healthclubsFacilitiesmodify");
		return healthclubsFacilitiesDao.healthclubsFacilitiesUpdate(healthclubs_facilities_no);
	}
	
	//시설 수정
	public int healthclubsFacilitiesmodify(HealthclubsFacilities healthclubsFailities) {
		System.out.println("healthclubsFacilitiesmodify");
		return healthclubsFacilitiesDao.healthclubsFacilitiesUpdate(healthclubsFailities);
	}
	
	//시설 삭제
	public int healthclubsFacilitiesremove(HealthclubsFacilities healthclubsFailities) {
		System.out.println("healthclubsFacilitiesremove");
		return healthclubsFacilitiesDao.healthclubsFacilitiesDelete(healthclubsFailities);
	}
}
