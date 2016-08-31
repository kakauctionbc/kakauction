package com.app.kaka.freereply.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.kaka.common.SearchVO;

@Service
public class FreeReplyServiceImpl implements FreeReplyService{

	@Autowired
	private FreeReplyDAO freereplyDao;
	
	@Override
	public int insertComment(FreeReplyVO vo) {
		return freereplyDao.insertComment(vo);
	}

	@Override
	public List<FreeReplyVO> selectComment(SearchVO searchVo) {
		return freereplyDao.selectComment(searchVo);
	}

	@Override
	public int selectTotalCount(SearchVO searchVo) {
		return freereplyDao.selectTotalCount(searchVo);
	}
	
}
