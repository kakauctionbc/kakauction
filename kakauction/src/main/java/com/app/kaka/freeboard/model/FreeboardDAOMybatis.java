package com.app.kaka.freeboard.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FreeboardDAOMybatis extends SqlSessionDaoSupport implements FreeboardDAO{
	private String namespace = "config.mybatis.mapper.oracle.freeboard";

	@Override
	public int insertFreeboard(FreeboardVO freeboardVo) {
		return getSqlSession().insert(namespace+".insertFreeboard",freeboardVo);
	}
	
	public List<FreeboardVO> selectAllFB(){
		return getSqlSession().selectList(namespace+".selectAllFreeboard");
	}

	@Override
	public FreeboardVO detailFreeboard(int freeboardNo) {
		return getSqlSession().selectOne(namespace+".selectFreeboardByNo", freeboardNo);
	}
	
}
