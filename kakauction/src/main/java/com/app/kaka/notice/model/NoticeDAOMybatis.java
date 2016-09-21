package com.app.kaka.notice.model;

import java.util.List;
import java.util.Map;

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
	
	public NoticeVO selectByNo(int noticeNo){
		return getSqlSession().selectOne(namespace+".selectByNo", noticeNo);
	}
	
	public int editNotice(NoticeVO noticeVo){
		return getSqlSession().update(namespace+".editNotice", noticeVo);
	}

	@Override
	public int updateReadCount(int noticeNo) {
		return getSqlSession().update(namespace+".updateReadCount", noticeNo);
	}

	@Override
	public int deleteNotice(Map<String, String> map) {
		return getSqlSession().delete(namespace+".deleteNotice",map);
	}

	@Override
	public int updateDownCount(int noticeNo) {
		return getSqlSession().delete(namespace+".updateDownCount", noticeNo);
	}
}	
