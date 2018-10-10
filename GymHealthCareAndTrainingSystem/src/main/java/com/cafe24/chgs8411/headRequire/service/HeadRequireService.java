// 2018.10.08(월) 현희문

package com.cafe24.chgs8411.headRequire.service;

import java.util.List;

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
	
	// 본사 건의사항을 등록하기 위해 세션을 이용하여 회원 정보 조회 메서드
	public Member selectOneMemberForHeadRequire(int no) {
		return headRequireDao.selectOneMemberForHeadRequire(no);
	}
	
	// 본사 건의사항을 등록하기 위해 세션을 이용하여 트레이너 정보 조회 메서드
	public Trainer selectOneTrainerForHeadRequire(int no) {
		return headRequireDao.selectOneTrainerForHeadRequire(no);
	}
	
	// 본사 건의사항을 등록하기 위해 세션을 이용하여 체인점 관리자 정보 조회 메서드
	public HealthclubsAdmin selectOneAdminForHeadRequire(int no) {
		return headRequireDao.selectOneAdminForHeadRequire(no);
	}
	
	// 본사 건의사항 등록 메서드
	public void insertHeadRequire(HeadRequire headRequire) {
		headRequireDao.insertHeadRequire(headRequire);
	}
	
	// 본사 건의사항 전체목록 조회 메서드
	public List<HeadRequire> selectAllHeadRequire() {
		return headRequireDao.selectAllHeadRequire();
	}
	
	// 본사 건의사항 세부사항 조회 메서드
	public HeadRequire selectHeadRequireDetail(int headRequireNo) {
		return headRequireDao.selectHeadRequireDetail(headRequireNo);
	}
	
	// 본사 건의사항 수정을 위한 조회 메서드
	public HeadRequire selectHeadRequireUpdate(int headRequireNo) {
		return headRequireDao.selectHeadRequireDetail(headRequireNo);
	}
	
	// 본사 건의사항 수정 메서드
	public void headRequireUpdate(HeadRequire headRequire) {
		headRequireDao.headRequireUpdate(headRequire);
	}
}