//2018-10-11 김소희
package com.cafe24.chgs8411.answer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AnswerService {
	@Autowired
	private AnswerDao answerDao;
	
	// 답변 상세보기
	// 리턴 Answer 클래스 타입으로 selectDetailAnswer 메소드 선언 (int 타입 answer_no 매개변수)
	public Answer selectDetailAnswer (int answer_no) {
		return answerDao.selectDetailAnswer(answer_no);
		
	}
	// 답변 삭제
	// 리턴 int 타입으로 removeAnswer 메소드 선언 (int 타입으로 answer_no 매개변수)
	/*public int removeAnswer (int answer_no) {
		return answerDao.deleteAnswer(answer_no);
		
	}*/
	// 답변 수정
	// 리턴 int 타입으로 modifyAnswer 메소드 선언 (Answer 클래스 타입으로 answer 매개변수)
	public int modifyAnswer (Answer answer) {
		return answerDao.updateAnswer(answer);
		
	}
	// 답변 목록
	// 리턴 List<Answer> 클래스 타입으로 answerList 메소드 선언 (매개변수 없음)
	/*public List<Answer> answerList(){
		List<Answer> list = answerDao.selectAnswer();
		return answerDao.selectAnswer();
		
	}*/
	// 답변 등록
	// 리턴 int 타입으로 addAnswer 메소드 선언 (Answer 클래스 타입으로 answer 매개변수)
	public int addAnswer (Answer answer) {
		return answerDao.inserstAnswer(answer);
	
	}
}
