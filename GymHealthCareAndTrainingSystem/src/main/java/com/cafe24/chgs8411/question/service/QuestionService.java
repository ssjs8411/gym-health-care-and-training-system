/* 김소희 2018-09-27 / QuestionService.java */
package com.cafe24.chgs8411.question.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class QuestionService {
	@Autowired
	private QuestionDao questionDao;
	
	
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
