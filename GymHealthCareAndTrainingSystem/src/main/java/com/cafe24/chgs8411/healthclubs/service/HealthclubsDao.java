// 18.09.27 ������
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
	
	// �ｺ�� ��ü ��ȸ �޼���
	public List<Healthclubs> selectHealthclubs(){
		return sqlSessionTemplate.selectList(NS+"selectHealthclubs");
	}
	
	// �ｺ�� ��� �޼���
	public int insertHealthclubs(Healthclubs Healthclubs) {
		return sqlSessionTemplate.insert(NS+"insertHealthclubs", Healthclubs);
	}
}
