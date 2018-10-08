package com.cafe24.chgs8411.login.service;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.chgs8411.login.service.LoginDao;
import com.cafe24.chgs8411.login.service.LoginService;
import com.cafe24.chgs8411.trainer.service.Trainer;
import com.cafe24.chgs8411.healthclubsAdmin.service.HealthclubsAdmin;
import com.cafe24.chgs8411.join.service.Member;

// 회원, 관리자, 트레이너의 로그인 및 세션처리 하는 service 입니다.
@Service
@Transactional
public class LoginService {
	
	// Autowired 어노테이션으로 LoginDao 빈을 연결합니다.
	@Autowired LoginDao loginDao;
	private static final Logger logger = LoggerFactory.getLogger(LoginService.class);
	
	
	// 설명 : login 메서드를 호출하면 Member 클래스 타입으로 회원정보를 받아 DB연결 및 데이터 처리후 세션정보를 받아오는 메서드 입니다.
	// 매개변수 : Member 클래스 타입으로 회원 로그인 정보를 받습니다.
	// 리턴타입 :  Map<String,Object> 타입으로 회원 세션정보를 리턴합니다.
	public Map<String,Object> login(Member member) {
		
		Map<String,Object> map= new HashMap<String,Object>();
		int result=loginDao.login(member);
		
		String memberId=member.getMember_id();
		
		if(result==1) {
			Login memberSession=loginDao.loginSession(memberId);
			map.put("memberSessionName", memberSession.getMember_name());
			map.put("memberSessionNo", memberSession.getMember_no());
			map.put("healthclubsName", memberSession.getHealthclubs_name());
		}
		map.put("result",result);
		return map;
	}
	
	// 설명 : adminLogin 메서드를 호출하면  HealthclubsAdmin 클래스 타입으로 관리자 로그인 정보를 받아 DB연결 및 데이터 처리후 세션정보를 받아오는 메서드 입니다.
	// 매개변수 : HealthclubsAdmin 클래스 타입으로 관리자 로그인 정보를 받습니다.
	// 리턴타입 : Map<String,Object> 타입으로 관리자 세션정보를 리턴합니다.
	public Map<String,Object> adminLogin(HealthclubsAdmin healthclubsAdmin) {
		
		Map<String,Object> map= new HashMap<String,Object>();
		int result=loginDao.adminLogin(healthclubsAdmin);
		
		String adminId=healthclubsAdmin.getHealthclubs_admin_id();
		
		if(result==1) {
			Login adminSession=loginDao.adminLoginSession(adminId);
			map.put("adminSessionName", adminSession.getHealthclubs_admin_name());
			map.put("adminSessionNo", adminSession.getHealthclubs_admin_no());
			map.put("healthclubsName", adminSession.getHealthclubs_name());
		}
		map.put("result",result);
		return map;
	}
	
	// 설명 : trainerLogin 메서드를 호출하면 Trainer 클래스 타입으로 트레이너 로그인 정보를 받아 DB연결 및 데이터 처리후 세션정보를 받아오는 메서드입니다.
	// 매개변수 : Trainer 클래스 타입으로 트레이너 정보를 받습니다.
	// 리턴타입 : Map<String,Object> 타입으로 트레이너 세션정보를 리턴합니다.
	public Map<String,Object> trainerLogin(Trainer trainer) {
		
		Map<String,Object> map= new HashMap<String,Object>();
		int result=loginDao.trainerLogin(trainer);
		
		String trainerId=trainer.getTrainer_id();
		
		if(result==1) {
			Login trainerSession=loginDao.trainerLoginSession(trainerId);
			map.put("trainerSessionName", trainerSession.getTrainer_name());
			map.put("trainerSessionNo", trainerSession.getTrainer_no());
			map.put("healthclubsName", trainerSession.getHealthclubs_name());
		}
		map.put("result",result);
		return map;
	}
}