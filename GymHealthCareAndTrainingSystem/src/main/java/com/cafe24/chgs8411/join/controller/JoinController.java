// 18.09.28 최지수
package com.cafe24.chgs8411.join.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.chgs8411.healthclubs.service.Healthclubs;
import com.cafe24.chgs8411.join.service.JoinService;
import com.cafe24.chgs8411.join.service.Member;


@Controller
public class JoinController {
	@Autowired
	private JoinService joinService;
	
	// 회원가입 등록 액션 요청
	@RequestMapping(value="/AddJoin", method=RequestMethod.POST)
	public String joinInsert(Member member) {
		System.out.println("Join 액션요청");
		joinService.addMember(member);
		return "redirect:/joinForm";	// 등록 후 joinForm으로 리다이렉트(재요청)
	}
	// 회원가입 등록 폼 요청
	@RequestMapping(value="/joinForm", method=RequestMethod.GET)
	public String joinInsert(Model model) {
		System.out.println("joinForm 폼 요청");
		List<Healthclubs> list = joinService.getHealthclubsList();
		model.addAttribute("list", list);
		return "join/joinForm";		// /WEB-INF/views/join/joinForm.jsp
	}
}
