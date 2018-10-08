// 2018.10.08(월) 현희문

package com.cafe24.chgs8411.headRequire.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.chgs8411.headRequire.service.HeadRequire;
import com.cafe24.chgs8411.headRequire.service.HeadRequireService;
import com.cafe24.chgs8411.healthclubsAdmin.service.HealthclubsAdmin;
import com.cafe24.chgs8411.member.service.Member;
import com.cafe24.chgs8411.trainer.service.Trainer;

@Controller
public class HeadRequireController {
	@Autowired
	private HeadRequireService headRequireService;
	
	@RequestMapping(value="/memberHeadRequireInsert", method=RequestMethod.GET)
	public String memberHeadRequireInsert(Model model, HttpSession session) {
		System.out.println("Member 권한으로 로그인 중");
		
		int no = (Integer) session.getAttribute("memberSessionNo");
		System.out.println(no);
		
		Member member = headRequireService.selectOneMemberForHeadRequire(no);
		
		model.addAttribute("member", member);
		
		return "headRequire/headRequireInsert";
	}
	
	@RequestMapping(value="/trainerHeadRequireInsert", method=RequestMethod.GET)
	public String trainerHeadRequireInsert(Model model, HttpSession session) {
		System.out.println("Trainer 권한으로 로그인 중");
		
		int no = (Integer) session.getAttribute("trainerSessionNo");
		System.out.println(no);
		
		Trainer trainer = headRequireService.selectOneTrainerForHeadRequire(no);
		
		model.addAttribute("trainer", trainer);
		
		return "headRequire/headRequireInsert";
	}
	
	@RequestMapping(value="/adminHeadRequireInsert", method=RequestMethod.GET)
	public String adminHeadRequireInsert(Model model, HttpSession session) {
		System.out.println("Admin 권한으로 로그인 중");
		
		int no = (Integer) session.getAttribute("adminSessionNo");
		System.out.println(no);
		
		HealthclubsAdmin healthclubsAdmin = headRequireService.selectOneAdminForHeadRequire(no);
		
		model.addAttribute("healthclubsAdmin", healthclubsAdmin);
		
		return "headRequire/headRequireInsert";
	}
	
	@RequestMapping(value="/memberHeadRequireInsert", method=RequestMethod.POST)
	public String memberHeadRequireInsert(HeadRequire headRequire) {
		System.out.println("member 권한으로 건의사항 입력");
		
		headRequireService.insertHeadRequire(headRequire);
		
		return "headRequire/headRequireSearchList";
	}
	
	@RequestMapping(value="/trainerHeadRequireInsert", method=RequestMethod.POST)
	public String trainerHeadRequireInsert(HeadRequire headRequire) {
		System.out.println("trainer 권한으로 건의사항 입력");
		
		headRequireService.insertHeadRequire(headRequire);
		
		return "headRequire/headRequireSearchList";
	}
	
	@RequestMapping(value="/adminHeadRequireInsert", method=RequestMethod.POST)
	public String adminHeadRequireInsert(HeadRequire headRequire) {
		System.out.println("admin 권한으로 건의사항 입력");
		
		headRequireService.insertHeadRequire(headRequire);
		
		return "headRequire/headRequireSearchList";
	}
	
	@RequestMapping(value="/headRequireSearchList", method=RequestMethod.GET)
	public String headRequireSearchList() {
		
		return "headRequire/headRequireSearchList";
	}
	
	@RequestMapping(value="/headRequireDetail", method=RequestMethod.GET)
	public String headRequireDetail() {
		
		return "headRequire/headRequireDetail";
	}
	
	@RequestMapping(value="/headRequireUpdate", method=RequestMethod.GET)
	public String headRequireUpdate() {
		
		return "headRequire/headRequireUpdate";
	}
	
	@RequestMapping(value="/headRequireDelete", method=RequestMethod.GET)
	public String headRequireDelete() {
		
		return "headRequire/headRequireDelete";
	}
}