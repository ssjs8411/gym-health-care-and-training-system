// 18.09.27 최지수
package com.cafe24.chgs8411.healthclubs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.chgs8411.healthclubs.service.Healthclubs;
import com.cafe24.chgs8411.healthclubs.service.HealthclubsService;


@Controller
public class HealthclubsController {
	@Autowired
	private HealthclubsService healthclubsService;
	
	// 헬스장 수정 액션 요청
	@RequestMapping(value="/updateHealthclubs", method = RequestMethod.POST)
	public String updateHealthclubs(Healthclubs healthclubs) {
		System.out.println("헬스장 수정 액션 요청");
		healthclubsService.updateHealthclubs(healthclubs);
		return "redirect:/healthclubsDetail?healthclubs_no=" + healthclubs.getHealthclubs_no();
	}
	
	// 헬스장 수정 폼 요청
	@RequestMapping(value="/updateHealthclubs", method = RequestMethod.GET)
	public String updateHealthclubs(Model model
									, @RequestParam(value="healthclubs_no", required=true) int healthclubs_no ) {
		System.out.println("헬스장 수정 폼 요청");
		Healthclubs healthclubs = healthclubsService.selectHealthclubsDetail(healthclubs_no);
		model.addAttribute("healthclubs", healthclubs);
		return "healthclubs/healthclubsUpdate";		// /WEB-INF/views/healthclubs/healthclubsUpdate.jsp
	}
	
	// 헬스장 세부 조회 요청
	@RequestMapping(value="/healthclubsDetail", method = RequestMethod.GET)
	public String selectHealthclubsDetail(Model model
										, @RequestParam(value="healthclubs_no", required=true) int healthclubs_no ) {
		System.out.println("헬스장 세부 조회 요청");
		Healthclubs healthclubs = healthclubsService.selectHealthclubsDetail(healthclubs_no);
		model.addAttribute("healthclubs", healthclubs);
		return "healthclubs/healthclubsDetail";		// /WEB-INF/views/healthclubs/healthclubsDetail.jsp
	}
	
	// 헬스장 전체 조회 요청
	@RequestMapping(value="/healthclubsList", method = RequestMethod.GET)
	public String healthclubsList(Model model){
		System.out.println("헬스장 전체조회 요청");
		List<Healthclubs> list = healthclubsService.getHealthclubsList();
		model.addAttribute("list", list);
		return "healthclubs/healthclubsSearchList";		// /WEB-INF/views/healthclubs/healthclubsSearchList.jsp
	}
	
	// 헬스장 등록 액션 요청
	@RequestMapping(value="/healthclubsInsert", method=RequestMethod.POST)
	public String healthclubsInsert(Healthclubs healthclubs) {
		System.out.println("HealthclubsInsert 액션 요청");
		healthclubsService.addHealthclubs(healthclubs);
		return "redirect:/healthclubsList";	// 등록 후 healthclubsInsert로 리다이렉트(재요청)
		
	}
	
	// 헬스장 등록 폼 요청
	@RequestMapping(value="/healthclubsInsert", method = RequestMethod.GET)
	public String healthclubsInsert() {
		System.out.println("healthclubsInsert 폼 요청");
		return "healthclubs/healthclubsInsert";		// /WEB-INF/views/healthclubs/healthclubsInsert.jsp
	}
}
