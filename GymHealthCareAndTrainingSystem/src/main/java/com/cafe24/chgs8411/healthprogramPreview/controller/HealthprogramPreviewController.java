// 2018-10-16 김소희
package com.cafe24.chgs8411.healthprogramPreview.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.chgs8411.healthprogramPreview.service.HealthprogramPreview;
import com.cafe24.chgs8411.healthprogramPreview.service.HealthprogramPreviewService;



@Controller
public class HealthprogramPreviewController {
	
	@Autowired
	private HealthprogramPreviewService healthprogramPreviewService;
	
	// 후기 목록 조회
	@RequestMapping (value="/healthprogramPreviewSearchList", method = RequestMethod.GET)
	public String healthprogramPreviewSearchList (Model model) {
		System.out.println("후기 목록");
		List<HealthprogramPreview> list = healthprogramPreviewService.HealthprogramPreviewList();
		model.addAttribute("list", list);
		return "healthprogramPreview/healthprogramPreviewSearchList";
		
	}
	// 후기 등록 액션
	@RequestMapping (value="/healthprogramPreviewInsert", method = RequestMethod.POST)
	public String healthprogramPreviewInsert(Model model
												,HealthprogramPreview healthprogramPreview){
		
		System.out.println("후기 등록 액션");
		healthprogramPreviewService.addHealthprogramPreview(healthprogramPreview);
		return "redirect:healthprogramPreviewList";
		
	}
	// 후기 등록 폼
	@RequestMapping (value="/healthprogramPreviewInsert", method = RequestMethod.GET)
	public String healthprogramPreviewInsert() {
		System.out.println("후기 등록 폼");
		return "healthprogramPreview/healthprogramPreviewInsert";
		
	}
}
