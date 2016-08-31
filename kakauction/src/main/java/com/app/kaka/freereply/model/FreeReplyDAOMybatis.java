package com.app.kaka.freereply.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.common.SearchVO;

@Repository
public class FreeReplyDAOMybatis extends SqlSessionDaoSupport implements FreeReplyDAO{

	private String namespace = "config.mybatis.mapper.oracle.freereply";
	
	@Override
	public int insertComment(FreeReplyVO vo) {
		return getSqlSession().insert(namespace+".insertComment", vo);
	}

	@Override
	public List<FreeReplyVO> selectComment(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectComment", searchVo);
	}

	@Override
	public int selectTotalCount(SearchVO searchVo) {
		return getSqlSession().selectOne(namespace+".selectTotalCount", searchVo);
	}

}
