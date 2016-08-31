package com.app.kaka.notice.model;

import java.util.List;
import java.util.Map;

import com.app.kaka.common.SearchVO;

public interface NoticeDAO {
	public int insertNotice(NoticeVO vo);
	List<NoticeVO> selectAll(SearchVO searchVo);
	public int selectTotalCount(SearchVO searchVo);
	public NoticeVO selectByNo(int noticeNo);
	public String selectByNoIdPwd(String memberId);
	public int editNotice(NoticeVO noticeVo);
	public int updateReadCount(int noticeNo);
	public int deleteNotice(Map<String, String> map);
}
