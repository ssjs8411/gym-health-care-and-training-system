package com.cafe24.chgs8411.healthclubsFacilities.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HealthclubsFacilitiesDao {

	private final String ns="com.cafe24.chgs8411.healthclubsFacilities.service.HealthclubsFacilitiesMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlsessionTemplate;
	
	public int healthclubsFacilitiesinsert(HealthclubsFacilities healthclubsFailities) {
		return sqlsessionTemplate.insert(ns+"insertHealthclubsFacilities",healthclubsFailities);
	}
	
	public List<HealthclubsFacilities> healthclubsFacilitiesSelectList() {
		return sqlsessionTemplate.selectList(ns+"selectListHealthclubsFacilities");
	}
}
