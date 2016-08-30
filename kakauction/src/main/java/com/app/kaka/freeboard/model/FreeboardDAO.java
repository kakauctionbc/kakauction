package com.app.kaka.freeboard.model;

import java.util.List;

import com.app.kaka.common.SearchVO;
import com.app.kaka.qna.model.QnaVO;

public interface FreeboardDAO {
	public int insertFreeboard(FreeboardVO freeboardVo);
	public FreeboardVO detailFreeboard(int freeboardNo);
	public List<FreeboardVO> selectAll(SearchVO searchVo);
	public int selectTotalCount(SearchVO searchVo);
}
