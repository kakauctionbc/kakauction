package com.app.kaka.freereply.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class FreeReplyDAOMybatis extends SqlSessionDaoSupport implements FreeReplyDAO{

	private String namespace = "config.mybatis.mapper.oracle.freereply";
	
	@Override
	public int insertComment(FreeReplyVO vo) {
		return getSqlSession().insert(namespace+".insertComment", vo);
	}

	@Override
	public List<FreeReplyVO> selectComment(int freereplyGroupno) {
		return getSqlSession().selectList(namespace+".selectComment", freereplyGroupno);
	}

}
