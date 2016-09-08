package com.app.kaka.picture.model;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Service
public class PictureServiceImpl implements PictureService{

	@Autowired
	private PictureDAO pictureDao;
	
	@Resource(name="fileUploadProperties")
	private Properties fileUploadProperties;
	
	@Override
	public int insertPicture(PictureVO pictureVo) {
		return pictureDao.insertPicture(pictureVo);
	}

	@Override
	public PictureVO pictureDetail(String carNum) {
		return pictureDao.pictureDetail(carNum);
	}

	@Override
	public List<PictureVO> selectByMemberId(String memberId) {
		return pictureDao.selectByMemberId(memberId);
	}
}
