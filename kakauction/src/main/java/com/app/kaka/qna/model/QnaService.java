package com.app.kaka.qna.model;

import java.util.List;

import com.app.kaka.common.SearchVO;
import com.app.kaka.notice.model.NoticeVO;

public interface QnaService {
	List<QnaVO> selectAll(SearchVO searchVo);
	int selectTotalCount(SearchVO searchVo);

}
