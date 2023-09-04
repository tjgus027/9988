package com.tripleJ.gg88.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.tripleJ.gg88.domain.Emergency;

@Repository
public class EmergencyRepositoryImpl implements EmergencyRepository{
	String namespace = "emergency.";
	public final SqlSessionTemplate sql;
	
	public EmergencyRepositoryImpl(SqlSessionTemplate sql) {
		this.sql = sql;
	}

	@Override
	public int save(Emergency emergency) {
		return sql.insert(namespace + "saveBoard", emergency);
	}

	@Override
	public int temporarySave(Emergency emergency) {
		return sql.insert(namespace + "temSaveBoard", emergency);
	}

	@Override
	public List<Emergency> findById(int memberNo) {
		return sql.selectList(namespace + "findById", memberNo);
	}

	@Override
	public List<Emergency> findAll() {
		return sql.selectList(namespace + "findAllBoard");
	}
	
	@Override
	public int updateBoard(Emergency emergency) {
		return sql.update(namespace + "updateBoard", emergency);
	}

	@Override
	public int incrementCommendCount(int emergencyId) {
		return sql.update(namespace + "incrementCommendCount", emergencyId);
	}

	@Override
	public int deleteBoard(int emergencyId) {
		return sql.delete(namespace + "deleteBoard", emergencyId);
	}
	
}