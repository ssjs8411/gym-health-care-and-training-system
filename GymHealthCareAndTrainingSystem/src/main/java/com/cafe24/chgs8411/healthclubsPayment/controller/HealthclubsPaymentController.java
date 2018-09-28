package com.cafe24.chgs8411.healthclubsPayment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HealthclubsPaymentController {
	
	@RequestMapping(value="/healingYoga", method=RequestMethod.GET)
	public String healingYoga(Model model, @RequestParam(value="program", required=true) int program) {
		System.out.println(program);
		
		return "healthProgram/healthProgramSearchList";
	}
	
	@RequestMapping(value="/TotalBodyToning", method=RequestMethod.GET)
	public String TotalBodyToning(Model model, @RequestParam(value="program", required=true) int program) {
		System.out.println(program);
		
		return "healthProgram/healthProgramSearchList";
	}
	
	@RequestMapping(value="/gymTicket", method=RequestMethod.GET)
	public String gymTicket(Model model, @RequestParam(value="program", required=true) int program) {
		System.out.println(program);
		
		return "healthProgram/healthProgramSearchList";
	}
	
	@RequestMapping(value="/powerStretching", method=RequestMethod.GET)
	public String powerStretching(Model model, @RequestParam(value="program", required=true) int program) {
		System.out.println(program);
		
		return "healthProgram/healthProgramSearchList";
	}
	
	@RequestMapping(value="/absStretching", method=RequestMethod.GET)
	public String absStretching(Model model, @RequestParam(value="program", required=true) int program) {
		System.out.println(program);
		
		return "healthProgram/healthProgramSearchList";
	}
	
	@RequestMapping(value="/personalTraining", method=RequestMethod.GET)
	public String personalTraining(Model model, @RequestParam(value="program", required=true) int program) {
		System.out.println(program);
		
		return "healthProgram/healthProgramSearchList";
	}
	
	@RequestMapping(value="/muscularStrengthStretching", method=RequestMethod.GET)
	public String muscularStrengthStretching(Model model, @RequestParam(value="program", required=true) int program) {
		System.out.println(program);
		
		return "healthProgram/healthProgramSearchList";
	}
	
	@RequestMapping(value="/jumpSports", method=RequestMethod.GET)
	public String jumpSports(Model model, @RequestParam(value="program", required=true) int program) {
		System.out.println(program);
		
		return "healthProgram/healthProgramSearchList";
	}
	
	@RequestMapping(value="/healthPayment", method=RequestMethod.GET)
	public String healthPayment() {
		
		return "healthPayment/healthPayment";
	}
}