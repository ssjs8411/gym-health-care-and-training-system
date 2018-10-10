/* 김소희 2018-09-27 / QuestionDao */
package com.cafe24.chgs8411.question.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QuestionDao {
	private final String NS = "com.cafe24.chgs8411.question.service.QuestionMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 질문 상세보기
	public Question selectDetailQuestion (int question_no) {
		return sqlSessionTemplate.selectOne(NS+"selectDetailQuestion", question_no);
		
	}
	// 질문 삭제
	/*public int deleteQuestion (Question question) {
		return sqlSessionTemplate.delete(NS+"deleteQuestion", question);
		
	}*/
	public int deleteQuestion (int question_no) {
		return sqlSessionTemplate.delete(NS+"deleteQuestion",+question_no);
		
	}
	
	// 질문 수정
	public int updateQuestion (Question question) {
		return sqlSessionTemplate.update(NS+"updateQustion", question);
		
	}
	// 질문 목록 페이징
	public List<Question> questionListTest (int pageNum, int contentNum) {
		return sqlSessionTemplate.selectList(NS+"questionListTest");
	}

	// 질문 개수 카운트 (페이징 작업 에 필요)
	public int questionCount() {
		return sqlSessionTemplate.selectOne(NS+"questionCount");
		
	}
	// 짊문 목록
	public List<Question> selectQuestion() {
		return sqlSessionTemplate.selectList(NS+"selectQuestion");
		
	}
	// 질문 등록
	public int insertQuestion (Question question) {
		return sqlSessionTemplate.insert(NS+"insertQuestion", question);
		
	}
	
	
}
