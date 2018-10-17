// 2018-10-16 김소희
package com.cafe24.chgs8411.healthprogramPreview.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.chgs8411.question.service.Question;

@Repository
public class HealthprogramPreviewDao {
	private final String NS ="com.cafe24.chgs8411.healthprogramPreview.service.HealthprogramPreviewMapper.";
	
	@Autowired SqlSessionTemplate sqlSessionTemplate;
	//후기 목록 
	public List<HealthprogramPreview> selectHealthprogramPreview() {
		return sqlSessionTemplate.selectList(NS+"selectHealthprogramPreview");
		
	}
	
	// 후기 등록
	public void isnertHealthprogramPreview (HealthprogramPreview healthprogramPreview) {
		sqlSessionTemplate.insert(NS+"inserstHealthprogramPreview", healthprogramPreview);
	}

}
