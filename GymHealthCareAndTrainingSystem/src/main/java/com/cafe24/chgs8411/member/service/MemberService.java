// 18.10.05 ������
package com.cafe24.chgs8411.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MemberService {
	@Autowired
	private MemberDao memberDao;
	
	// ȸ�� ������ȸ �޼���
	public Member selectMemberDetail(int member_no) {
		return memberDao.selectMemberDetail(member_no);
	}
	// ȸ�� ��ü��ȸ �޼���
	public List<Member> selectMemberList(){
		return memberDao.selectMemberList();
	}
}
