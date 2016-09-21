package com.app.kaka.notice.model;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.app.kaka.common.SearchVO;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeServiceImpl.class);
	
	@Autowired()
	private NoticeDAO noticeDao;

	@Resource(name="fileUploadProperties")
	private Properties fileUploadProperties;
	
	@Override
	public int insertNotice(NoticeVO vo) {
		return noticeDao.insertNotice(vo);
	}

	@Override
	public List<NoticeVO> selectAll(SearchVO searchVo) {
		return noticeDao.selectAll(searchVo);
	}

	@Override
	public int selectTotalCount(SearchVO searchVo) {
		return noticeDao.selectTotalCount(searchVo);
	}
	
	@Override
	public NoticeVO selectByNo(int noticeNo) {
		return noticeDao.selectByNo(noticeNo);
	}

	@Override
	public int editNotice(NoticeVO noticeVo) {
		return noticeDao.editNotice(noticeVo);
	}

	@Override
	public int updateReadCount(int noticeNo) {
		return noticeDao.updateReadCount(noticeNo);
	}

	public int deleteNotice(Map<String, String> map) {
		return noticeDao.deleteNotice(map);
	}

	@Override
	public int updateDownCount(int noticeNo) {
		return noticeDao.updateDownCount(noticeNo);
	}
}
