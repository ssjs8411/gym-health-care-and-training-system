// 18.10.05 ������
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
	
	// ȸ������ó�� �޼���
	public int updateMember(Member member) {
		return sqlSessionTemplate.update(NS+"updateMember", member);
	}
	
	// ȸ������ + �ｺ�� ���� �����ؼ� ��ȸ �޼���(�������� �ѷ���)
	public MemberAndHealthclubs selectMemberAndHealthclubs(int member_no){
		return sqlSessionTemplate.selectOne(NS+"selectMemberAndHealthclubs", member_no);
	}
	
	// �ｺ�� ��ü��ȸ �޼���(ȸ�������� �ｺ�� ����)
	public List<Healthclubs> selectHealthclubs(){
		return sqlSessionTemplate.selectList(NS+"selectHealthclubs");
	}
	
	// ȸ�� ������ȸ �޼���
	public Member selectMemberDetail(int member_no) {
		return sqlSessionTemplate.selectOne(NS+"selectMemberDetail", member_no);
	}
	
	// ȸ�� ��ü��ȸ �޼���
	public List<Member> selectMemberList(){
		return sqlSessionTemplate.selectList(NS+"selectMemberList");
	}
}
