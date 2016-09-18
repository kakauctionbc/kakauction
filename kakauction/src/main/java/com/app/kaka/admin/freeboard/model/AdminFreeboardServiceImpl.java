package com.app.kaka.admin.freeboard.model;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.kaka.freeboard.model.FreeboardVO;

@Service
public class AdminFreeboardServiceImpl implements AdminFreeboardService {
	private AdminFreeboardDAO admFreeDao;

	@Override
	public int deleteFreeboardMuti(List<FreeboardVO> freeList) {
		int cnt=0;
		for (FreeboardVO vo : freeList) {
			int freeboardNo = vo.getFreeboardNo();
			if (freeboardNo!=0) {
				cnt = admFreeDao.deleteFreeboardMuti(vo.getFreeboardNo());
			}
		}
		return cnt;
	}

	@Override
	public int deleteFreeboardMuti(int freeboardNo) {
		return admFreeDao.deleteFreeboardMuti(freeboardNo);
	}
}
