package com.app.kaka.notireply.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.common.SearchVO;
import com.app.kaka.notice.model.NoticeVO;

@Repository
public class NotireplyDAOMybatis extends SqlSessionDaoSupport implements NotireplyDAO{
	
	private String namespace = "config.mybatis.mapper.oracle.notireply";

	@Override
	public int insertComment(NotireplyVO vo) {
		return getSqlSession().insert(namespace+".insertComment", vo);
	}

	@Override
	public List<NotireplyVO> selectComment(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectComment", searchVo);
	}

	@Override
	public int selectTotalCount(SearchVO searchVo) {
		return getSqlSession().selectOne(namespace+".selectTotalCount",searchVo);
	}
	
	
}
