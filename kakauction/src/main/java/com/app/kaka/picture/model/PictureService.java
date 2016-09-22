package com.app.kaka.picture.model;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface PictureService {

	public int insertPicture(PictureVO pictureVo);
	public PictureVO pictureDetail(String carNum);
	public List<PictureVO> selectByMemberId(String memberId);
	public int editPicture(PictureVO pictureVo);
}
