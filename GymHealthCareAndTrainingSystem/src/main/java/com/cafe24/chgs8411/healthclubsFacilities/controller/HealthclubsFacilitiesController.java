package com.cafe24.chgs8411.healthclubsFacilities.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.chgs8411.healthclubsFacilities.service.HealthclubsFacilities;
import com.cafe24.chgs8411.healthclubsFacilities.service.HealthclubsFacilitiesDao;
import com.cafe24.chgs8411.healthclubsFacilities.service.HealthclubsFacilitiesService;

@Controller
public class HealthclubsFacilitiesController {

	@Autowired
	private HealthclubsFacilitiesService healthclubsFacilitiesService;
	
	//시설관리 등록 폼 
	@RequestMapping(value="/healthclubsFacilitiesInsert",method=RequestMethod.GET)
	public String HealthclubsFacilitiesInsert() {
		System.out.println("HealthclubsFacilitiesInsert");
		return "healthclubsFacilities/healthclubsFacilitiesInsert";
	}
	
	//시설관리 등록 처리
	@RequestMapping(value="/healthclubsFacilitiesInsert",method=RequestMethod.POST)
	public String HealthclubsFacilitiesInsert(HealthclubsFacilities healthclubsFacilities) {
		healthclubsFacilitiesService.healthclubsFacilitiesAdd(healthclubsFacilities);
		return "redirect:/healthclubsFacilitiesSearchList";
	}
	
	@RequestMapping(value="/healthclubsFacilitiesSearchList",method=RequestMethod.GET)
	public String HealthclubsFacilitiesView(Model model) {
		List<HealthclubsFacilities> list=healthclubsFacilitiesService.healthclubsFacilitiesView();
		model.addAttribute("list", list);
		return "healthclubsFacilities/healthclubsFacilitiesSearchList";
	}
	
	@RequestMapping(value="/asdfasdfadsw",method=RequestMethod.GET)
	public String HealthclubsFacilities(Model model) {
		List<HealthclubsFacilities> list=healthclubsFacilitiesService.healthclubsFacilitiesView();
		model.addAttribute("list", list);
		return "healthclubsFacilities/healthclubsFacilitiesSearchList";
	}
	
}
