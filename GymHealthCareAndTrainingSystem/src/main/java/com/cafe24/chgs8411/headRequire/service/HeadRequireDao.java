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
	
	public Member selectOneMemberForHeadRequire(int no) {
		return sqlSessionTemplate.selectOne(NS+"selectOneMemberForHeadRequire", no);
	}
	
	public Trainer selectOneTrainerForHeadRequire(int no) {
		return sqlSessionTemplate.selectOne(NS+"selectOneTrainerForHeadRequire", no);
	}
	
	public HealthclubsAdmin selectOneAdminForHeadRequire(int no) {
		return sqlSessionTemplate.selectOne(NS+"selectOneAdminForHeadRequire", no);
	}

	public void insertHeadRequire(HeadRequire headRequire) {
		sqlSessionTemplate.insert(NS+"insertHeadRequire", headRequire);
	}
	
	public List<HeadRequire> selectAllHeadRequire() {
		return sqlSessionTemplate.selectList(NS+"selectAllHeadRequire");
	}
	
	public HeadRequire selectHeadRequireDetail(int headRequireNo) {
		return sqlSessionTemplate.selectOne(NS+"selectHeadRequireDetail", headRequireNo);
	}
}