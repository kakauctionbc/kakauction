package com.app.kaka.freeboard.model;

import java.util.List;
import java.util.Map;

import com.app.kaka.common.SearchVO;

public interface FreeboardDAO {
	public int insertFreeboard(FreeboardVO freeboardVo);
	public FreeboardVO detailFreeboard(int freeboardNo);
	public List<FreeboardVO> selectAll(SearchVO searchVo);
	public int selectTotalCount(SearchVO searchVo);
	public FreeboardVO selectByNo(int freeboardNo);
	public int updateFreeboard(FreeboardVO freeboardVo);
	public int updateReadCount(int freeboardNo);
	public int deleteFreeboard(Map<String, String> map);
	
	public List<FreeboardVO> reportFreeboardList(SearchVO vo);
	public int updateDownCount(int freeboardNo);
}
