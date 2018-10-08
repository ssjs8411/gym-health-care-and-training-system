// 18.10.05 ������
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
	
	// ȸ������ ����ó�� �޼���
	public int updateMember(Member member) {
		return memberDao.updateMember(member);
	}
	
	// ȸ�������� �ｺ������ �����ؼ� ��ȸ(�������� �ѷ���)
	public MemberAndHealthclubs selectMemberAndHealthclubs(int member_no){
		return memberDao.selectMemberAndHealthclubs(member_no);
	}
	
	// �ｺ�� ��ü��ȸ �޼���(ȸ�������� �ｺ�� ����)
	public List<Healthclubs> selectHealthclubsList(){
		return memberDao.selectHealthclubs();
	}
	
	// ȸ�� ������ȸ �޼���
	public Member selectMemberDetail(int member_no) {
		return memberDao.selectMemberDetail(member_no);
	}
	// ȸ�� ��ü��ȸ �޼���
	public List<Member> selectMemberList(){
		return memberDao.selectMemberList();
	}
}
