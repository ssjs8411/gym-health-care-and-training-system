// 18.10.01 최지수
package com.cafe24.chgs8411.healthclubsAdmin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.chgs8411.healthclubs.service.Healthclubs;

@Service
@Transactional
public class HealthclubsAdminService {
	@Autowired
	private HealthclubsAdminDao healthclubsAdminDao;
	
	// 헬스장 전체조회 메서드(회원등록시 헬스장 선택)
		public List<Healthclubs> getHealthclubsList(){
			return healthclubsAdminDao.selectHealthclubs();
		}
	
	// 관리자 등록 메서드
		public int addHealthclubsAdmin(HealthclubsAdmin healthclubsAdmin) {
			return healthclubsAdminDao.insertHealthclubsAdmin(healthclubsAdmin);
		}
}
