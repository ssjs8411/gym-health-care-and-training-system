// 18.09.27 ������
package com.cafe24.chgs8411.healthclubs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class HealthclubsService {
	@Autowired
	private HealthclubsDao healthclubsDao;
	
	// �ｺ�� ��ü��ȸ �޼���
	public List<Healthclubs> getHealthclubsList(){
		return healthclubsDao.selectHealthclubs();
	}
	
	// �ｺ�� ��� �޼���
	public int addHealthclubs(Healthclubs healthclubs) {
		return healthclubsDao.insertHealthclubs(healthclubs);
	}
}
