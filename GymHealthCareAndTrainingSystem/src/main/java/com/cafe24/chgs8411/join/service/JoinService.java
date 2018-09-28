// 18.09.28 ������
package com.cafe24.chgs8411.join.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.chgs8411.healthclubs.service.Healthclubs;

@Service
@Transactional
public class JoinService {
	@Autowired
	private JoinDao joinDao;
	
	// �ｺ�� ��ü��ȸ �޼���(ȸ����Ͻ� �ｺ�� ����)
	public List<Healthclubs> getHealthclubsList(){
		return joinDao.selectHealthclubs();
	}
	
	// ȸ����� �޼���
	public int addMember(Member member) {
		return joinDao.insertMmeber(member);
	}
}
