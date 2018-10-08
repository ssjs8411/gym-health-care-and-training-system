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
	
	//�ü� �߰�
	public int healthclubsFacilitiesinsert(HealthclubsFacilities healthclubsFailities) {
		return sqlsessionTemplate.insert(ns+"insertHealthclubsFacilities",healthclubsFailities);
	}
	
	//�ü� ����Ʈ
	public List<HealthclubsFacilities> healthclubsFacilitiesSelectList() {
		return sqlsessionTemplate.selectList(ns+"selectListHealthclubsFacilities");
	}
	//Ư�� �ü� ��ȸ
	public HealthclubsFacilities healthclubsFacilitiesUpdate(int healthclubs_facilities_no) {
		return sqlsessionTemplate.selectOne(ns+"selectHealthblubsFailities",healthclubs_facilities_no);
	}
	
	//�ü� ����
	public int healthclubsFacilitiesUpdate(HealthclubsFacilities healthclubsFailities) {
		return sqlsessionTemplate.update(ns+"updateHealthclubsFacilities", healthclubsFailities);
	}
	
}
