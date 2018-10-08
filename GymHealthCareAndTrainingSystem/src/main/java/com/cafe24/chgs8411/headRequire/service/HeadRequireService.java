// 2018.10.08(월) 현희문

package com.cafe24.chgs8411.headRequire.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.chgs8411.healthclubsAdmin.service.HealthclubsAdmin;
import com.cafe24.chgs8411.member.service.Member;
import com.cafe24.chgs8411.trainer.service.Trainer;

@Service
@Transactional
public class HeadRequireService {
	@Autowired
	private HeadRequireDao headRequireDao;
	
	public Member selectOneMemberForHeadRequire(int no) {
		return headRequireDao.selectOneMemberForHeadRequire(no);
	}
	
	public Trainer selectOneTrainerForHeadRequire(int no) {
		return headRequireDao.selectOneTrainerForHeadRequire(no);
	}
	
	public HealthclubsAdmin selectOneAdminForHeadRequire(int no) {
		return headRequireDao.selectOneAdminForHeadRequire(no);
	}

	public void insertHeadRequire(HeadRequire headRequire) {
		
		headRequireDao.insertHeadRequire(headRequire);
	}
}