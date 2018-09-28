// 18.09.27 ÃÖÁö¼ö
package com.cafe24.chgs8411.healthclubs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class HealthclubsService {
	@Autowired
	private HealthclubsDao healthclubsDao;
	
	public int addHealthclubs(Healthclubs healthclubs) {
		return healthclubsDao.insertHealthclubs(healthclubs);
	}
}
