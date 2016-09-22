package com.app.kaka.picture.model;

import java.util.List;

public interface PictureDAO {
	public int insertPicture(PictureVO pictureVo);
	public PictureVO pictureDetail(String carNum);
	public List<PictureVO> selectByMemberId(String memberId);
	public int editPicture(PictureVO pictureVo);
}
