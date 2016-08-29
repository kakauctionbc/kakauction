package com.app.kaka.notice.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAOMybatis extends SqlSessionDaoSupport implements NoticeDAO{
	
	private String namespace="config.mybatis.mapper.oracle.notice";

	@Override
	public int insertNotice(NoticeVO vo) {
		return getSqlSession().insert(namespace+".insertNotice", vo);
	} 
}
