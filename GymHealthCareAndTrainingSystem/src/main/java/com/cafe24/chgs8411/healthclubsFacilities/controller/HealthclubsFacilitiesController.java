package com.cafe24.chgs8411.healthclubsFacilities.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.chgs8411.healthclubsFacilities.service.HealthclubsFacilities;
import com.cafe24.chgs8411.healthclubsFacilities.service.HealthclubsFacilitiesService;

@Controller
public class HealthclubsFacilitiesController {

	@Autowired
	private HealthclubsFacilitiesService healthclubsFacilitiesService;
	
	//�ü����� ��� �� 
	@RequestMapping(value="/healthclubsFacilitiesInsert",method=RequestMethod.GET)
	public String HealthclubsFacilitiesInsert() {
		System.out.println("HealthclubsFacilitiesInsert");
		return "healthclubsFacilities/healthclubsFacilitiesInsert";
	}
	
	//�ü����� ��� ó��
	@RequestMapping(value="/healthclubsFacilitiesInsert",method=RequestMethod.POST)
	public String HealthclubsFacilitiesInsert(HealthclubsFacilities healthclubsFacilities) {
		healthclubsFacilitiesService.healthclubsFacilitiesAdd(healthclubsFacilities);
		return "redirect:/healthclubsFacilitiesSearchList";
	}
	//�ü����� ����Ʈ
	@RequestMapping(value="/HealthclubsFacilitiesView",method=RequestMethod.GET)
	public String HealthclubsFacilitiesView(Model model) {
		List<HealthclubsFacilities> list=healthclubsFacilitiesService.healthclubsFacilitiesView();
		model.addAttribute("list", list);
		return "healthclubsFacilities/healthclubsFacilitiesSearchList";
	}
	
	//�ü����� ���� ��
	@RequestMapping(value="/healthclubsFacilitiesUpdate",method=RequestMethod.GET)
	public String HealthclubsFacilitiesModify(Model model,@RequestParam(value="healthclubs_facilities_no",required=true) int healthclubs_facilities_no) {
		HealthclubsFacilities healthclubsFacilities=healthclubsFacilitiesService.healthclubsFacilitiesmodify(healthclubs_facilities_no);
		model.addAttribute("healthclubsFacilities", healthclubsFacilities);
		return "healthclubsFacilities/healthclubsFacilitiesUpdate";
	}
	
	//�ü��������� ó��
		@RequestMapping(value="/healthclubsFacilitiesUpdate",method=RequestMethod.POST)
		public String HealthclubsFacilitiesModify(HealthclubsFacilities healthclubsFacilities) {
			healthclubsFacilitiesService.healthclubsFacilitiesmodify(healthclubsFacilities);
			return "redirect:/HealthclubsFacilitiesView";
		}
	
	//�ü�����
		@RequestMapping(value="/healthclubsFacilitiesRemove",method=RequestMethod.GET)
		public String HealthclubsFacilitiesRemove(HealthclubsFacilities healthclubsFacilities) {
			healthclubsFacilitiesService.healthclubsFacilitiesremove(healthclubsFacilities);
			return "redirect:/HealthclubsFacilitiesView";
		}
}
