package com.cafe24.chgs8411.login.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.chgs8411.login.service.LoginDao;
import com.cafe24.chgs8411.join.service.Member;

@Repository
public class LoginDao {
	@Autowired SqlSessionTemplate sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginDao.class);
	final String NS = "com.cafe24.chgs8411.login.service.LoginMapper.";
	
	
	public int login(Member member) {
		return sqlSession.selectOne(NS+"login",member);
		
	}
	public Member loginSession(String id){
		return sqlSession.selectOne(NS+"loginSession",id);
	}
}
