package com.cafe24.chgs8411.healthclubsRefund.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HealthclubsRefundController {
	
	@RequestMapping(value="/healthclubsRefund", method=RequestMethod.GET)
	public String healthclubsRefund() {
		
		return "healthclubsRefund/healthclubsRefund";
	}
}