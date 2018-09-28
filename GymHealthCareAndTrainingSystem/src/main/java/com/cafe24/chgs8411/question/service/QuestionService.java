/* 김소희 2018-09-27 / QuestionService.java */
package com.cafe24.chgs8411.question.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class QuestionService {
	@Autowired
	private QuestionDao questionDao;
	
	public int addQuestion(Question question) {
		return questionDao.insertQuestion(question);
		
	}
}