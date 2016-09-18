package com.app.kaka.admin.member.model;

import java.util.List;

import com.app.kaka.freeboard.model.FreeboardVO;

public class FreeboardListVO {
	private List<FreeboardVO> freeboardItems;

	public List<FreeboardVO> getFreeboardItems() {
		return freeboardItems;
	}

	public void setFreeboardItems(List<FreeboardVO> freeboardItems) {
		this.freeboardItems = freeboardItems;
	}

	@Override
	public String toString() {
		return "FreeboardListVO [freeboardItems=" + freeboardItems + "]";
	}
}
