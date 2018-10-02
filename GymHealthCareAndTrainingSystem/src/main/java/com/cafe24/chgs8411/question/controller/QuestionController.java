/* 김소희 2018-09-27 / QuestionController */
package com.cafe24.chgs8411.question.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.chgs8411.question.service.Question;
import com.cafe24.chgs8411.question.service.QuestionService;

@Controller
public class QuestionController {
	
	@Autowired
	private QuestionService questionService;
	
	// 질문 상세보기
	@RequestMapping (value="/questionDetail", method = {RequestMethod.GET, RequestMethod.POST})
	public String selectDetailQuestion(Model model
									, @RequestParam(value="question_no", required=true) int question_no) {
		System.out.println("질문 상세보기");
		Question question =  questionService.selectDetailQuestion(question_no);
		model.addAttribute("question", question);
		return "question/questionDetail";
		
		
	}
	
	// 질문 삭제
	@RequestMapping (value="/questionDelete", method = {RequestMethod.GET, RequestMethod.POST})
	public String qustionDelete (Question question) {
		System.out.println("질문 삭제");
		questionService.removeQuestion(question);
		return "redirct:/questionDelete";
		
	}
	
	// 질문 수정 액션
	@RequestMapping (value="/questionUpdate", method = {RequestMethod.GET, RequestMethod.POST})
	public String questionUpdate(Question question) {
		System.out.println("질문 수정 액션");
		questionService.modifyQuestion(question);
		return "redirect:/questionUpdate";
	}
	
	// 질문 수정 폼
	
	// 질문 개수 카운트
	/*@RequestMapping (value="/questionList", method = {RequestMethod.GET, RequestMethod.POST})
	public String questionCount(Question question) {
		questionService.questionCount();
		return "question/questionList";
		
	}
*/
	// 질문 목록 조회
	@RequestMapping (value="/questionList", method = {RequestMethod.GET, RequestMethod.POST})
	public String questionList(Model model) {
		System.out.println("질문 목록");
		List<Question> list = questionService.questionList();
		model.addAttribute("list", list);
		return "question/questionList";
		
	}
	
	// 잘문 등록 액션
	@RequestMapping (value="/questionInsert", method = RequestMethod.POST)
	public String questionInsert(Question question) {
		System.out.println("질문 등록 액션");
		questionService.addQuestion(question);
		return "redirect:/questionList";
		
	}
	
	// 질문 등록 폼
	@RequestMapping (value="/questionInsert", method = RequestMethod.GET)
	public String questionInsert() {
		System.out.println("질문 등록 폼");
		return "question/questionInsert";
		
	}

}
