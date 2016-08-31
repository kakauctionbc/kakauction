package com.app.kaka.common;

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

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class FileUploadWebUtil {
	//자료실에서 업로드인지, 상품등록에서 이미지 업로드인지 구분해주는 상수
	public static final int FREEBOARD_UPLOAD=1; //freeboard 업로드
	
	public static final int NOTICE_UPLOAD=2;//notice 업로드

	public static final int AUCTION_UPLOAD=3;//auction 업로드

	private static final Logger logger = LoggerFactory.getLogger(FileUploadWebUtil.class);
	
	@Resource(name="fileUploadProperties")
	private Properties fileUploadProps;
	public List<Map<String, Object>> fileUpload(HttpServletRequest request,  int uploadType){
		//업로드 처리가 가능한 클래스로 다운 캐스팅
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		
		Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
		
		List<Map<String, Object>> fileList = new ArrayList<Map<String,Object>>();
		logger.info("업로드 파일 list.size()={}", fileList.size());
		
		Iterator<String> iter = fileMap.keySet().iterator();
		while(iter.hasNext()){
			String key = iter.next();
			MultipartFile tempFile=fileMap.get(key);
			
			//업로드 파일이 있을 때 파일염, 파일크기 구해오고, 업로드 처리하기
			if(!tempFile.isEmpty()){
				String ofileName = tempFile.getOriginalFilename();
				logger.info("업로드 원본 파일명={}", ofileName);
				//파일명 변경하기
				String fileName = getUniqueFileName(ofileName);
				logger.info("업로드 변경 파일명={}", fileName);
				//파일 크기 구하기
				long fileSize = tempFile.getSize();
				try{
					String upPath = getUploadPath(request, uploadType);
					File file = new File(upPath,fileName);
					//업로드 처리
					tempFile.transferTo(file);
				}catch(IOException e){
					e.printStackTrace();
				}
				//파일명과 파일크기를 map에 저장한다
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("fileName", fileName);
				map.put("fileSize", fileSize);
				logger.info("fileName={}",fileName);
				
				//map을 List에 저장한다
				fileList.add(map);
			}//if
		}//while
		
		return fileList;
	}
	
	public String getUniqueFileName(String ofileName){
		//파일명에 현재시간을 추가해서 변경된 파일명 만들기
		//abc.txt -> abc + 현재시간 + .txt
		//=>abc20160818111540123.txt
		int idx = ofileName.lastIndexOf(".");
		//순수파일명만 추출 => abc
		String fName = ofileName.substring(0,idx);
		//.을 포함한 확장자만 추출=>.txt
		String ext = ofileName.substring(idx);
		
		//순수 파일명에 현재시간을 연결한 후 .확장자를 연결한다
		String fileName = fName+getCurrentTime()+ext;
		return fileName;
	}
	
	public String getCurrentTime(){
		//현재시간을 밀리초까지 보여주는 메서드
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String str = sdf.format(today);
		return str;
	}
	
	public String getUploadPath(HttpServletRequest request, int uploadType){
		//업로드 경로를 구하는 메서드
		String realtPath="";
		String type = fileUploadProps.getProperty("file.upload.type");
		if(type.equals("test")){
			//테스트인 경우 => 테스트 경로를 구한다
			if(uploadType==FREEBOARD_UPLOAD){
				//FREEBOARD 업로드
				realtPath= fileUploadProps.getProperty("freeboard.upload.path.test");		
			}else if(uploadType==NOTICE_UPLOAD){
				//NOTICE 업로드
				realtPath=fileUploadProps.getProperty("notice.upload.path.test");
			}else if(uploadType==AUCTION_UPLOAD){
				//auction 업로드
				realtPath=fileUploadProps.getProperty("auction.upload.path.test");
			}
			logger.info("테스트 경로 ={}", realtPath);
		}else{
			//실제 배포하는 경우 => 실제 경로를 구한다
			if(uploadType==FREEBOARD_UPLOAD){
				//FREEBOARD 업로드
				realtPath= fileUploadProps.getProperty("freeboard.upload.path");		
			}else if(uploadType==NOTICE_UPLOAD){
				//NOTICE 업로드
				realtPath=fileUploadProps.getProperty("notice.upload.path");
			}else if(uploadType==AUCTION_UPLOAD){
				//auction 업로드
				realtPath=fileUploadProps.getProperty("auction.upload.path");
			}
			logger.info("실제 경로 ={}", realtPath);
		}//if
		return realtPath;
	}

}
