// 18.10.05 ������
package com.cafe24.chgs8411.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.chgs8411.member.service.Member;
import com.cafe24.chgs8411.member.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	// ȸ�� ���� ��ȸ ��û
	@RequestMapping(value="/selectMemberDetail", method = RequestMethod.GET)
	public String selectMemberDetail(Model model
									, @RequestParam(value="member_no", required=true) int member_no) {
		System.out.println("ȸ�� ���� ��ȸ ��û");
		Member member = memberService.selectMemberDetail(member_no);
		model.addAttribute("member", member);
		return "member/memberDetail";			// /WEB-INF/views/member/memberDetail.jsp
	}
	// ȸ�� ��ü ����Ʈ ��û
	@RequestMapping(value="/selectMemberList", method = RequestMethod.GET)
	public String memberList(Model model) {
		System.out.println("ȸ�� ��ü ����Ʈ ��û");
		List<Member> list = memberService.selectMemberList();
		model.addAttribute("list", list);
		return "member/memberSearchList";		// /WEB-INF/views/member/memberSearchList.jsp
	}
}
