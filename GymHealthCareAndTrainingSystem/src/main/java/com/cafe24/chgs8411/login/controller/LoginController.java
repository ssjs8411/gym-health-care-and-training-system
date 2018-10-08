// 2018. 10. 08. 공세준
// 로그인 컨트롤러

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
import com.cafe24.chgs8411.trainer.service.Trainer;
import com.cafe24.chgs8411.healthclubsAdmin.service.HealthclubsAdmin;
import com.cafe24.chgs8411.join.service.Member;

// 로그인 컨트롤러 로 로그인 관련 요청을 처리합니다.
@Controller
public class LoginController {
	
	// loginService 빈을 Autowired 하여 사용합니다.
	@Autowired
	private LoginService loginService;
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	// /login POST 방식 요청을 처리하는 메서드 입니다.
	// 요청을 처리후 /WEB-INF/views/home.jsp로 이동합니다.
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(Member member,HttpSession session) {
		
		Map<String,Object> result=loginService.login(member);
		int i=(Integer)(result.get("result"));
		
		// loginService 빈 객체에서 login 메서드 호출후 결과값이 1인 경우 받아온 회원 정보를 세션처리 합니다.
		if(i==1) {
			session.setAttribute("result", result.get("result"));
			session.setAttribute("memberSessionId", member.getMember_id());
			session.setAttribute("memberSessionName", result.get("memberSessionName"));
			session.setAttribute("memberSessionNo", result.get("memberSessionNo"));
			session.setAttribute("healthclubsName", result.get("healthclubsName"));
		}else {
			logger.debug("login fail");
			return "main";
		}
		return "home";
	}
	
	// /logout GET 방식 요청을 처리하는 메서드 입니다.
	// 요청을 처리후 /WEB-INF/views/main.jsp로 redirect 합니다
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// /adminLogin GET 방식 요청을 처리하는 메서드 입니다.
	// 요청을 처리후 /WEB-INF/views/login/adminLogin.jsp로 이동 합니다
	@RequestMapping(value="/adminLogin",method=RequestMethod.GET)
	public String adminLogin() {
		
		return "login/adminLogin";
	}
	
	// /trainerLogin GET 방식 요청을 처리하는 메서등 입니다.
	// 요청을 처리후  /WEB-INF/views/login/trainerLogin.jsp로 이동 합니다
	@RequestMapping(value="/trainerLogin",method=RequestMethod.GET)
	public String trainerLogin() {
		
		return "login/trainerLogin";
	}
	
	// /adminLogin POST 방식 요청을 처리하는 메서드 입니다.
	// 요청을 처리후 /WEB-INF/views/home.jsp로 이동합니다.
	@RequestMapping(value="/adminLogin",method=RequestMethod.POST)
	public String adminLogin(HealthclubsAdmin healthclubsAdmin, HttpSession session) {
		
		Map<String,Object> result=loginService.adminLogin(healthclubsAdmin);
		int i=(Integer)(result.get("result"));
		
		// loginService 빈 객체에서 adminLogin 메서드 호출후 결과값이 1인 경우 받아온 관리자 정보를 세션처리 합니다.
		if(i==1) {
			session.setAttribute("result", result.get("result"));
			session.setAttribute("adminSessionId", healthclubsAdmin.getHealthclubs_admin_id());
			session.setAttribute("adminSessionName", result.get("adminSessionName"));
			session.setAttribute("adminSessionNo", result.get("adminSessionNo"));
			session.setAttribute("healthclubsName", result.get("healthclubsName"));
		}else {
			logger.debug("login fail");
			return "main";
		}
		return "home";
	}
	
	// /trainerLogin POST 방식 요청을 처리하는 메서드 입니다.
	// 요청을 처리후 /WEB-INF/views/home.jsp로 이동합니다.
	@RequestMapping(value="/trainerLogin",method=RequestMethod.POST)
	public String trainerLogin(Trainer trainer, HttpSession session) {
		
		Map<String,Object> result=loginService.trainerLogin(trainer);
		int i=(Integer)(result.get("result"));
		
		
		// loginService 빈 객체에서 trainerLogin 메서드 호출후 결과값이 1인 경우 받아온 트레이너 정보를 세션처리 합니다.
		if(i==1) {
			session.setAttribute("result", result.get("result"));
			session.setAttribute("trainerSessionId", trainer.getTrainer_id());
			session.setAttribute("trainerSessionName", result.get("trainerSessionName"));
			session.setAttribute("trainerSessionNo", result.get("trainerSessionNo"));
			session.setAttribute("healthclubsName", result.get("healthclubsName"));
		}else {
			logger.debug("login fail");
			return "main";
		}
		return "home";
	}

}