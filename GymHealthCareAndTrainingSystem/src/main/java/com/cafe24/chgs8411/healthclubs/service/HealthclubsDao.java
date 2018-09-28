// 18.09.27 최지수
package com.cafe24.
chgs8411.healthclubs.service;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HealthclubsDao {
	private final String NS = "com.cafe24.chgs8411.healthclubs.service.HealthclubsMapper.";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 헬스장 전체 조회 메서드
	public List<Healthclubs> selectHealthclubs(){
		return sqlSessionTemplate.selectList(NS+"selectHealthclubs");
	}
	
	// 헬스장 등록 메서드
	public int insertHealthclubs(Healthclubs Healthclubs) {
		return sqlSessionTemplate.insert(NS+"insertHealthclubs", Healthclubs);
	}
}
