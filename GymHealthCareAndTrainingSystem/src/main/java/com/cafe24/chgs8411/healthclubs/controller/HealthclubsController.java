// 18.09.27 최지수
package com.cafe24.chgs8411.healthclubs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.chgs8411.healthclubs.service.Healthclubs;
import com.cafe24.chgs8411.healthclubs.service.HealthclubsService;


@Controller
public class HealthclubsController {
	@Autowired
	private HealthclubsService healthclubsService;
	
	// 헬스장 전체 조회 요청
	@RequestMapping(value="/healthclubsList", method = RequestMethod.GET)
	public String healthclubsList(Model model){
		List<Healthclubs> list = healthclubsService.getHealthclubsList();
		model.addAttribute("list", list);
		return "healthclubs/healthclubsSearchList";		// /WEB-INF/views/healthclubs/healthclubsSearchList.jsp
	}
	
	// 헬스장 등록 액션 요청
	@RequestMapping(value="/healthclubsInsert", method=RequestMethod.POST)
	public String healthclubsInsert(Healthclubs healthclubs) {
		System.out.println("HealthclubsInsert 액션 요청");
		healthclubsService.addHealthclubs(healthclubs);
		return "redirect:/healthclubsInsert";	// 등록 후 healthclubsInsert로 리다이렉트(재요청)
		
	}
	
	// 헬스장 등록 폼 요청
	@RequestMapping(value="/healthclubsInsert", method = RequestMethod.GET)
	public String healthclubsInsert() {
		System.out.println("healthclubsInsert 폼 요청");
		return "healthclubs/healthclubsInsert";		// /WEB-INF/views/healthclubs/healthclubsInsert.jsp
	}
}
