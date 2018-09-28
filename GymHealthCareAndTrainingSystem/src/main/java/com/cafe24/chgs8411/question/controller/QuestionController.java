/* 김소희 2018-09-27 / QuestionController */
package com.cafe24.chgs8411.question.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.chgs8411.question.service.Question;
import com.cafe24.chgs8411.question.service.QuestionService;

@Controller
public class QuestionController {
	
	@Autowired
	private QuestionService questionService;
	
	@RequestMapping (value="/questionList", method = RequestMethod.GET)
	public String questionList(Model model) {
		List<Question> list = questionService.questionList();
		model.addAttribute("lsit", list);
		return "question/questionList";
		
	}
	@RequestMapping (value="/questionInsert", method = RequestMethod.POST)
	public String questionInsert(Question question) {
		System.out.println("questionInsertAction");
		questionService.addQuestion(question);
		return "redirect:/questionInsert";
		
	}
	
	@RequestMapping (value="/questionInserst", method = RequestMethod.GET)
	public String questionInsert() {
		System.out.println("questioInsertForm");
		return "question/questionInsert";
		
	}

}
