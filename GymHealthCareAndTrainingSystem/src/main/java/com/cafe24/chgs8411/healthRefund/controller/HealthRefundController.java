package com.cafe24.chgs8411.healthRefund.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HealthRefundController {
	
	@RequestMapping(value="/healthRefund", method=RequestMethod.GET)
	public String healthRefund() {
		
		return "healthRefund/healthRefund";
	}
}