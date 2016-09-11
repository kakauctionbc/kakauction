package com.app.kaka.freeboard.model;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.app.kaka.common.SearchVO;
import com.app.kaka.qna.model.QnaVO;

public interface FreeboardService {
	public int insertFreeboard(FreeboardVO freeboardVo);
	public FreeboardVO detailFreeboard(int freeboardNo);
	public List<FreeboardVO> selectAll(SearchVO searchVo);
	public int selectTotalCount(SearchVO searchVo);
	public FreeboardVO selectByNo(int freeboardNo);
	public int updateFreeboard(FreeboardVO freeboardVo);
	public int updateReadCount(int freeboardNo);
	public int deleteFreeboard(Map<String, String> map);
}
