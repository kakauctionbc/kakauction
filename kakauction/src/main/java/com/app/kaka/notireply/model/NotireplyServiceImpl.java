package com.app.kaka.notireply.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.kaka.common.SearchVO;
import com.app.kaka.notice.model.NoticeVO;

@Service
public class NotireplyServiceImpl implements NotireplyService{

	@Autowired
	private NotireplyDAO notireplyDao;
	
	@Override
	public int insertComment(NotireplyVO vo) {
		return notireplyDao.insertComment(vo);
	}

	@Override
	public List<NotireplyVO> selectComment(SearchVO searchVo) {
		return notireplyDao.selectComment(searchVo);
	}

	@Override
	public int selectTotalCount(SearchVO searchVo) {
		return notireplyDao.selectTotalCount(searchVo);
	}

}
