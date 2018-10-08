// 2018. 10. 08. 공세준
// 로그인 DAO

package com.cafe24.chgs8411.login.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.chgs8411.login.service.LoginDao;
import com.cafe24.chgs8411.trainer.service.Trainer;
import com.cafe24.chgs8411.healthclubsAdmin.service.HealthclubsAdmin;
import com.cafe24.chgs8411.join.service.Member;

//Repository 는 데이터 접근 계층 즉 DAO 라는 것을 알려주는 어노테이션
@Repository
public class LoginDao {
	
	// Autowired 는 스프링이 빈의 요구 사항과 매칭 되는 애플리케이션 컨텍스트상에서 다른 빈을 찾아 빈 간의 의존성을 자동으로 만족시키도록 하는 수단입니다.
	// SqlSessionTemplate 클래스타입으로 sqlSessionTemplate 변수를 선언합니다.
    // 쿼리를 불러오기 위해 사용합니다. 
	@Autowired SqlSessionTemplate sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginDao.class);
	
	// 쿼리를 가져오기 위해 경로를 저장 하는 참조타입 변수를 선언하고 final 로 고정하고 private 로 접근을 허용하지 않습니다.
	final String NS = "com.cafe24.chgs8411.login.service.LoginMapper.";
	
	
    // 설명 : login 메서드명으로 호출하면 member 객체를 받아 DB에 접근하여 데이터 존재 여부를 search 합니다.
    // 매개변수 : 매개변수는 Member 클래스 타입으로 회원 정보를 받습니다.
    // 리턴타입 : 리턴 타입은 int 기본 타입으로 쿼리의 실행 여부를 1과 0으로 리턴합니다.
	public int login(Member member) {
		return sqlSession.selectOne(NS+"login",member);
	}
	
	// 설명 : loginSession 메서드명으로 호출하면 String memberId 를 받아서 DB에 접근하여 데이터 존재 여부를 확인하고 세션정보를 받아옵니다.
    // 매개변수 : 매개변수는 String 참조타입으로 memberId륿 받습니다.
	// 리턴타입 : 리턴 타입은 Login 클래스 타입으로 회원 세션정보를 리턴합니다.
	public Login loginSession(String memberId){
		return sqlSession.selectOne(NS+"loginSession",memberId);
	}
	
	// 설명 : adminLogin 메서드명으로 호출하면 HealthclubsAdmin 클래스 타입으로 관리자 로그인 정보를 받아서 DB에 접근하여 데이터 존재 여부를 search 합니다.
	// 매개변수 : 매개변수는 HealthclubsAdmin 클래스 타입으로 관리자 로그인 정보를 받습니다. 
	// 리턴타입 : 리턴 타입은 int타입으로 쿼리의 실행 여부를 1과 0으로 리턴합니다.
	public int adminLogin(HealthclubsAdmin healthclubsAdmin) {
		return sqlSession.selectOne(NS+"adminLogin",healthclubsAdmin);
		
	}
	
	// 설명 : adminLoginSession 메서드명으로 String adminId를 받아서 DB에 접근하여 데이터 존재 여부를 확인하고 세션정보를 받아옵니다.
	// 매개변수 : 매개변수는 String 참조 타입으로 adminId 를 받습니다.
	// 리턴타입 : 리턴 타입은 Login 클래스 타입으로 관리자의 세션정보를 리턴합니다.
	public Login adminLoginSession(String adminId){
		return sqlSession.selectOne(NS+"adminLoginSession", adminId);
	}
	
	// 설명 : trainerLogin 메서드명으로 호출하면 HealthclubsAdmin 클래스 타입으로 관리자 로그인 정보를 받아서 DB에 접근하여 데이터 존재 여부를 search 합니다.
	// 매개변수 : 매개변수는 Trainer 클래스 타입으로 관리자 로그인 정보를 받습니다. 
	// 리턴타입 : 리턴 타입은 int타입으로 쿼리의 실행 여부를 1과 0으로 리턴합니다.
	public int trainerLogin(Trainer trainer) {
		return sqlSession.selectOne(NS+"trainerLogin",trainer);
		
	}
	
	// 설명 : trainerLoginSession 메서드명으로 String trainerId를 받아서 DB에 접근하여 데이터 존재 여부를 확인하고 세션정보를 받아옵니다.
	// 매개변수 : 매개변수는 String 참조 타입으로 trainerId 를 받습니다.
	// 리턴타입 : 리턴 타입은 Login 클래스 타입으로 관리자의 세션정보를 리턴합니다.
	public Login trainerLoginSession(String trainerId){
		return sqlSession.selectOne(NS+"trainerLoginSession",trainerId);
	}
	
}
