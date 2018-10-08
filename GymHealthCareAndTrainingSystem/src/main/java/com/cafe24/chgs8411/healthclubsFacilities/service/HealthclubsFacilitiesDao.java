package com.cafe24.chgs8411.healthclubsFacilities.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HealthclubsFacilitiesDao {

	private final String ns="com.cafe24.chgs8411.healthclubsFacilities.service.HealthclubsFacilitiesMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlsessionTemplate;
	
	//시설 추가
	public int healthclubsFacilitiesinsert(HealthclubsFacilities healthclubsFailities) {
		return sqlsessionTemplate.insert(ns+"insertHealthclubsFacilities",healthclubsFailities);
	}
	
	//시설 리스트
	public List<HealthclubsFacilities> healthclubsFacilitiesSelectList() {
		return sqlsessionTemplate.selectList(ns+"selectListHealthclubsFacilities");
	}
	//특정 시설 조회
	public HealthclubsFacilities healthclubsFacilitiesUpdate(int healthclubs_facilities_no) {
		return sqlsessionTemplate.selectOne(ns+"selectHealthblubsFailities",healthclubs_facilities_no);
	}
	
	//시설 수정
	public int healthclubsFacilitiesUpdate(HealthclubsFacilities healthclubsFailities) {
		return sqlsessionTemplate.update(ns+"updateHealthclubsFacilities", healthclubsFailities);
	}
	
}
