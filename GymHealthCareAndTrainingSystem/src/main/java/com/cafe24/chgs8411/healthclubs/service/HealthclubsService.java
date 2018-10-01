// 18.09.27 최지수
package com.cafe24.chgs8411.healthclubs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class HealthclubsService {
	@Autowired
	private HealthclubsDao healthclubsDao;
	
	// 헬스장 수정 메서드
	public int updateHealthclubs(Healthclubs healthclubs) {
		return healthclubsDao.updateHealthclubs(healthclubs);
	}
	
	// 헬스장 세부조회 메서드
	public Healthclubs selectHealthclubsDetail(int healthclubs_no) {
		return healthclubsDao.selectHealthclubsDetail(healthclubs_no);
	}
	
	// 헬스장 전체조회 메서드
	public List<Healthclubs> getHealthclubsList(){
		return healthclubsDao.selectHealthclubs();
	}
	
	// 헬스장 등록 메서드
	public int addHealthclubs(Healthclubs healthclubs) {
		return healthclubsDao.insertHealthclubs(healthclubs);
	}
}
