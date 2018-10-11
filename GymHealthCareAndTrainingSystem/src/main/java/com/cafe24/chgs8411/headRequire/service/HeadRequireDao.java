// 2018.10.08(월) 현희문

package com.cafe24.chgs8411.headRequire.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.chgs8411.healthclubsAdmin.service.HealthclubsAdmin;
import com.cafe24.chgs8411.member.service.Member;
import com.cafe24.chgs8411.trainer.service.Trainer;

@Repository
public class HeadRequireDao {
	private final String NS = "com.cafe24.chgs8411.headRequire.service.HeadRequireMapper.";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 본사 건의사항을 등록하기 위해 세션을 이용하여 회원 정보 조회 메서드
	public Member selectOneMemberForHeadRequire(int no) {
		return sqlSessionTemplate.selectOne(NS+"selectOneMemberForHeadRequire", no);
	}
	
	// 본사 건의사항을 등록하기 위해 세션을 이용하여 트레이너 정보 조회 메서드
	public Trainer selectOneTrainerForHeadRequire(int no) {
		return sqlSessionTemplate.selectOne(NS+"selectOneTrainerForHeadRequire", no);
	}
	
	// 본사 건의사항을 등록하기 위해 세션을 이용하여 체인점 관리자 정보 조회 메서드
	public HealthclubsAdmin selectOneAdminForHeadRequire(int no) {
		return sqlSessionTemplate.selectOne(NS+"selectOneAdminForHeadRequire", no);
	}

	// 본사 건의사항 등록 메서드
	public void insertHeadRequire(HeadRequire headRequire) {
		sqlSessionTemplate.insert(NS+"insertHeadRequire", headRequire);
	}
	
	// 본사 건의사항 전체목록 조회 메서드
	public List<HeadRequire> selectAllHeadRequire() {
		return sqlSessionTemplate.selectList(NS+"selectAllHeadRequire");
	}
	
	// 본사 건의사항 세부사항 조회 메서드
	public HeadRequire selectHeadRequireDetail(int headRequireNo) {
		return sqlSessionTemplate.selectOne(NS+"selectHeadRequireDetail", headRequireNo);
	}
	
	// 본사 건의사항 수정을 위한 조회 메서드
	public HeadRequire selectHeadRequireForUpdate(int headRequireNo) {
		return sqlSessionTemplate.selectOne(NS+"selectHeadRequireForUpdate", headRequireNo);
	}
	
	// 본사 건의사항 수정 메서드
	public void headRequireUpdate(HeadRequire headRequire) {
		sqlSessionTemplate.update(NS+"headRequireUpdate", headRequire);
	}
	
	// ***
	public List<HeadRequire> selectHeadRequireList(String name) {
		return sqlSessionTemplate.selectList(NS+"selectHeadRequireList", name);
	}
	
	// *** 본사 건의사항 삭제를 위한 비밀번호 조회 메서드
	public String selectMemberPasswordForDelete(int memberSessionNo) {
		return sqlSessionTemplate.selectOne(NS+"selectMemberPasswordForDelete", memberSessionNo);
	}
}