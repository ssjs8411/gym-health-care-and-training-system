/* 김소희 2018-09-27 / QuestionController */
package com.cafe24.chgs8411.question.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.chgs8411.question.service.Question;
import com.cafe24.chgs8411.question.service.QuestionDao;
import com.cafe24.chgs8411.question.service.QuestionPageMaker;
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
		Question question = questionService.selectDetailQuestion(question_no);
		model.addAttribute("question", question);
		return "question/questionDetail";
		
		
	}
	
	// 질문 삭제 액션
	/*@RequestMapping (value="/questionDelete", method = RequestMethod.POST)
	public String qustionDelete (int question_no) {
		System.out.println("질문 삭제 액션");
		questionService.removeQuestion(question_no);
		return "redirct:/questionDetail?question_no=" + question.getQuestion_no();
		return "redirct:/list";

		
	}*/
	// 질문 삭제 액션
	@RequestMapping (value="/questionDelete", method = {RequestMethod.GET, RequestMethod.POST})
		public String questionDelete (int question_no) {
			System.out.println("질문 삭제 액션");
			questionService.removeQuestion(question_no);
			return "question/questionDelete";
			
	}
	
	
	// 질문 삭제 폼
	@RequestMapping (value="/questionDelete", method = RequestMethod.POST)
	public String questionDelete (Model model
								, @RequestParam (value="question_no", required=true) int question_no) {
		System.out.println("질문 삭제 폼 요청");
		Question question = questionService.selectDetailQuestion(question_no);
		model.addAttribute("question", question);
		return "question/questionDelete";
		
	}
	
	// 질문 수정 액션
	@RequestMapping (value="/questionUpdate", method = RequestMethod.GET)
	public String questionUpdate(Question question) {
		System.out.println("질문 수정 액션");
		questionService.modifyQuestion(question);
		return "redirect:/questionDetail?question_no=" +question.getQuestion_no();
	}
	
	// 질문 수정 폼
	@RequestMapping (value="/questionUpdate", method = RequestMethod.POST)
	public String questionUpdate(Model model
								, @RequestParam(value="question_no", required=true) int question_no) {
		System.out.println("질문 수정 폼");
		Question question = questionService.selectDetailQuestion(question_no);
		model.addAttribute("question", question);
		return "question/questionUpdate";
	}
	
	// 질문 목록 페이징
	/*@RequestMapping (value="/questionList", method = RequestMethod.GET)
	public String questionPaging (Model model
								,	@RequestParam(value="pageNum", required=true) int pageNum
								,	@RequestParam(value="contentNum", required=true) int contentNum) {
		List<Question> list = questionService.questionPaging(pageNum, contentNum);
		model.addAttribute("list", list);
		return "question/questionList"; 
		
	}*/
	
	//페이징 테스트
	@RequestMapping(value="/questionListTest")
	public String list (HttpServletRequest request) {
		QuestionPageMaker questionPageMaker = new QuestionPageMaker();
		
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum ="0";
		}
		int cpageNum = Integer.parseInt(pageNum);
		
		String contentNum = request.getParameter("contentNum");
		if (contentNum == null) {
			contentNum ="10";
		}
		int ccontentNum = Integer.parseInt(contentNum);
		
		
		/*String pageNum = request.getParameter("pageNum");
		String contentNum = request.getParameter("contentNum");
		int cpageNum = Integer.parseInt(pageNum);
		int ccontentNum = Integer.parseInt(contentNum);*/
		
		questionPageMaker.setTotalCount(questionService.questionCount());
		questionPageMaker.setPageNum(cpageNum-1);
		questionPageMaker.setContentNum(ccontentNum);
		questionPageMaker.setCurrentBlock(cpageNum);
		questionPageMaker.setLastBlock(questionPageMaker.getTotalCount());
		
		questionPageMaker.prevNext(cpageNum);
		questionPageMaker.setStartPage(questionPageMaker.getCurrentBlock());
		questionPageMaker.setEndPage(questionPageMaker.getLastBlock(), questionPageMaker.getCurrentBlock());
		
		List<Question> questionListTest = new ArrayList<Question>();
		questionListTest = questionService.questionListTest(questionPageMaker.getPageNum()*10, questionPageMaker.getContentNum());
		
		request.setAttribute("questionListTest", questionListTest);
				return "questionListTest";
				
	}
	
	/*@RequestMapping (value="/questionList", method = RequestMethod.GET)
	public String list (HttpServletRequest request) {
		QuestionPageMaker questionPageMaker = new QuestionPageMaker();
		
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum ="0";
		}
		int cpageNum = Integer.parseInt(pageNum);
		
		String contentNum = request.getParameter("contentNum");
		if (contentNum == null) {
			contentNum ="0";
		}
		int ccontentNum = Integer.parseInt(contentNum);
		
		
		String number = request.getParameter("num");
		int num = Integer.parseInt(number);

		->

		String number = request.getParameter("num");
		if (number == null) {
		number = "0";
		}
		int num = Integer.parseInt(number);
		
		questionPageMaker.setTotalCount(questionService.questionCount());
		questionPageMaker.setPageNum(cpageNum-1);
		questionPageMaker.setContentNum(ccontentNum);
		questionPageMaker.setCurrentBlock(cpageNum);
		questionPageMaker.setLastBlock(questionPageMaker.getTotalCount());
		
		questionPageMaker.prevNext(cpageNum);
		questionPageMaker.setStartPage(questionPageMaker.getCurrentBlock());
		questionPageMaker.setEndPage(questionPageMaker.getLastBlock(), questionPageMaker.getCurrentBlock());
		
		List<Question> questionPaging = new ArrayList<Question>();
		questionPaging = questionService.questionPaging(questionPageMaker.getPageNum()*10, questionPageMaker.getContentNum());
		
		request.setAttribute("questionPaging", questionPaging);
				return "questionPaging";
	}*/
	
	//질문 개수 카운트
	/*@RequestMapping (value="/questionList", method = {RequestMethod.GET, RequestMethod.POST})
	public String questionCount(Question question) {
		questionService.questionCount();
		return "question/questionSearchList";
		
	}*/

	// 질문 목록 조회
	@RequestMapping (value="/questionList", method = RequestMethod.GET)
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
