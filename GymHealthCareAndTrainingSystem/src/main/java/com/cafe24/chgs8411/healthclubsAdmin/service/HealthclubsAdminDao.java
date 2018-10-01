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
	
	// 헬스장 관리자 전체 조회 메서드
		public List<HealthclubsAdmin> selectHealthclubsAdminList(){
			return sqlSessionTemplate.selectList(NS+"selectHealthclubsAdminList");
		}
	
	// 헬스장 관리자 수정 메서드
		public int updateHealthclubsAdmin(HealthclubsAdmin healthclubsAdmin) {
			return sqlSessionTemplate.update(NS+"updateHealthclubsAdmin", healthclubsAdmin);
		}
	
	// 헬스장 관리자 1명의 정보 조회 메서드
		public HealthclubsAdmin selectHealthclubsAdmin(int healthclubs_admin_no) {
			return sqlSessionTemplate.selectOne(NS+"selectHealthclubsAdmin", healthclubs_admin_no);
		}
	
	// 헬스장 전체조회 메서드(회원등록시 헬스장 선택)
		public List<Healthclubs> selectHealthclubs(){
			return sqlSessionTemplate.selectList(NS+"selectHealthclubs");
		}
		
	// 관리자 등록 메서드
		public int insertHealthclubsAdmin(HealthclubsAdmin healthclubsAdmin) {
			return sqlSessionTemplate.insert(NS+"insertHealthclubsAdmin", healthclubsAdmin);
		}
}
