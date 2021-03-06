package com.app.kaka.qna.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.common.SearchVO;

@Repository
public class QnaDAOMybatis extends SqlSessionDaoSupport implements QnaDAO {
	
	private String namespace="config.mybatis.mapper.oracle.qna";

	@Override
	public List<QnareplyVO> selectAll(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectAll", searchVo);
	}

	@Override
	public int selectTotalCount(SearchVO searchVo) {
		return getSqlSession().selectOne(namespace+".selectTotalCount", searchVo);
	}

	@Override
	public QnaVO selectByNo(int questionNo) {
		return getSqlSession().selectOne(namespace+".selectByNo", questionNo);
	}

	@Override
	public int insertQna(QnaVO qnaVo) {
		return getSqlSession().insert(namespace+".insertQna", qnaVo);
	}

	@Override
	public int editQna(QnaVO qnaVo) {
		return getSqlSession().update(namespace+".editQna", qnaVo);
	}

	@Override
	public int deleteQna(int questionNo) {
		return getSqlSession().delete(namespace+".deleteQna", questionNo);
	}

	@Override
	public int insertQnareply(QnareplyVO vo) {
		return getSqlSession().insert(namespace+".insertQnareply", vo);
	}

	@Override
	public int updateReturn(int questionNo) {
		return getSqlSession().update(namespace+".updateReturn",questionNo);
	}
	
	
}
