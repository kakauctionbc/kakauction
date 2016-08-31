package com.app.kaka.notice.model;

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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.app.kaka.common.SearchVO;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeServiceImpl.class);
	
	@Autowired
	private NoticeDAO noticeDao;

	@Resource(name="fileUploadProperties")
	private Properties fileUploadProperties;
	
	@Override
	public List<Map<String, Object>> fileupload(HttpServletRequest request) {
		//파일업로드 처리
		
		//여러 개의 파일정보를 저장하는 List => 리턴해줌
		List<Map<String, Object>> fileList
			=new ArrayList<Map<String,Object>>();
		
		//HttpServletRequest를 MultipartHttpServletRequest
		//로 다운캐스팅
		MultipartHttpServletRequest multipartRequest
		= (MultipartHttpServletRequest)request;
		
		//파라미터 이름을 키로하고, 파라미터에 해당하는
		//파일정보를 값으로 하는 Map을 구한다
		Map<String, MultipartFile> fileMap
			=multipartRequest.getFileMap();
		
		//Map에서 iterator를 이용하여 각 key에
		//해당하는 파일정보를 구해온다
		Iterator<String> iter 
			= fileMap.keySet().iterator();		
		while(iter.hasNext()){
			String key = iter.next();
			//임시파일 형태로 제공해줌
			MultipartFile tempFile = fileMap.get(key);
			
			//파일이 첨부된 경우 파일명과 파일크기를 구해온다
			if(!tempFile.isEmpty()){
				String originFileName 
					= tempFile.getOriginalFilename();
				long fileSize = tempFile.getSize();
				
				//파일명이 중복될 수 있으므로 파일명 변경하기
				String fileName = getUniqueFileName(originFileName);
				
				//파일업로드 처리 - 서버의 업로드 폴더에 저장하기
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
				
				//파일명,원본파일명, 파일크기를 Map에 저장한 후
				//List에 추가한다
				Map<String, Object> map 
					= new HashMap<String, Object>();
				map.put("noticeFilename", fileName);
				map.put("noticeOriginalname", originFileName);
				map.put("noticeFilesize", fileSize);
				
				fileList.add(map);
			}//if
		}//while
		
		return fileList;
	}

	public String getUniqueFileName(String ofileName){
		//파일명에 현재시간을 추가해서 변경된 파일명 만들기
		//abc.txt => abc + 현재시간 + .txt
		//=> abc20160818111520123.txt
		int idx = ofileName.lastIndexOf(".");
		//순수파일명만 추출 => abc
		String fName = ofileName.substring(0,idx);
		//.을 포함한 확장자만 추출 => .txt
		String ext = ofileName.substring(idx);
		
		//순수파일명에 현재시간을 연결한 후 .확장자를 연결한다
		String fileName = fName+getCurrentTime()+ext;
		
		return fileName;
	}

	public String getUploadPath(HttpServletRequest request){
		//업로드 경로를 구하는 메서드
		String realPath="";
		
		String type = fileUploadProperties.getProperty("file.upload.type");
		
		if(type.equals("test")){
			//테스트인 경우 => 테스트 경로를 구한다
			realPath = fileUploadProperties.getProperty("file.upload.path.test");
			logger.info("테스트 경로={}", realPath);
		}else{
			//실제 배포하는 경우 => 실제 경로를 구한다
			realPath = fileUploadProperties.getProperty("file.upload.path");			
			logger.info("실제 배포시 경로={}", realPath);
			
			//물리적인 경로 구하기
			realPath = request.getSession().getServletContext().getRealPath(realPath);
			logger.info("실제 배포시 물리적 경로={}",realPath);
		}//if
		
		return realPath;		
	}
	
	public String getCurrentTime(){
		//현재시간을 밀리초까지 보여주도록 변환하는 메서드
		Date today = new Date();
		SimpleDateFormat sdf 
		= new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String str = sdf.format(today);
		
		return str;
	}

	@Override
	public int insertNotice(NoticeVO vo) {
		return noticeDao.insertNotice(vo);
	}

	@Override
	public List<NoticeVO> selectAll(SearchVO searchVo) {
		return noticeDao.selectAll(searchVo);
	}

	@Override
	public int selectTotalCount(SearchVO searchVo) {
		return noticeDao.selectTotalCount(searchVo);
	}
	
	@Override
	public NoticeVO selectByNo(int noticeNo) {
		return noticeDao.selectByNo(noticeNo);
	}

	@Override
	public String selectByNoIdPwd(String memberId) {
		return noticeDao.selectByNoIdPwd(memberId);
	}

	@Override
	public int editNotice(NoticeVO noticeVo) {
		return noticeDao.editNotice(noticeVo);
	}

	@Override
	public int updateReadCount(int noticeNo) {
		return noticeDao.updateReadCount(noticeNo);
	}

	public int deleteNotice(Map<String, String> map) {
		return noticeDao.deleteNotice(map);
	}
}
