package com.app.kaka.freeboard.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.kaka.common.SearchVO;
import com.app.kaka.qna.model.QnaVO;

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

	@Override
	public List<FreeboardVO> selectAll(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectAll", searchVo);
	}

	@Override
	public int selectTotalCount(SearchVO searchVo) {
		return getSqlSession().selectOne(namespace+".selectTotalCount", searchVo);
	}
	
}
