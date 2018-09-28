// 18.09.28 최지수
package com.cafe24.chgs8411.join.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.chgs8411.healthclubs.service.Healthclubs;

@Service
@Transactional
public class JoinService {
	@Autowired
	private JoinDao joinDao;
	
	// 헬스장 전체조회 메서드(회원등록시 헬스장 선택)
	public List<Healthclubs> getHealthclubsList(){
		return joinDao.selectHealthclubs();
	}
	
	// 회원등록 메서드
	public int addMember(Member member) {
		return joinDao.insertMmeber(member);
	}
}
