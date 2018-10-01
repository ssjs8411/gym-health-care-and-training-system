// 18.09.27 ������
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
	
	// �ｺ�� ���� �׼� ��û
	@RequestMapping(value="/updateHealthclubs", method = RequestMethod.POST)
	public String updateHealthclubs(Healthclubs healthclubs) {
		System.out.println("�ｺ�� ���� �׼� ��û");
		healthclubsService.updateHealthclubs(healthclubs);
		return "redirect:/healthclubsDetail?healthclubs_no=" + healthclubs.getHealthclubs_no();
	}
	
	// �ｺ�� ���� �� ��û
	@RequestMapping(value="/updateHealthclubs", method = RequestMethod.GET)
	public String updateHealthclubs(Model model
									, @RequestParam(value="healthclubs_no", required=true) int healthclubs_no ) {
		System.out.println("�ｺ�� ���� �� ��û");
		Healthclubs healthclubs = healthclubsService.selectHealthclubsDetail(healthclubs_no);
		model.addAttribute("healthclubs", healthclubs);
		return "healthclubs/healthclubsUpdate";		// /WEB-INF/views/healthclubs/healthclubsUpdate.jsp
	}
	
	// �ｺ�� ���� ��ȸ ��û
	@RequestMapping(value="/healthclubsDetail", method = RequestMethod.GET)
	public String selectHealthclubsDetail(Model model
										, @RequestParam(value="healthclubs_no", required=true) int healthclubs_no ) {
		System.out.println("�ｺ�� ���� ��ȸ ��û");
		Healthclubs healthclubs = healthclubsService.selectHealthclubsDetail(healthclubs_no);
		model.addAttribute("healthclubs", healthclubs);
		return "healthclubs/healthclubsDetail";		// /WEB-INF/views/healthclubs/healthclubsDetail.jsp
	}
	
	// �ｺ�� ��ü ��ȸ ��û
	@RequestMapping(value="/healthclubsList", method = RequestMethod.GET)
	public String healthclubsList(Model model){
		System.out.println("�ｺ�� ��ü��ȸ ��û");
		List<Healthclubs> list = healthclubsService.getHealthclubsList();
		model.addAttribute("list", list);
		return "healthclubs/healthclubsSearchList";		// /WEB-INF/views/healthclubs/healthclubsSearchList.jsp
	}
	
	// �ｺ�� ��� �׼� ��û
	@RequestMapping(value="/healthclubsInsert", method=RequestMethod.POST)
	public String healthclubsInsert(Healthclubs healthclubs) {
		System.out.println("HealthclubsInsert �׼� ��û");
		healthclubsService.addHealthclubs(healthclubs);
		return "redirect:/healthclubsList";	// ��� �� healthclubsInsert�� �����̷�Ʈ(���û)
		
	}
	
	// �ｺ�� ��� �� ��û
	@RequestMapping(value="/healthclubsInsert", method = RequestMethod.GET)
	public String healthclubsInsert() {
		System.out.println("healthclubsInsert �� ��û");
		return "healthclubs/healthclubsInsert";		// /WEB-INF/views/healthclubs/healthclubsInsert.jsp
	}
}
