package com.app.kaka.notice.model;

import java.util.List;
import java.util.Map;

import com.app.kaka.common.SearchVO;
import com.app.kaka.freereply.model.FreeReplyVO;

public interface NoticeDAO {
	public int insertNotice(NoticeVO vo);
	public List<NoticeVO> selectAll(SearchVO searchVo);
	public int selectTotalCount(SearchVO searchVo);
	public NoticeVO selectByNo(int noticeNo);
	public int editNotice(NoticeVO noticeVo);
	public int updateReadCount(int noticeNo);
	public int deleteNotice(Map<String, String> map);
	public int updateDownCount(int noticeNo);
	
	public List<NoticeVO> mainNotice();
}
