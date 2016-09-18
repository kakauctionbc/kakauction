package com.app.kaka.msg.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.kaka.common.MsgSearchVO;
import com.app.kaka.member.model.MemberVO;
import com.app.kaka.report.model.ReportVO;

@Service
public class MsgServiceImpl implements MsgService{

	@Autowired
	private MsgDAO msgDao;

	@Override
	public int sendMessage(MemberVO memVo, ReportVO reportVo, MsgVO msgVo) {
		msgVo.setMsgContent(reportVo.getReportRegdate()+" 에 신고되었습니다.\n"
				+reportVo.getReportContent()+"\n위의 이유로 신고 되어\n"+
				memVo.getMemberGrade()+" 처리 되었음을 알려드립니다.");
		msgVo.setMsgTitle(memVo.getMemberGrade()+ " 처리를 알려드립니다.");
		msgVo.setOriginNo(reportVo.getOriginNo());
		msgVo.setOriginType(reportVo.getOriginType());
		msgVo.setReportMemberId(reportVo.getReportMemberId());
		msgVo.setReportNo(reportVo.getReportNo());
		return msgDao.sendMessage(msgVo);
	}

	@Override
	public List<MsgVO> selectByMemberId(MsgSearchVO searchVo) {
		return msgDao.selectByMemberId(searchVo);
	}

	@Override
	public int selectTotalCount(MsgSearchVO searchVo) {
		return msgDao.selectTotalCount(searchVo);
	}

	@Override
	public int newMessage(String memberId) {
		return msgDao.newMessage(memberId);
	}

	@Override
	@Transactional
	public MsgVO selectByMsgNo(int msgNo) {
		int cnt = msgDao.updateMsgConfirm(msgNo);
		MsgVO msgVo = null;
		if(cnt>0){
			msgVo = msgDao.selectByMsgNo(msgNo);
		}
		return msgVo;
	}
	
}
