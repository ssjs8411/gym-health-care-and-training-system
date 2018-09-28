/* 김소희 2018-09-27 / QuestionDao */
package com.cafe24.chgs8411.question.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QuestionDao {
	private final String NS = "com.cafe24.chgs8411.question.service.QuestionMapper.";
	
	@Autowired private SqlSessionTemplate sqlSessionTemplate;
	
	public int insertQuestion (Question question) {
		return sqlSessionTemplate.insert(NS+"insertQuestion", question);
		
	}
	
}