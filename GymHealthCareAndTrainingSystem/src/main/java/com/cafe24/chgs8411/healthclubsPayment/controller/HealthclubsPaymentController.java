// 2018.10.01(¿ù) ÇöÈñ¹®

package com.cafe24.chgs8411.healthclubsPayment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HealthclubsPaymentController {
	
	@RequestMapping(value="/gymTicket", method=RequestMethod.GET)
	public String gymTicket(Model model, @RequestParam(value="program", required=true) int program) {
		System.out.println(program);
		
		return "healthProgram/healthProgramSearchList";
	}
	
	@RequestMapping(value="/healthclubsPayment", method=RequestMethod.GET)
	public String healthPayment() {
		
		return "healthclubsPayment/healthclubsPayment";
	}
	
	@RequestMapping(value="/healthclubsPaid", method=RequestMethod.POST)
	public String healthPaid() {
		
		return "healthclubsPayment/healthclubsPaid";
	}
	
	@RequestMapping(value="/healthclubsPaidSearchList", method=RequestMethod.GET)
	public String healthPaidSearchList() {
		
		return "healthclubsPayment/healthclubsPaidSearchList";
	}
}