// 18.10.01 ������
package com.cafe24.chgs8411.healthclubsAdmin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.chgs8411.healthclubs.service.Healthclubs;
import com.cafe24.chgs8411.healthclubsAdmin.service.HealthclubsAdmin;
import com.cafe24.chgs8411.healthclubsAdmin.service.HealthclubsAdminService;

@Controller
public class HealthclubsAdminController {
	@Autowired
	private HealthclubsAdminService healthclubsAdminService;
	
	// �ｺ�� ������ ���� ������ ��ȸ ��û
	@RequestMapping(value="/healthclubsAdminDetail", method=RequestMethod.GET)
	public String selectHealthclubsAdminsDetail(Model model
												, @RequestParam(value="healthclubs_admin_no", required=true) int healthclubs_admin_no) {
		System.out.println("�ｺ�� ������ ���� ������ ��û");
		HealthclubsAdmin healthclubsAdmin = healthclubsAdminService.selectHealthclubsAdmin(healthclubs_admin_no);
		model.addAttribute("healthclubsAdmin", healthclubsAdmin);
		return "healthclubsAdmin/healthclubsAdminDetail";	// /WEB-INF/views/healthclubsAdmin/healthclubsAdminDetail.jsp
	}
	
	// �ｺ�� ������ ��ü ��ȸ ����Ʈ ��û
	@RequestMapping(value="/healthclubsAdminList", method=RequestMethod.GET)
	public String selectHealthclubsAdminList(Model model) {
		System.out.println("�ｺ�� ������ ��ü ��ȸ ��û");
		List<HealthclubsAdmin> list = healthclubsAdminService.selectHealthclubsAdminList();
		model.addAttribute("list", list);
		return "healthclubsAdmin/healthclubsAdminSearchList";	// /WEB-INF/views/healthclubsAdmin/healthclubsAdminSearchList.jsp
	}
	
	// �ｺ�� ������ ���� �׼� ��û
	@RequestMapping(value="/UpdateHealthclubsAdmin", method=RequestMethod.POST)
	public String updateHealthclubsAdmin(HealthclubsAdmin healthclubsAdmin) {
		System.out.println("�ｺ�� ������ ���� �׼� ��û");
		healthclubsAdminService.modifyHealthclubsAdmin(healthclubsAdmin);
		return "redirect:/healthclubsAdminDetail?healthclubs_admin_no="+healthclubsAdmin.getHealthclubs_admin_no();
	}
	
	// �ｺ�� ������ ���� �� ��û
	@RequestMapping(value="/healthclubsAdminUpdate", method=RequestMethod.GET)
	public String updateHealthclubsAdmin(Model model
										, @RequestParam(value="healthclubs_admin_no", required=true) int healthclubs_admin_no ) {
		System.out.println("�ｺ�� ������ ���� �� ��û");
		HealthclubsAdmin healthclubsAdmin = healthclubsAdminService.selectHealthclubsAdmin(healthclubs_admin_no);
		List<Healthclubs> list = healthclubsAdminService.getHealthclubsList();
		model.addAttribute("list", list);
		model.addAttribute("healthclubsAdmin", healthclubsAdmin);
		return "healthclubsAdmin/healthclubsAdminUpdate";	// /WEB-INF/views/healthclubsAdmin/healthclubsAdminUpdate.jsp
		
	}
	
	// �ｺ�� ������ ��� �׼� ��û
	@RequestMapping(value="/healthclubsAdminInsert", method=RequestMethod.POST)
	public String insertHealthclubsAdmin(HealthclubsAdmin healthclubsAdmin) {
		System.out.println("�ｺ������� ��� �׼ǿ�û");
		healthclubsAdminService.addHealthclubsAdmin(healthclubsAdmin);
		return "redirect:/healthclubsAdminList";
	}
	
	// �ｺ�� ������ ��� �� ��û
	@RequestMapping(value="/healthclubsAdminInsert", method = RequestMethod.GET)
	public String insertHealthclubsAdmin(Model model) {
		System.out.println("�ｺ�� ������ ����� ��û");
		List<Healthclubs> list = healthclubsAdminService.getHealthclubsList();
		model.addAttribute("list", list);
		return "healthclubsAdmin/healthclubsAdminInsert";	// /WEB-INF/views/healthclubsAdmin/healthclubsAdminInsert.jsp
	}
}
