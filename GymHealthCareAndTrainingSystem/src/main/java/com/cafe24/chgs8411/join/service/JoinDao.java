package com.cafe24.chgs8411.join.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class JoinDao {
	private final String NS = "com.cafe24.chgs8411.join.service.JoinMapper.";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int insertMmeber(Member member) {
		return sqlSessionTemplate.insert(NS+"insertMember", member);
	}
}
