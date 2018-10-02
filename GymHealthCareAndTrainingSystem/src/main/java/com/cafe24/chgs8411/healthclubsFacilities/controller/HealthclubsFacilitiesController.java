package com.cafe24.chgs8411.healthclubsFacilities.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.chgs8411.healthclubsFacilities.service.HealthclubsFacilities;
import com.cafe24.chgs8411.healthclubsFacilities.service.HealthclubsFacilitiesDao;

@Controller
public class HealthclubsFacilitiesController {

	@Autowired
	private HealthclubsFacilitiesDao healthclubsfacilitiesDao;
	
	//시설관리 등록 폼 
	@RequestMapping(value="/healthclubsFacilitiesInsert",method=RequestMethod.GET)
	public String HealthclubsFacilitiesInsert() {
		System.out.println("HealthclubsFacilitiesInsert");
		return "healthclubsFacilities/healthclubsFacilitiesInsert";
	}
	
	//시설관리 등록 처리
	@RequestMapping(value="/healthclubsFacilitiesInsert",method=RequestMethod.POST)
	public String HealthclubsFacilitiesInsert(HealthclubsFacilities healthclubsFacilities) {
		System.out.println("HealthclubsFacilitiesInsert");
		return "healthclubsFacilities/healthclubsFacilitiesSearchList";
	}
}
