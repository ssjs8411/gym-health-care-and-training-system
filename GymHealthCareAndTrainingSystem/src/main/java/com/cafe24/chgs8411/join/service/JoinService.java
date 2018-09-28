package com.cafe24.chgs8411.join.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class JoinService {
	@Autowired
	private JoinDao joinDao;
	
	public int addMember(Member member) {
		return joinDao.insertMmeber(member);
	}
}
