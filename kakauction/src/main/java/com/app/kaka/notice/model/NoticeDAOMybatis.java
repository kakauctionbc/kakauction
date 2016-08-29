package com.app.kaka.notice.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.common.SearchVO;

@Repository
public class NoticeDAOMybatis extends SqlSessionDaoSupport implements NoticeDAO{
	
	private String namespace="config.mybatis.mapper.oracle.notice";

	@Override
	public int insertNotice(NoticeVO vo) {
		return getSqlSession().insert(namespace+".insertNotice", vo);
	}

	@Override
	public List<NoticeVO> selectAll(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectAll", searchVo);
	}

	@Override
	public int selectTotalCount(SearchVO searchVo) {
		return getSqlSession().selectOne(namespace+".selectTotalCount", searchVo);
	} 
}
