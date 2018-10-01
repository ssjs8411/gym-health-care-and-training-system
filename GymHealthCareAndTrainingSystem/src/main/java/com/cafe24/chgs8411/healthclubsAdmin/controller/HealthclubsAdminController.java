// 18.10.01 최지수
package com.cafe24.chgs8411.healthclubsAdmin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.chgs8411.healthclubs.service.Healthclubs;
import com.cafe24.chgs8411.healthclubsAdmin.service.HealthclubsAdmin;
import com.cafe24.chgs8411.healthclubsAdmin.service.HealthclubsAdminService;

@Controller
public class HealthclubsAdminController {
	@Autowired
	private HealthclubsAdminService healthclubsAdminService;
	
	// 헬스장 관리자 등록 액션 요청
	@RequestMapping(value="/healthclubsAdminInsert", method=RequestMethod.POST)
	public String InsertHelathclubsAdmin(HealthclubsAdmin healthclubsAdmin) {
		System.out.println("헬스장관리자 등록 액션요청");
		healthclubsAdminService.addHealthclubsAdmin(healthclubsAdmin);
		return "redirect:/healthclubsAdminInsert";
	}
	
	// 헬스장 관리자 등록 폼 요청
	@RequestMapping(value="/healthclubsAdminInsert", method = RequestMethod.GET)
	public String InsertHealthclubsAdmin(Model model) {
		System.out.println("헬스장 관리자 등록폼 요청");
		List<Healthclubs> list = healthclubsAdminService.getHealthclubsList();
		model.addAttribute("list", list);
		return "/healthclubsAdmin/healthclubsAdminInsert";	// /WEB-INF/views/healthclubsAdmin/healthclubsAdminInsert.jsp
	}
}
