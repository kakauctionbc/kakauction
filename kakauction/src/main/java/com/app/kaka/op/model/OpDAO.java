package com.app.kaka.op.model;

public interface OpDAO {
	public int insertOp(OpVO opVo);
	public OpVO opDetail(String carNum);
	public int editOp(OpVO opVo);
}
