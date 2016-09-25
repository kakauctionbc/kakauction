package com.app.kaka.excel.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.app.kaka.excel.model.ExcelService;
import com.app.kaka.excel.model.WriteListToExcelFile;
import com.app.kaka.member.model.MemberService;
import com.app.kaka.member.model.MemberVO;

@Controller
@RequestMapping("/admin/excel")
public class MemberDBController {
	private static final Logger logger = LoggerFactory.getLogger(MemberDBController.class);
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ExcelService excelService;
	
	/*@RequestMapping(value="/downloadExcel.do",method=RequestMethod.GET)
	public String excelDown(Model model){
		return "adminf/adminf";
	}*/
	
	@RequestMapping(value="/downloadExcel.do",method=RequestMethod.GET)
    public String excelView_get(Model model) throws Exception{
		logger.info("화면을 보여주렴");
		
		return "excel/downloadExcel";
	}
	
 
	/*@RequestMapping(value="/downloadExcel.do",method=RequestMethod.POST)
    public String excelView_post(Model model) throws Exception{
        
        List<MemberVO> memberList=memberService.selectAllMember();
        logger.info("memberlist들어간건가... memberList.size={}",memberList.size());
        
        if (memberList!=null) {
        	WriteListToExcelFile.writeNoticeListToFile("memberList.xls", memberList);
        	logger.info("modellist 보야워 memberList={}",memberList);
        	model.addAttribute("msg","다운 성공");
        	model.addAttribute("url","/login/login.do");
        }
        
        return "common/message";
    }*/
	
	@RequestMapping(value="/uploadExcel.do", method=RequestMethod.GET)
	public String uploadFile_get(){
		logger.info("업로드 화면 보여주기");
		
		return "excel/uploadExcel";
	}
	
	@RequestMapping(value="/uploadExcel.do", method=RequestMethod.POST)
	public String uploadFile_post(MultipartHttpServletRequest request,Model model){
		MultipartFile file = request.getFile("excel");
		logger.info("받아온 파일의 이름 file={}",file);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<MemberVO> list = new ArrayList<MemberVO>();
		if (file!=null && file.getSize()>0) {
			try {
				Workbook wb = new HSSFWorkbook(file.getInputStream());
				logger.info("들어왔나 확인해야해 wb={}",wb);
				Sheet sheet = wb.getSheetAt(0);
				
				int last = sheet.getLastRowNum();
				logger.info("마지막 시트는 last={}",last);
				
				for(int i=1; i<=last; i++){
					Row row = sheet.getRow(i);
					MemberVO memberVo = new MemberVO();
					
					String member_id = row.getCell(0, Row.CREATE_NULL_AS_BLANK).getStringCellValue();
					
					if (!member_id.equals("") && member_id!=null) {
						
						memberVo.setMemberId(member_id);
						memberVo.setMemberName(row.getCell(1, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						memberVo.setMemberPwd(row.getCell(2, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						memberVo.setMemberJumin(row.getCell(3, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						memberVo.setMemberEmail(row.getCell(4, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						memberVo.setMemberHp(row.getCell(5, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						memberVo.setMemberGender(row.getCell(6, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						memberVo.setMemberZipcode(row.getCell(7, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						memberVo.setMemberAddr(row.getCell(8, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						memberVo.setMemberAddr2(row.getCell(9, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						list.add(memberVo);
						map.put("list", list);
					}
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}//if
		
		excelService.excelAdd(map);
		
		model.addAttribute("msg", "회원 등록에 성공했습니다.");
		model.addAttribute("url", "/admin/member/memberSearchList.do");
		
		return "common/message";
	}
	
	@RequestMapping(value="/memberView.do")
	public String excelMember(Map<String, Object> ModelMap){
		// 리스트 수행 후, 리스트 화면에서 엑셀저장을 클릭하면 excelVeiw가 정상적으로 실행되고
        // 리스트를 실행하지 않고 index에서 엑셀저장 클릭시 NullPointerException발생
        
        // NullPointerException대신 home.jsp를 실행
        /* asMap은 model의 값을 map으로 변환
        if(!model.asMap().containsKey("list")){ 
            return "home"; //list가 안담겨져 있을 때는 엑셀 다운로드 못받도록 하는거임
        }
        */
		 
        
       /* // Exception 처리
        if(!model.asMap().containsKey("list")){
            throw new NullPointerException(); 
            //NullPointerException()이 발생하면
            //exceptinPro()메소드를 실행
        }*/
		  
		List<MemberVO> memberList=memberService.selectAllMember();
		logger.info("memberlist들어간건가... memberList.size={}",memberList.size());
        ModelMap.put("excelList", memberList);

        return "admin/member/memberList";
	}
	
	@RequestMapping("/downloadForm.do")
	public String downloadForm(HttpServletRequest request,HttpServletResponse response){
		// 파일 업로드된 경로
	    String root = request.getSession().getServletContext().getRealPath("/");
	    logger.info("root={}",root);
	    String savePath = root + "excel_download";
	    logger.info("이건 뭐람 savePath={}",savePath);
	 
	    // 서버에 실제 저장된 파일명
	    String filename = "member_db_form.xls" ;
	     
	    // 실제 내보낼 파일명
	    String orgfilename = "member_db_form.xls" ;
	      
	 
	    InputStream in = null;
	    OutputStream os = null;
	    File file = null;
	    boolean skip = false;
	    String client = "";
	 
	 
	    try{
	        // 파일을 읽어 스트림에 담기
	        try{
	            file = new File(savePath, filename);
	            in = new FileInputStream(file);
	        }catch(FileNotFoundException fe){
	            skip = true;
	        }
	         
	        client = request.getHeader("User-Agent");
	 
	        // 파일 다운로드 헤더 지정
	        response.reset() ;
	        response.setContentType("application/octet-stream");
	        response.setHeader("Content-Description", "JSP Generated Data");
	 
	 
	        if(!skip){
	            // IE
	            if(client.indexOf("MSIE") != -1){
	                response.setHeader ("Content-Disposition", "attachment; filename="+new String(orgfilename.getBytes("KSC5601"),"ISO8859_1"));
	 
	            }else{
	                // 한글 파일명 처리
	                orgfilename = new String(orgfilename.getBytes("utf-8"),"iso-8859-1");
	 
	                response.setHeader("Content-Disposition", "attachment; filename=\"" + orgfilename + "\"");
	                response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
	            }  
	             
	            response.setHeader ("Content-Length", ""+file.length() );
	 
	            os = response.getOutputStream();
	            byte b[] = new byte[(int)file.length()];
	            int leng = 0;
	             
	            while( (leng = in.read(b)) > 0 ){
	                os.write(b,0,leng);
	            }
	 
	        }else{
	            response.setContentType("text/html;charset=UTF-8");
	            System.out.println("<script language='javascript'>alert('파일을 찾을 수 없습니다');history.back();</script>");
	 
	        }
	         
	        in.close();
	        os.close();
	 
	    }catch(Exception e){
	      e.printStackTrace();
	    }
	    
	    return "excel/uploadExcel";
	}
}
