// 2018.10.08(월) 현희문

package com.cafe24.chgs8411.headRequire.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.chgs8411.headRequire.service.HeadRequire;
import com.cafe24.chgs8411.headRequire.service.HeadRequireDeleteCheck;
import com.cafe24.chgs8411.headRequire.service.HeadRequireService;
import com.cafe24.chgs8411.healthclubsAdmin.service.HealthclubsAdmin;
import com.cafe24.chgs8411.member.service.Member;
import com.cafe24.chgs8411.trainer.service.Trainer;

@Controller
public class HeadRequireController {
	@Autowired
	private HeadRequireService headRequireService;
	
	// 본사 건의사항 전체목록 조회 경로맵핑
	@RequestMapping(value="/headRequireSearchList", method=RequestMethod.GET)
	public String headRequireSearchList(Model model) {
		
		List<HeadRequire> headRequireList = headRequireService.selectAllHeadRequire();
		
		model.addAttribute("headRequireList", headRequireList);
		
		return "headRequire/headRequireSearchList";
	}
	
	// 회원의 본사 건의사항 등록을 위해 세션을 이용하여 회원 정보 조회 경로맵핑
	@RequestMapping(value="/memberHeadRequireInsert", method=RequestMethod.GET)
	public String memberHeadRequireInsert(Model model, HttpSession session) {
		System.out.println("Member 권한으로 로그인 중");
		
		int no = (Integer) session.getAttribute("memberSessionNo");
		System.out.println(no);
		
		Member member = headRequireService.selectOneMemberForHeadRequire(no);
		
		model.addAttribute("member", member);
		
		return "headRequire/headRequireInsert";
	}
	
	// 트레이너의 본사 건의사항 등록을 위해 세션을 이용하여 트레이너 정보 조회 경로맵핑
	@RequestMapping(value="/trainerHeadRequireInsert", method=RequestMethod.GET)
	public String trainerHeadRequireInsert(Model model, HttpSession session) {
		System.out.println("Trainer 권한으로 로그인 중");
		
		int no = (Integer) session.getAttribute("trainerSessionNo");
		System.out.println(no);
		
		Trainer trainer = headRequireService.selectOneTrainerForHeadRequire(no);
		
		model.addAttribute("trainer", trainer);
		
		return "headRequire/headRequireInsert";
	}
	
	// 체인점 관리자의 본사 건의사항 등록을 위해 세션을 이용하여 체인점 관리자 정보 조회 경로맵핑
	@RequestMapping(value="/adminHeadRequireInsert", method=RequestMethod.GET)
	public String adminHeadRequireInsert(Model model, HttpSession session) {
		System.out.println("Admin 권한으로 로그인 중");
		
		int no = (Integer) session.getAttribute("adminSessionNo");
		System.out.println(no);
		
		HealthclubsAdmin healthclubsAdmin = headRequireService.selectOneAdminForHeadRequire(no);
		
		model.addAttribute("healthclubsAdmin", healthclubsAdmin);
		
		return "headRequire/headRequireInsert";
	}
	
	// 회원 권한으로 본사 건의사항 등록 경로맵핑
	@RequestMapping(value="/memberHeadRequireInsert", method=RequestMethod.POST)
	public String memberHeadRequireInsert(Model model, HeadRequire headRequire) {
		System.out.println("member 권한으로 건의사항 입력");
		
		headRequireService.insertHeadRequire(headRequire);
		
		return "redirect:memberHeadRequireList";
	}
	
	// 트레이너 권한으로 본사 건의사항 등록 경로맵핑
	@RequestMapping(value="/trainerHeadRequireInsert", method=RequestMethod.POST)
	public String trainerHeadRequireInsert(Model model, HeadRequire headRequire) {
		System.out.println("trainer 권한으로 건의사항 입력");
		
		headRequireService.insertHeadRequire(headRequire);
		
		return "redirect:trainerHeadRequireList";
	}
	
	// 관리자 권한으로 본사 건의사항 등록 경로맵핑
	@RequestMapping(value="/adminHeadRequireInsert", method=RequestMethod.POST)
	public String adminHeadRequireInsert(Model model, HeadRequire headRequire) {
		System.out.println("admin 권한으로 건의사항 입력");
		
		headRequireService.insertHeadRequire(headRequire);
		
		return "redirect:adminHeadRequireList";
	}
	
	// 본사 건의사항 세부정보 조회 경로맵핑
	@RequestMapping(value="/headRequireDetail", method=RequestMethod.GET)
	public String headRequireDetail(Model model, @RequestParam(value="headRequireNo", required=true) int headRequireNo) {
		
		HeadRequire headRequire = headRequireService.selectHeadRequireDetail(headRequireNo);
		
		model.addAttribute("headRequire", headRequire);
		
		return "headRequire/headRequireDetail";
	}
	
	// 본사 건의사항 수정을 위한 조회 경로맵핑
	@RequestMapping(value="/headRequireUpdateGet", method=RequestMethod.GET)
	public String headRequireUpdateGet(Model model, @RequestParam(value="headRequireNo", required=true) int headRequireNo) {
		
		HeadRequire headRequire = headRequireService.selectHeadRequireForUpdate(headRequireNo);
		
		model.addAttribute("headRequire", headRequire);
		
		return "headRequire/headRequireUpdate";
	}
	
	// 회원 본사 건의사항 수정 경로맵핑
	@RequestMapping(value="/memberHeadRequireUpdate", method=RequestMethod.POST)
	public String memberHeadRequireUpdate(HeadRequire headRequire) {
		
		headRequireService.headRequireUpdate(headRequire);
		
		return "redirect:memberHeadRequireList";
	}
	
	// 트레이너 본사 건의사항 수정 경로맵핑
	@RequestMapping(value="/trainerHeadRequireUpdate", method=RequestMethod.POST)
	public String trainerHeadRequireUpdate(HeadRequire headRequire) {
		
		headRequireService.headRequireUpdate(headRequire);
		
		return "redirect:trainerHeadRequireList";
	}
	
	// 체인점 관리자 본사 건의사항 수정 경로맵핑
	@RequestMapping(value="/adminHeadRequireUpdate", method=RequestMethod.POST)
	public String adminHeadRequireUpdate(HeadRequire headRequire) {
		
		headRequireService.headRequireUpdate(headRequire);
		
		return "redirect:adminHeadRequireList";
	}
	
	// 회원 본사 건의사항 리스트 경로맵핑
	@RequestMapping(value="/memberHeadRequireList", method=RequestMethod.GET)
	public String selectMemberHeadRequireList(Model model, HttpSession session) {
		
		int serialNo = (Integer) session.getAttribute("memberSessionNo");
		int writerLevelNo = 1;
		
		System.out.println(serialNo);
		System.out.println(writerLevelNo);
		
		List<HeadRequire> headRequireList = headRequireService.selectHeadRequireList(serialNo, writerLevelNo);
		
		model.addAttribute("headRequireList", headRequireList);
		
		return "headRequire/headRequireList";
	}
	
	// 트레이너 본사 건의사항 리스트 경로맵핑
	@RequestMapping(value="/trainerHeadRequireList", method=RequestMethod.GET)
	public String selectTrainerHeadRequireList(Model model, HttpSession session) {
		
		int serialNo = (Integer) session.getAttribute("trainerSessionNo");
		int writerLevelNo = 2;
		
		System.out.println(serialNo);
		System.out.println(writerLevelNo);
		
		List<HeadRequire> headRequireList = headRequireService.selectHeadRequireList(serialNo, writerLevelNo);
		
		model.addAttribute("headRequireList", headRequireList);
		
		return "headRequire/headRequireList";
	}
	
	// 관리자 본사 건의사항 리스트 경로맵핑
	@RequestMapping(value="/adminHeadRequireList", method=RequestMethod.GET)
	public String selectAdminHeadRequireList(Model model, HttpSession session) {
		
		int serialNo = (Integer) session.getAttribute("adminSessionNo");
		int writerLevelNo = 3;
		
		System.out.println(serialNo);
		System.out.println(writerLevelNo);
		
		List<HeadRequire> headRequireList = headRequireService.selectHeadRequireList(serialNo, writerLevelNo);
		
		model.addAttribute("headRequireList", headRequireList);
		
		return "headRequire/headRequireList";
	}
	
	// 본사 건의사항 삭제 경로맵핑
	@RequestMapping(value="/headRequireDeleteGet", method=RequestMethod.GET)
	public String headRequireDelete(Model model, @RequestParam(value="headRequireNo", required=true) int headRequireNo) {
		
		model.addAttribute("headRequireNo", headRequireNo);
		
		return "headRequire/headRequireDelete";
	}
	
	// 회원 본사 건의사항 삭제를 위한 조회 경로맵핑
	@RequestMapping(value="/memberHeadRequireDelete", method=RequestMethod.POST)
	public String memberHeadRequireDelete(HttpSession session, HeadRequireDeleteCheck headRequireDeleteCheck) {
		
		int headRequireNo = headRequireDeleteCheck.getHeadRequireNo();
		String memberPassword = headRequireDeleteCheck.getMemberPassword();
		int memberSessionNo = (Integer) session.getAttribute("memberSessionNo");
		
		System.out.println(headRequireNo);
		System.out.println(memberPassword);
		System.out.println(memberSessionNo);
		
		int Check = headRequireService.selectMemberPasswordForDelete(memberPassword, memberSessionNo, headRequireNo);
		
		if(Check == 1) {
			return "redirect:memberHeadRequireList";
		}else {
			return "redirect:memberHeadRequireList";
		}
	}
	
	// 트레이너 본사 건의사항 삭제를 위한 조회 경로맵핑
	@RequestMapping(value="/trainerHeadRequireDelete", method=RequestMethod.POST)
	public String trainerHeadRequireDelete(HttpSession session, HeadRequireDeleteCheck headRequireDeleteCheck) {
		
		int headRequireNo = headRequireDeleteCheck.getHeadRequireNo();
		String trainerPassword = headRequireDeleteCheck.getTrainerPassword();
		int trainerSessionNo = (Integer) session.getAttribute("trainerSessionNo");
		
		System.out.println(headRequireNo);
		System.out.println(trainerPassword);
		System.out.println(trainerSessionNo);
		
		int Check = headRequireService.selectTrainerPasswordForDelete(trainerPassword, trainerSessionNo, headRequireNo);
		
		if(Check == 1) {
			return "redirect:trainerHeadRequireList";
		}else {
			return "redirect:trainerHeadRequireList";
		}
	}
	
	// 체인점 관리자 본사 건의사항 삭제를 위한 조회 경로맵핑
	@RequestMapping(value="/adminHeadRequireDelete", method=RequestMethod.POST)
	public String adminHeadRequireDelete(HttpSession session, HeadRequireDeleteCheck headRequireDeleteCheck) {
		
		int headRequireNo = headRequireDeleteCheck.getHeadRequireNo();
		String adminPassword = headRequireDeleteCheck.getAdminPassword();
		int adminSessionNo = (Integer) session.getAttribute("adminSessionNo");
		
		System.out.println(headRequireNo);
		System.out.println(adminPassword);
		System.out.println(adminSessionNo);
		
		int Check = headRequireService.selectAdminPasswordForDelete(adminPassword, adminSessionNo, headRequireNo);
		
		if(Check == 1) {
			return "redirect:adminHeadRequireList";
		}else {
			return "redirect:adminHeadRequireList";
		}
	}
}