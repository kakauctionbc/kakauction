package com.app.kaka.msg.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.common.MsgSearchVO;

@Repository
public class MsgDAOMybatis extends SqlSessionDaoSupport implements MsgDAO{

	private String namespace = "config.mybatis.mapper.oracle.msg";
	
	@Override
	public int sendMessage(MsgVO msgVo) {
		return getSqlSession().insert(namespace+".insertMsg", msgVo);
	}

	@Override
	public List<MsgVO> selectByMemberId(MsgSearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectByMemberId", searchVo);
	}

	@Override
	public int selectTotalCount(MsgSearchVO searchVo) {
		return getSqlSession().selectOne(namespace+".selectTotalCount", searchVo);
	}

	@Override
	public int newMessage(String memberId) {
		return getSqlSession().selectOne(namespace+".newMessage", memberId);
	}

	@Override
	public MsgVO selectByMsgNo(int msgNo) {
		return getSqlSession().selectOne(namespace+".selectByMsgNo", msgNo);
	}

	@Override
	public int updateMsgConfirm(int msgNo) {
		return getSqlSession().update(namespace+".updateConfirm", msgNo);
	}

}
