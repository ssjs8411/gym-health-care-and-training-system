// 18.10.05 최지수
package com.cafe24.chgs8411.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.chgs8411.healthclubs.service.Healthclubs;

@Service
@Transactional
public class MemberService {
	@Autowired
	private MemberDao memberDao;
	
	// 회원정보 수정처리 메서드
	public int updateMember(Member member) {
		return memberDao.updateMember(member);
	}
	
	// 회원정보와 헬스장정보 조인해서 조회(수정폼에 뿌려줌)
	public MemberAndHealthclubs selectMemberAndHealthclubs(int member_no){
		return memberDao.selectMemberAndHealthclubs(member_no);
	}
	
	// 헬스장 전체조회 메서드(회원수정시 헬스장 선택)
	public List<Healthclubs> selectHealthclubsList(){
		return memberDao.selectHealthclubs();
	}
	
	// 회원 세부조회 메서드
	public Member selectMemberDetail(int member_no) {
		return memberDao.selectMemberDetail(member_no);
	}
	// 회원 전체조회 메서드
	public List<Member> selectMemberList(){
		return memberDao.selectMemberList();
	}
}
