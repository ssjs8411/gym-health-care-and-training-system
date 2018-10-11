//2018-10-11 김소희
package com.cafe24.chgs8411.answer.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AnswerDao {
	private final String NS = "com.cafe24.chgs8411.answer.service.AnswerMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 답변 상세보기
	public Answer selectDetailAnswer (int answer_no) {
		return sqlSessionTemplate.selectOne(NS+"selectDetailAnswer", answer_no);
		
	}
	// 답변 삭제
	public int deleteAnswer (int answer_no) {
		return sqlSessionTemplate.delete(NS+"deleteAnswer", answer_no);
		
	}
	
	// 답변 수정
	public int updateAnswer (Answer answer) {
		return sqlSessionTemplate.update(NS+"updateAnswer", answer);
		
	}
	
	// 답변 목록
	public List<Answer> selectAnswer (){
		return sqlSessionTemplate.selectList(NS+"selectAnswer");
		
	}
	// 답변 등록
	public int inserstAnswer (Answer answer) {
		return sqlSessionTemplate.insert(NS+"insertAnswer", answer);
		
	}

}
