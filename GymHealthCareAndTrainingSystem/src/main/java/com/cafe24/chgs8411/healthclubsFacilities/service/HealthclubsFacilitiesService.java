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
	
	public int healthclubsFacilitiesAdd(HealthclubsFacilities healthclubsFacilities) {
		System.out.println("healthclubsFacilitiesAdd");
		return healthclubsFacilitiesDao.healthclubsFacilitiesinsert(healthclubsFacilities);
	}
	
	public List<HealthclubsFacilities> healthclubsFacilitiesView(){
		System.out.println("healthclubsFacilitiesView");
		return healthclubsFacilitiesDao.healthclubsFacilitiesSelectList();
	}
}
