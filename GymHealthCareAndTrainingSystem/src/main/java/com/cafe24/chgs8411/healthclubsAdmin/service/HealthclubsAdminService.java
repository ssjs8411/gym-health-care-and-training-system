// 18.10.01 ������
package com.cafe24.chgs8411.healthclubsAdmin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.chgs8411.healthclubs.service.Healthclubs;

@Service
@Transactional
public class HealthclubsAdminService {
	@Autowired
	private HealthclubsAdminDao healthclubsAdminDao;
	
	// �ｺ�� ��ü��ȸ �޼���(ȸ����Ͻ� �ｺ�� ����)
		public List<Healthclubs> getHealthclubsList(){
			return healthclubsAdminDao.selectHealthclubs();
		}
	
	// ������ ��� �޼���
		public int addHealthclubsAdmin(HealthclubsAdmin healthclubsAdmin) {
			return healthclubsAdminDao.insertHealthclubsAdmin(healthclubsAdmin);
		}
}
