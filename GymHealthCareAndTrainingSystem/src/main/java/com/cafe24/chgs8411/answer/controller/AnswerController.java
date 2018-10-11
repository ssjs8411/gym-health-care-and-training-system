//2018-10-11 김소희
package com.cafe24.chgs8411.answer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.chgs8411.answer.service.Answer;
import com.cafe24.chgs8411.answer.service.AnswerService;

public class AnswerController {
	@Autowired
	private AnswerService answerService;
	
	// 답변 등록 액션
	@RequestMapping (value="answerInsert", method = RequestMethod.POST)
	public String answerInsert(Answer answer) {
		System.out.println("답븐 등록 액션");
		answerService.addAnswer(answer);
		return "redirect:/questionList";
		
	}
	// 답변 등록 폼
	@RequestMapping (value="/answerInsert", method = RequestMethod.GET)
	public String answerInsert() {
		System.out.println("답변 등록 폼");
		return "answer/answerInsert";
		
	}

}
