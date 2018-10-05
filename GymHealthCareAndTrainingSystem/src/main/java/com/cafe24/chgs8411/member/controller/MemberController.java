// 18.10.05 최지수
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
	// 회원 세부 조회 요청
	@RequestMapping(value="/selectMemberDetail", method = RequestMethod.GET)
	public String selectMemberDetail(Model model
									, @RequestParam(value="member_no", required=true) int member_no) {
		System.out.println("회원 세부 조회 요청");
		Member member = memberService.selectMemberDetail(member_no);
		model.addAttribute("member", member);
		return "member/memberDetail";			// /WEB-INF/views/member/memberDetail.jsp
	}
	// 회원 전체 리스트 요청
	@RequestMapping(value="/selectMemberList", method = RequestMethod.GET)
	public String memberList(Model model) {
		System.out.println("회원 전체 리스트 요청");
		List<Member> list = memberService.selectMemberList();
		model.addAttribute("list", list);
		return "member/memberSearchList";		// /WEB-INF/views/member/memberSearchList.jsp
	}
}
