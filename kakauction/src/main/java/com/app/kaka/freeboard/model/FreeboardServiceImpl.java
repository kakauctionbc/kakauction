package com.app.kaka.freeboard.model;

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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.app.kaka.common.SearchVO;
import com.app.kaka.qna.model.QnaVO;

@Service
public class FreeboardServiceImpl implements FreeboardService{

	@Autowired
	private FreeboardDAO freeboardDao;
	
	@Resource(name="fileUploadProperties")
	private Properties fileUploadProperties;
	
	@Transactional
	public int insertFreeboard(FreeboardVO freeboardVo) {
		return freeboardDao.insertFreeboard(freeboardVo);
	}

	@Override
	public FreeboardVO detailFreeboard(int freeboardNo) {
		return freeboardDao.detailFreeboard(freeboardNo);
	}

	@Override
	public List<FreeboardVO> selectAll(SearchVO searchVo) {
		return freeboardDao.selectAll(searchVo);
	}

	@Override
	public int selectTotalCount(SearchVO searchVo) {
		return freeboardDao.selectTotalCount(searchVo);
	}

	@Override
	public FreeboardVO selectByNo(int freeboardNo) {
		return freeboardDao.selectByNo(freeboardNo);
	}

	@Override
	public int updateFreeboard(FreeboardVO freeboardVo) {
		return freeboardDao.updateFreeboard(freeboardVo);
	}

	@Override
	public int updateReadCount(int freeboardNo) {
		return freeboardDao.updateReadCount(freeboardNo);
	}
	
/*	public int updateDownCount(int no){
		return reBoardDao.updateDownCount(no);
	}*/

}
