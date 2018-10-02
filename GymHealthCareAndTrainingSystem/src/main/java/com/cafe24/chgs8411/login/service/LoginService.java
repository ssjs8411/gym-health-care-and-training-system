package com.cafe24.chgs8411.login.service;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.chgs8411.login.service.LoginDao;
import com.cafe24.chgs8411.login.service.LoginService;
import com.cafe24.chgs8411.join.service.Member;

@Service
@Transactional
public class LoginService {
	
	@Autowired LoginDao loginDao;
	private static final Logger logger = LoggerFactory.getLogger(LoginService.class);
	
	public Map<String,Object> login(Member member) {
		
		Map<String,Object> map= new HashMap<String,Object>();
		int result=loginDao.login(member);
		
		String memberId=member.getMember_id();
		
		if(result==1) {
			Member memberSession=loginDao.loginSession(memberId);
			map.put("memberSessionName", memberSession.getMember_name());
			map.put("memberSessionNo", memberSession.getMember_no());
		}
		map.put("result",result);
		return map;
	}
}