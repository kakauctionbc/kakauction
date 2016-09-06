package com.app.kaka.picture.model;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface PictureService {

	public int insertPicture(PictureVO pictureVo);
	public List<Map<String, Object>> fileupload(HttpServletRequest request);
	public PictureVO pictureDetail(String carNum);

}
