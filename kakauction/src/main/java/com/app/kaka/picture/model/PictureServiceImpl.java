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
	public List<Map<String, Object>> fileupload(HttpServletRequest request) {
		//파일 업로드 처리
		//여러 개의 파일정보를 저장하는 List => 리턴해줌
		List<Map<String, Object>> fileList = new ArrayList<Map<String,Object>>();
		
		//HttpServletRequest를 MultipartHttpServletRequest로 다운캐스팅
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest)request;
		
		//파라미터 이름을 Key로하고, 파라미터에 해당하는 파일정보를 값으로 하는 Map을 구한다
		Map<String , MultipartFile> filemap=multipartRequest.getFileMap();
		System.out.println("filemap.size()구해보자 이거좀"+filemap.size());

		//Map에서 iterator를 이용하여 각 key에 해당하는 파일정보를 구해온다
		Iterator<String> iter = filemap.keySet().iterator();
		int numbering = 0;
		while (iter.hasNext()) {
			
			String key = iter.next();
			//임시파일 형태로 제공해줌
			MultipartFile tempFile=filemap.get(key);
			
			//파일이 첨부된 경우 파일명과 파일크기를 구해온다
			if(!tempFile.isEmpty()){
				String originFileName = tempFile.getOriginalFilename();
				System.out.println("originalFileName = "+originFileName);
				
				//파일명이 중복될 수 있으므로 파일명 변경하기
				String fileName = getUniqueFileName(originFileName, numbering++);
				//파일 업로드 처리 - 서버의 업로드 폴더에 저장하기
				String upPath = getUploadPath(request);
				File upFile = new File(upPath, fileName);
				try {
					//업로드 처리
					tempFile.transferTo(upFile);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				//파일명, 원본파일명, 파일크기를 Map에 저장한 후 List에 추가한다
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("picture", fileName);
				fileList.add(map);
			}//if
		}//while
		return fileList;
	}

	private String getUploadPath(HttpServletRequest request) {
		//업로드 경로를 구하는 메서드
		String realPath="";
		String type = fileUploadProperties.getProperty("file.upload.type");
		if(type.equals("test")){
			//테스트인 경우 => 테스트 경로를 구한다
			realPath=
					fileUploadProperties.getProperty("picture.upload.path.test");		
		}else{
			//실제 배포하는 경우 => 실제 경로를 구한다
			realPath=
					fileUploadProperties.getProperty("picture.upload.path");
			//물리적인 경로 구하기
			realPath=
					request.getSession().getServletContext().getRealPath(realPath);
		}//if
		return realPath;
	}

	private String getUniqueFileName(String ofileName, int numbering) {
		//파일명에 현재시간을 추가해서 변경된 파일명 만들기
		//abc.txt -> abc + 현재시간 + .txt
		//=>abc20160818111540123.txt
		int idx = ofileName.lastIndexOf(".");
		//순수파일명만 추출 => abc
		String fName = ofileName.substring(0,idx);
		//.을 포함한 확장자만 추출=>.txt
		String ext = ofileName.substring(idx);
		
		//순수 파일명에 현재시간을 연결한 후 .확장자를 연결한다
		String fileName = fName+getCurrentTime()+numbering+ext;
		return fileName;
	}

	public String getCurrentTime(){
		//현재시간을 밀리초까지 보여주는 메서드
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String str = sdf.format(today);
		return str;
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
