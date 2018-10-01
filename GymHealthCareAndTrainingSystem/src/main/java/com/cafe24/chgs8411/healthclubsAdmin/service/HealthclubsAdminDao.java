// 18.10.01 ������
package com.cafe24.chgs8411.healthclubsAdmin.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.chgs8411.healthclubs.service.Healthclubs;

@Repository
public class HealthclubsAdminDao {
	private final String NS = "com.cafe24.chgs8411.healthclubsAdmin.service.healthclubsAdminMapper.";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// �ｺ�� ������ ��ü ��ȸ �޼���
		public List<HealthclubsAdmin> selectHealthclubsAdminList(){
			return sqlSessionTemplate.selectList(NS+"selectHealthclubsAdminList");
		}
	
	// �ｺ�� ������ ���� �޼���
		public int updateHealthclubsAdmin(HealthclubsAdmin healthclubsAdmin) {
			return sqlSessionTemplate.update(NS+"updateHealthclubsAdmin", healthclubsAdmin);
		}
	
	// �ｺ�� ������ 1���� ���� ��ȸ �޼���
		public HealthclubsAdmin selectHealthclubsAdmin(int healthclubs_admin_no) {
			return sqlSessionTemplate.selectOne(NS+"selectHealthclubsAdmin", healthclubs_admin_no);
		}
	
	// �ｺ�� ��ü��ȸ �޼���(ȸ����Ͻ� �ｺ�� ����)
		public List<Healthclubs> selectHealthclubs(){
			return sqlSessionTemplate.selectList(NS+"selectHealthclubs");
		}
		
	// ������ ��� �޼���
		public int insertHealthclubsAdmin(HealthclubsAdmin healthclubsAdmin) {
			return sqlSessionTemplate.insert(NS+"insertHealthclubsAdmin", healthclubsAdmin);
		}
}