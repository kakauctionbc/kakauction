package com.app.kaka.qna.model;

import java.util.List;
import java.util.Properties;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.kaka.common.SearchVO;
import com.app.kaka.qnareply.model.QnareplyVO;

@Service
public class QnaServiceImpl implements QnaService{
	
	private static final Logger logger = LoggerFactory.getLogger(QnaServiceImpl.class);
	
	@Autowired
	private QnaDAO qnaDao;
	
	@Resource(name="fileUploadProperties")
	private Properties fileUploadProperties;

	@Override
	public List<QnaVO> selectAll(SearchVO searchVo) {
		return qnaDao.selectAll(searchVo);
	}

	@Override
	public int selectTotalCount(SearchVO searchVo) {
		return qnaDao.selectTotalCount(searchVo);
	}

	@Override
	public QnaVO selectByNo(int questionNo) {
		return qnaDao.selectByNo(questionNo);
	}

	@Override
	public int insertQna(QnaVO qnaVo) {
		return qnaDao.insertQna(qnaVo);
	}

	@Override
	public int editQna(QnaVO qnaVo) {
		return qnaDao.editQna(qnaVo);
	}

	@Override
	public int deleteQna(int questionNo) {
		return qnaDao.deleteQna(questionNo);
	}

	@Override
	public int insertQnareply(QnareplyVO vo) {
		return qnaDao.insertQnareply(vo);
	}
}
