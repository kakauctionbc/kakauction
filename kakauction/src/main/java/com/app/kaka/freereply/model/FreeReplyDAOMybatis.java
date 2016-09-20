package com.app.kaka.freereply.model;

import java.util.List;
import java.util.Map;

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

	@Override
	public int updateSortNo(FreeReplyVO freeReplyVo) {
		return getSqlSession().update(namespace+".updateSortNo", freeReplyVo);
	}

	@Override
	public int insertReply(FreeReplyVO freeReplyVo) {
		//groupNo는 그대로, sortNo, step는 1증가시킨다
		freeReplyVo.setFreereplySortno(freeReplyVo.getFreereplySortno()+1);
		freeReplyVo.setFreereplyStep(freeReplyVo.getFreereplyStep()+1);
		
		return getSqlSession().insert(namespace+".insertReply", freeReplyVo);
	}

	@Override
	public int deleteReply(Map<String, String> map) {
		System.out.println(map);
		return getSqlSession().delete(namespace+".deleteReply", map);
	}

}
