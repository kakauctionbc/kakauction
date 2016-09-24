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

	@Override
	public List<FreeboardVO> reportFreeboardList(SearchVO vo) {
		return freeboardDao.reportFreeboardList(vo);
	}
	
	@Override
	public int updateDownCount(int freeboardNo){
		return freeboardDao.updateDownCount(freeboardNo);
	}

	@Override
	public int likeBoard(Map<String, Object> map) {
		return freeboardDao.likeBoard(map);
	}

	@Override
	public int myLikeCount(Map<String, Object> map) {
		return freeboardDao.myLikeCount(map);
	}

	@Override
	public int updateLikeBoard(int freeboardNo) {
		return freeboardDao.updateLikeBoard(freeboardNo);
	}

	@Override
	public int boardLikeCount(int freeboardNo) {
		return freeboardDao.boardLikeCount(freeboardNo);
	}

	@Override
	public int insertbestFreeboard(int freeboardNo) {
		return freeboardDao.insertbestFreeboard(freeboardNo);
	}

	@Override
	public int bestFreeboardcnt(int freeboardNo) {
		return freeboardDao.bestFreeboardcnt(freeboardNo);
	}

}
