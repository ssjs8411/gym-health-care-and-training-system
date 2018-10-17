/* 김소희 2018-09-27 / QuestionController */
package com.cafe24.chgs8411.question.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.chgs8411.member.service.Member;
import com.cafe24.chgs8411.question.service.Question;
import com.cafe24.chgs8411.question.service.QuestionDeleteCheck;
import com.cafe24.chgs8411.question.service.QuestionService;

@Controller
public class QuestionController {
	
	@Autowired
	private QuestionService questionService;
	
	// 질문 상세
	@RequestMapping (value="/questionDetail", method = {RequestMethod.GET, RequestMethod.POST})
	public String selectDetailQuestion(Model model
									, @RequestParam(value="question_no", required=true) int question_no) {
		System.out.println("질문 상세보기");
		Question question = questionService.selectDetailQuestion(question_no);
		model.addAttribute("question", question);
		return "question/questionDetail";
		
		
	}
	
	// 질문 삭제 액션
	/*@RequestMapping (value="/memberQuestionDelete", method = RequestMethod.POST)
	public String qustionDelete (int question_no) {
		System.out.println("질문 삭제 액션");
		questionService.removeQuestion(question_no);
		return "redirct:/questionDetail?question_no=" + question.getQuestion_no();
		return "redirct:/list";

		
	}*/
	
	// 질문 삭제 폼
	@RequestMapping (value="/questionDelete", method = RequestMethod.GET)
	public String questionDelete (Model model
								, @RequestParam (value="question_no", required=true) int question_no) {
		System.out.println("질문 삭제 폼");
		model.addAttribute("question_no", question_no);
		return "question/questionDelete";
		
	}
	
	// 회원 권한으로 질문 삭제
	@RequestMapping (value="/memberQuestionDelete", method = RequestMethod.POST)
	public String memberQuestionDelete (HttpSession httpSession
										, QuestionDeleteCheck questionDeleteCheck) {
		int question_no = questionDeleteCheck.getQuestion_no();
		String member_pw = questionDeleteCheck.getMember_pw();
		int memberSessionNo = (Integer) httpSession.getAttribute("memberSessionNo");
		
		System.out.println(question_no+"_질문번호");
		System.out.println(member_pw+"_회원 비밀번호");
		System.out.println(memberSessionNo+"_회원 세션 번호");
		
		int Check = questionService.selectMemberPasswordDelete(member_pw, memberSessionNo, question_no);
		
		if(Check == 1) {
			return "redirect:questionList";
		}else {
			return "redirect:questionList";
		}
			
		
	}
	
	// 관리자 권한으로 질문 삭제
	@RequestMapping (value="/adminQuestionDelete", method = RequestMethod.POST)
	public String adminQuestionDelete(HttpSession httpsession
									, QuestionDeleteCheck questionDeleteCheck) {
		int question_no = questionDeleteCheck.getQuestion_no();
		String healthclubs_admin_pw = questionDeleteCheck.getHealthclubs_admin_pw();
		int adminSessionNo = (Integer) httpsession.getAttribute("adminSessionNo");
		
		System.out.println(question_no);
		System.out.println(healthclubs_admin_pw);
		System.out.println(adminSessionNo);
		
		int Check = questionService.selectAdminPasswordDelete(healthclubs_admin_pw, adminSessionNo, question_no);
		
		if(Check == 1) {
			return "redirect:questionList";
		}else {
			return "redirect:questionList";
		}
		
		
	}
	
	// 질문 수정 액션
	@RequestMapping (value="/questionUpdate", method = RequestMethod.POST)
	public String questionUpdate(Question question) {
		System.out.println("질문 수정 액션");
		questionService.modifyQuestion(question);
		return "redirect:/questionDetail?question_no=" +question.getQuestion_no();
	}
	
	// 질문 수정 폼
	@RequestMapping (value="/questionUpdate", method = RequestMethod.GET)
	public String questionUpdate(Model model
								, @RequestParam(value="question_no", required=true) int question_no) {
		System.out.println("질문 수정 폼");
		Question question = questionService.selectDetailQuestion(question_no);
		model.addAttribute("question", question);
		return "question/questionUpdate";
	}
	
	
	// 질문 목록 조회
	@RequestMapping (value="/questionList", method = RequestMethod.GET)
	public String questionList(Model model) {
		System.out.println("질문 목록");
		List<Question> list = questionService.questionList();
		model.addAttribute("list", list);
		return "question/questionList";
		
	}
	
	/*// 잘문 등록 액션
	@RequestMapping (value="/questionInsert", method = RequestMethod.POST)
	public String questionInsert(Question question) {
		System.out.println("질문 등록 액션");
		questionService.addQuestion(question);
		return "redirect:/questionList";
		
	}*/
	
	// 회원 질문 등록 액션
	@RequestMapping (value="/questionInsert", method = RequestMethod.POST)
	public String memberQuestionInsert (Model model
										, Question question) {
		System.out.println("회원 질문 등록 액션");
		questionService.addQuestion(question);
		return "redirect:questionList";
		
	}
	
	// 회원 확인 후 질문 등록 폼
	/*@RequestMapping (value="/questionInsert", method = RequestMethod.GET)
	public String memberQuestionInsert(Model model
										, HttpSession httpSession) {
		System.out.println("회원 질문 등록 폼");
		
		int no = (Integer) httpSession.getAttribute("memberSessionNo");
		System.out.println(no+"_회원번호");
		
		Member member = questionService.selectMemberQuestion(no);
		model.addAttribute("member", member);
		return "question/questionInsert";
		
	}*/

	
	// 질문 등록 폼
	@RequestMapping (value="/questionInsert", method = RequestMethod.GET)
	public String questionInsert() {
		System.out.println("질문 등록 폼");
		return "question/questionInsert";
		
	}

}
