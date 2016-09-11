package com.app.kaka.freeboard.model;

import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.kaka.common.SearchVO;

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

	@Override
	public int deleteFreeboard(Map<String, String> map) {
		return freeboardDao.deleteFreeboard(map);
	}
	
/*	public int updateDownCount(int no){
		return reBoardDao.updateDownCount(no);
	}*/

}
