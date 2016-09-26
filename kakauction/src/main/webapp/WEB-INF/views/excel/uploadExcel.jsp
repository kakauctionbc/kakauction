<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../design/inc/adminTop.jsp" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript">
	$(function(){
		$("#excelUpFrom").submit(function(){
			if($("#excel").val().length<1){
				alert("파일을 올려주세요");
				return false;
			}else{
				var fileFormat = $("#excel").val().split(".").pop().toLowerCase();
				var fileType = fileFormat.indexOf("xls");
				var fileType2 = fileFormat.indexOf("xlsx");
				if(fileType<0 || fileType2<0){
					alert("엑셀 파일을 올려주세요");
					event.preventDefault();
				}
			}
			
			if(filType!=0) return true; 
			if(fileType2!=0) return true;
		});
	}); 
</script>
<style>
		.align_center{
		text-align: center;
	}
	.btdel {
		float:left;
	}
	
	.btBlack{
		float:left;
	}
	.align_right{
		float:right;
	}
	td, th{
		border: 1px solid silver;
	}
	.memTable{
		margin-top: 10px;
	}
	
	.changeGrade{
		margin-top: 10px;
	}
</style>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/admin/index.do">HOME</a>>회원관리>회원엑셀일괄등록
			</p>
		</div>
		<div id="pagelogo">
			<img src="${pageContext.request.contextPath }/img/excel_logo.png" alt="엑셀등록로고">
		</div>
		<div class="download">
			<form action="excelFromDown" method="post" action="<c:url value='/admin/excel/uploadExcel.do'/>" enctype="multipart/form-data">
				<div>
					<p>■ 양식 다운로드</p>
					<p>- 회원 정보 등록을 위하여 먼저 엑셀 양식을 다운받으세요.</p>
				</div>
				<div class="form_group">
					<div class="upFile">
						<table>
							<tr>
								<th>양식 다운로드</th>
								<td>						
									<button type="submit" id="excelDown"><a href="<c:url value='/admin/excel/downloadForm.do'/>">양식다운로드</a></button>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</form>
		</div>
		<div class="upload">
			<form id="excelUpFrom" method="post" action="<c:url value='/admin/excel/uploadExcel.do'/>" enctype="multipart/form-data">
				<div>
					<p>■ 엑셀 업로드</p>
					<p>- 엑셀 업로드를 이용하시면 회원 정보를 일괄로 등록하실 수 있습니다.</p>
				</div>
				<div class="notice">
					<p>주의 사항<p>
					<p>*엑셀 파일만 업로드 가능합니다.</p>
					<p>*첫 번째 시트에 데이터가 있어야 합니다. [시트명 : Sheet1]</p>
					<p>*엑셀 작성 시, 중간에 빈 줄이 없어야 합니다.</p>
				</div>
				<div class="form_group">
					<div class="upFile">
						<table>
							<tr>
								<th>엑셀파일 등록</th>
								<td>						
									<input id="excel" type="file" name="excel">
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="form_submit">
					<button type="submit" id="excelUp">등록하기</button>
				</div>
			</form>
		</div>
	</div>
</div>


	
<%@ include file="../design/inc/adminBottom.jsp" %>