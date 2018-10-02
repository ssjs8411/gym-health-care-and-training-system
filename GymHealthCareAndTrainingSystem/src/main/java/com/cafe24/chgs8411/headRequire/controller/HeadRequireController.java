package com.cafe24.chgs8411.headRequire.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HeadRequireController {
	
	@RequestMapping(value="/headRequireInsert", method=RequestMethod.GET)
	public String headRequireInsert() {
		
		return "headRequire/headRequireInsert";
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