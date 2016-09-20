package com.app.kaka.freeboard.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.common.SearchVO;

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

	@Override
	public FreeboardVO selectByNo(int freeboardNo) {
		return getSqlSession().selectOne(namespace+".selectByNo",freeboardNo);
	}

	@Override
	public int updateFreeboard(FreeboardVO freeboardVo) {
		return getSqlSession().update(namespace+".updateFreeboard",freeboardVo);
	}

	@Override
	public int updateReadCount(int freeboardNo) {
		return getSqlSession().update(namespace+".updateReadCount",freeboardNo);
	}

	@Override
	public int deleteFreeboard(Map<String, String> map) {
		return getSqlSession().delete(namespace+".deleteFreeboard", map);
	}

	@Override
	public List<FreeboardVO> reportFreeboardList(SearchVO vo) {
		return getSqlSession().selectList(namespace+".reportFreeboardList", vo);
	}

	@Override
	public int updateDownCount(int freeboardNo) {
		return getSqlSession().delete(namespace+".updateDownCount", freeboardNo);
	}
	
}
