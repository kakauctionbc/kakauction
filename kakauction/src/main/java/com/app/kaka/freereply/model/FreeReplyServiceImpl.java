package com.app.kaka.freereply.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	@Override
	@Transactional
	public int insertReply(FreeReplyVO freeReplyVo) {
		int cnt = freereplyDao.updateSortNo(freeReplyVo);
		
		cnt = freereplyDao.insertReply(freeReplyVo);
		
		return cnt;
	}

	@Override
	public int deleteReply(Map<String, String> map) {
		return freereplyDao.deleteReply(map);
	}

	@Override
	public int editComment(FreeReplyVO freereplyVo) {
		return freereplyDao.editComment(freereplyVo);
	}

}
