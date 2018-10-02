package com.cafe24.chgs8411.login.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.chgs8411.login.service.LoginService;
import com.cafe24.chgs8411.join.service.Member;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(Member member,HttpSession session) {
		
		Map<String,Object> result=loginService.login(member);
		int i=(Integer)(result.get("result"));
		
		if(i==1) {
			session.setAttribute("result", result.get("result"));
			session.setAttribute("memberSessionId", member.getMember_id());
			session.setAttribute("memberSessionName", result.get("memberSessionName"));
			session.setAttribute("memberSessionNo", result.get("memberSessionNo"));
		}else {
			logger.debug("login fail");
			return "main";
		}
		return "home";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("loginMember");
		return "redirect:/home";
	}
	
	@RequestMapping(value="/adminLogin",method=RequestMethod.GET)
	public String adminLogin() {
		
		return "login/adminLogin";
	}
	
	@RequestMapping(value="/trainerLogin",method=RequestMethod.GET)
	public String trainerLogin() {
		
		return "login/trainerLogin";
	}
	
}