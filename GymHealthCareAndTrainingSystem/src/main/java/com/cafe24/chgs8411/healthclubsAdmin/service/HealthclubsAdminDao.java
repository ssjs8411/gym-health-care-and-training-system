// 18.10.01 최지수
package com.cafe24.chgs8411.healthclubsAdmin.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.chgs8411.healthclubs.service.Healthclubs;

@Repository
public class HealthclubsAdminDao {
	private final String NS = "com.cafe24.chgs8411.healthclubsAdmin.service.healthclubsAdminMapper.";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 헬스장 전체조회 메서드(회원등록시 헬스장 선택)
		public List<Healthclubs> selectHealthclubs(){
			return sqlSessionTemplate.selectList(NS+"selectHealthclubs");
		}
		
	// 관리자 등록 메서드
		public int insertHealthclubsAdmin(HealthclubsAdmin healthclubsAdmin) {
			return sqlSessionTemplate.insert(NS+"insertHealthclubsAdmin", healthclubsAdmin);
		}
}
