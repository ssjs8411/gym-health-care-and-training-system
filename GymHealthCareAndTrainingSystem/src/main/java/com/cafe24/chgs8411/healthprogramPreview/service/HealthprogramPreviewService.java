// 2018-10-16 김소희
package com.cafe24.chgs8411.healthprogramPreview.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.chgs8411.question.service.Question;

@Service
@Transactional
public class HealthprogramPreviewService {
	@Autowired
	private HealthprogramPreviewDao healthprogramPreviewDao;
	
	
	// 헬스 후기 목록 메소드
	public List<HealthprogramPreview> HealthprogramPreviewList(){
		List<HealthprogramPreview> list = healthprogramPreviewDao.selectHealthprogramPreview();
		return healthprogramPreviewDao.selectHealthprogramPreview();
		
	}
	
	// 헬스 후기 등록 메소드
	public void addHealthprogramPreview (HealthprogramPreview healthprogramPreview) {
		healthprogramPreviewDao.isnertHealthprogramPreview(healthprogramPreview);
	}

}
