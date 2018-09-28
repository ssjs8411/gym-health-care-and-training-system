// 18.09.28 ������
package com.cafe24.chgs8411.join.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.chgs8411.join.service.JoinService;
import com.cafe24.chgs8411.join.service.Member;


@Controller
public class JoinController {
	@Autowired
	private JoinService joinService;
	
	// ȸ������ ��� �׼� ��û
	@RequestMapping(value="/AddJoin", method=RequestMethod.POST)
	public String joinInsert(Member member) {
		System.out.println("Join �׼ǿ�û");
		joinService.addMember(member);
		return "redirect:/joinForm";	// ��� �� joinForm���� �����̷�Ʈ(���û)
	}
	// ȸ������ ��� �� ��û
	@RequestMapping(value="/joinForm", method=RequestMethod.GET)
	public String joinInsert() {
		System.out.println("joinForm �� ��û");
		return "join/joinForm";		// /WEB-INF/views/join/joinForm.jsp
	}
}