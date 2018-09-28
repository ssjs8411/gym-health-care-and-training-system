// 18.09.27 ������
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
	
	// �ｺ�� ��ü ��ȸ ��û
	@RequestMapping(value="/healthclubsList", method = RequestMethod.GET)
	public String healthclubsList(Model model){
		List<Healthclubs> list = healthclubsService.getHealthclubsList();
		model.addAttribute("list", list);
		return "healthclubs/healthclubsSearchList";		// /WEB-INF/views/healthclubs/healthclubsSearchList.jsp
	}
	
	// �ｺ�� ��� �׼� ��û
	@RequestMapping(value="/healthclubsInsert", method=RequestMethod.POST)
	public String healthclubsInsert(Healthclubs healthclubs) {
		System.out.println("HealthclubsInsert �׼� ��û");
		healthclubsService.addHealthclubs(healthclubs);
		return "redirect:/healthclubsInsert";	// ��� �� healthclubsInsert�� �����̷�Ʈ(���û)
		
	}
	
	// �ｺ�� ��� �� ��û
	@RequestMapping(value="/healthclubsInsert", method = RequestMethod.GET)
	public String healthclubsInsert() {
		System.out.println("healthclubsInsert �� ��û");
		return "healthclubs/healthclubsInsert";		// /WEB-INF/views/healthclubs/healthclubsInsert.jsp
	}
}
