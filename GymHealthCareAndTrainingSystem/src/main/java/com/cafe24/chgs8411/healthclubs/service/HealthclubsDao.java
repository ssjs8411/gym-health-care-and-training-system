// 18.09.27 ÃÖÁö¼ö
package com.cafe24.
chgs8411.healthclubs.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HealthclubsDao {
	private final String NS = "com.cafe24.chgs8411.healthclubs.service.HealthclubsMapper.";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int insertHealthclubs(Healthclubs Healthclubs) {
		return sqlSessionTemplate.insert(NS+"insertHealthclubs", Healthclubs);
	}
}
