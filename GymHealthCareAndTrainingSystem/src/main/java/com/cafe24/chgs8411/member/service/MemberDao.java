// 18.10.05 최지수
package com.cafe24.chgs8411.member.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.chgs8411.healthclubs.service.Healthclubs;

@Repository
public class MemberDao {
	private final String NS = "com.cafe24.chgs8411.member.service.MemberMapper.";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 회원수정처리 메서드
	public int updateMember(Member member) {
		return sqlSessionTemplate.update(NS+"updateMember", member);
	}
	
	// 회원정보 + 헬스장 정보 조인해서 조회 메서드(수정폼에 뿌려줌)
	public MemberAndHealthclubs selectMemberAndHealthclubs(int member_no){
		return sqlSessionTemplate.selectOne(NS+"selectMemberAndHealthclubs", member_no);
	}
	
	// 헬스장 전체조회 메서드(회원수정시 헬스장 선택)
	public List<Healthclubs> selectHealthclubs(){
		return sqlSessionTemplate.selectList(NS+"selectHealthclubs");
	}
	
	// 회원 세부조회 메서드
	public Member selectMemberDetail(int member_no) {
		return sqlSessionTemplate.selectOne(NS+"selectMemberDetail", member_no);
	}
	
	// 회원 전체조회 메서드
	public List<Member> selectMemberList(){
		return sqlSessionTemplate.selectList(NS+"selectMemberList");
	}
}
