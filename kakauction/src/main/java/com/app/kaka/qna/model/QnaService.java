package com.app.kaka.qna.model;

import java.util.List;

import com.app.kaka.common.SearchVO;
import com.app.kaka.notice.model.NoticeVO;
import com.app.kaka.qnareply.model.QnareplyVO;

public interface QnaService {
	List<QnaVO> selectAll(SearchVO searchVo);
	public int selectTotalCount(SearchVO searchVo);
	public QnaVO selectByNo(int questionNo);
	public int insertQna(QnaVO qnaVo);
	public int editQna(QnaVO qnaVo);
	public int deleteQna(int questionNo);
	
	public int insertQnareply(QnareplyVO vo);
}
