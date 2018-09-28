// 18.09.28 ������
package com.cafe24.chgs8411.join.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.chgs8411.healthclubs.service.Healthclubs;

@Repository
public class JoinDao {
	private final String NS = "com.cafe24.chgs8411.join.service.JoinMapper.";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// �ｺ�� ��ü��ȸ �޼���(ȸ����Ͻ� �ｺ�� ����)
	public List<Healthclubs> selectHealthclubs(){
		return sqlSessionTemplate.selectList(NS+"selectHealthclubs");
	}
	
	// ȸ����� �޼���
	public int insertMmeber(Member member) {
		return sqlSessionTemplate.insert(NS+"insertMember", member);
	}
}
