/* 김소희 2018-09-27 / QuestionService.java */
package com.cafe24.chgs8411.question.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.chgs8411.healthclubsAdmin.service.HealthclubsAdmin;
import com.cafe24.chgs8411.member.service.Member;
import com.cafe24.chgs8411.trainer.service.Trainer;

@Service
@Transactional
public class QuestionService {
	@Autowired
	private QuestionDao questionDao;
	
	// 질문 상세보기 메서드
	public Question selectDetailQuestion (int question_no) {
		return questionDao.selectDetailQuestion(question_no);
		
	}
	

	// 멤버 비밀번호 조회 후 질문 삭제 메서드
	public int selectMemberPasswordDelete (String member_pw, int memberSessionNo, int question_no) {
		String checkPassword = questionDao.selectMemberPasswordDelete(memberSessionNo);
		if(member_pw.equals(checkPassword)) {
			questionDao.deleteQuestion(question_no);
			return 1;
		}else {
			return 0;
		}
	}
	
	// 관리자 비밀번호 조회 후 질문 삭제 메서드
	public int selectAdminPasswordDelete(String healthclubs_admin_pw, int adminSessionNo, int question_no) {
		String checkPassword = questionDao.selectAdminPasswordDelete(adminSessionNo);
		
		if(healthclubs_admin_pw.equals(checkPassword)) {
			questionDao.deleteQuestion(question_no);
			return 1;
		}else {
			return 0;
		}
	}
	
	// 질문 수정 메서드
	public int modifyQuestion (Question question) {
		return questionDao.updateQuestion(question);
			
	}
	
	
	// 질문 목록 메서드
	public List<Question> questionList(){
		List<Question> list = questionDao.selectQuestion();
		return questionDao.selectQuestion();
		
	}
	
	/*// 세션으로 회원 정보 조회 후 질문 등록
	public Member selectMemberQuestion (int no) {
		return questionDao.selectMemberQuestion(no);
		
	}*/
		
	
	// 질문 등록 메서드
	public void addQuestion(Question question) {
		 questionDao.insertQuestion(question);
		
	}

}
