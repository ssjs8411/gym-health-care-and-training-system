// 18.10.01 ������
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
	
	// �ｺ�� ������ ��� �׼� ��û
	@RequestMapping(value="/healthclubsAdminInsert", method=RequestMethod.POST)
	public String InsertHelathclubsAdmin(HealthclubsAdmin healthclubsAdmin) {
		System.out.println("�ｺ������� ��� �׼ǿ�û");
		healthclubsAdminService.addHealthclubsAdmin(healthclubsAdmin);
		return "redirect:/healthclubsAdminInsert";
	}
	
	// �ｺ�� ������ ��� �� ��û
	@RequestMapping(value="/healthclubsAdminInsert", method = RequestMethod.GET)
	public String InsertHealthclubsAdmin(Model model) {
		System.out.println("�ｺ�� ������ ����� ��û");
		List<Healthclubs> list = healthclubsAdminService.getHealthclubsList();
		model.addAttribute("list", list);
		return "/healthclubsAdmin/healthclubsAdminInsert";	// /WEB-INF/views/healthclubsAdmin/healthclubsAdminInsert.jsp
	}
}
