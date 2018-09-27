package com.cafe24.chgs8411.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login() {
		
		return "home";
	}
	
}