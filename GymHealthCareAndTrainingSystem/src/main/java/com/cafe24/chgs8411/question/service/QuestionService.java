/* 김소희 2018-09-27 / QuestionService.java */
package com.cafe24.chgs8411.question.service;

import java.util.List;

import javax.jws.soap.InitParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class QuestionService {
	@Autowired
	private QuestionDao questionDao;
	
	// 질문 상세보기
	// int 타입으로 selectDetailQuestion 메소드 (Question 클래스 타입 question 매개변수)
	public Question selectDetailQuestion (int question_no) {
		return questionDao.selectDetailQuestion(question_no);
		
	}
	
	// 질문 삭제
	// int 타입으로 removeQuestion 메소드 (Question 클래스 타입 question 매개변수)
	public int removeQuestion (Question question) {
		return questionDao.deleteQuestion(question);
	
		
	}
	
	// 질문 수정
	// int 타입으로 modifyQuestion 메소드 (Question 클래스 타입 question 매개변수)
	public int modifyQuestion (Question question) {
		return questionDao.updateQuestion(question);
			
	}
	
	// 질문 목록 페이징
	// List<Question> 클래스 타입으로 questionPaging 메소드 (int 타입으로 currentPage, rowPerPage 매개변수)
	/*public List<Question> questionPaging(int currentPage, int rowPerPage){
		List<Question> list = questionDao.questionPaging(currentPage, rowPerPage);
		return questionDao.questionPaging(currentPage, rowPerPage);
		
	}*/
	// 페이징 테스트 
	/*public List<Question> questionPaging (int pageNum, int contentNum){
		return questionDao.questionPaging(pageNum, contentNum);
		
	}*/
	
	// 잘문 개수 카운트 
	// int 타입으로 questionCount 메소드 (매개변수 없음)
	public int questionCount() {
		return questionDao.questionCount();
		
	}
	
	// 질문 목록
	// List<Question> 클래스 타입으로 questionList 메소드 (매개변수 없음)
	public List<Question> questionList(){
		List<Question> list = questionDao.selectQuestion();
		return questionDao.selectQuestion();
		
	}
	
	// 질문 등록
	// int 타입으로 addQuestion 메소드 (Question 클래스 타입 question 매개변수)
	public int addQuestion(Question question) {
		return questionDao.insertQuestion(question);
		
	}

}
