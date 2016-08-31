package com.app.kaka.notice.model;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.app.kaka.common.SearchVO;

public interface NoticeService {

	public List<Map<String, Object>> fileupload(HttpServletRequest request);
	public int insertNotice(NoticeVO vo);
	public List<NoticeVO> selectAll(SearchVO searchVo);
	public int selectTotalCount(SearchVO searchVo);
	public NoticeVO selectByNo(int noticeNo);
	public String selectByNoIdPwd(String memberId);
	public int editNotice(NoticeVO noticeVo);
	public int updateReadCount(int noticeNo);
	public int deleteNotice(Map<String, String> map);
	public int updateDownCount(int noticeNo);
	
	public String getUniqueFileName(String ofileName);
	public String getUploadPath(HttpServletRequest request);
	public String getCurrentTime();
}
