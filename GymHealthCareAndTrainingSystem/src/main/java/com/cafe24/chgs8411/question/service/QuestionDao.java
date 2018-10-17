/* 김소희 2018-09-27 / QuestionDao */
package com.cafe24.chgs8411.question.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.chgs8411.healthclubsAdmin.service.HealthclubsAdmin;
import com.cafe24.chgs8411.member.service.Member;

@Repository
public class QuestionDao {
	private final String NS = "com.cafe24.chgs8411.question.service.QuestionMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 질문 상세보기
	public Question selectDetailQuestion (int question_no) {
		return sqlSessionTemplate.selectOne(NS+"selectDetailQuestion", question_no);
		
	}
	

	// 멤버 비밀번호 조회
	public String selectMemberPasswordDelete (int memberSessionNo) {
		return sqlSessionTemplate.selectOne(NS+"selectMemberPasswordDelete", memberSessionNo);
		
		
	}
	// 관리자 비밀번호 조회
	public String selectAdminPasswordDelete (int adminSessionNo) {
		return sqlSessionTemplate.selectOne(NS+"selectAdminPasswordDelete", adminSessionNo);
		
	}
	
	// 질문 삭제 
	public void deleteQuestion (int question_no) {
		sqlSessionTemplate.delete(NS+"deleteQuestion", question_no);
		
	}
	
	// 질문 수정
	public int updateQuestion (Question question) {
		return sqlSessionTemplate.update(NS+"updateQustion", question);
		
	}
	
	// 질문 목록
	public List<Question> selectQuestion() {
		return sqlSessionTemplate.selectList(NS+"selectQuestion");
		
	}
	
	/*// 세션으로 회원 확인 후 질문 등록
	public Member selectMemberQuestion (int no) {
		return sqlSessionTemplate.selectOne(NS+"selectMemberQuestion", no);
	}*/

	// 질문 등록
	public void insertQuestion (Question question) {
		sqlSessionTemplate.insert(NS+"insertQuestion", question);
		
	}
	
	
}
