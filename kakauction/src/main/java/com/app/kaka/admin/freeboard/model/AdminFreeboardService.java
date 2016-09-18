package com.app.kaka.admin.freeboard.model;

import java.util.List;

import com.app.kaka.freeboard.model.FreeboardVO;

public interface AdminFreeboardService {
	//다중 삭제
	public int deleteFreeboardMuti(List<FreeboardVO> freeList);
	//한개만 삭제
	public int deleteFreeboardMuti(int freeboardNo);
}
