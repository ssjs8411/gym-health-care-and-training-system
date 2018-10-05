// 18.10.05 최지수
package com.cafe24.chgs8411.member.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	private final String NS = "com.cafe24.chgs8411.member.service.MemberMapper.";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 회원 세부조회 메서드
	public Member selectMemberDetail(int member_no) {
		return sqlSessionTemplate.selectOne(NS+"selectMemberDetail", member_no);
	}
	
	// 회원 전체조회 메서드
	public List<Member> selectMemberList(){
		return sqlSessionTemplate.selectList(NS+"selectMemberList");
	}
}
