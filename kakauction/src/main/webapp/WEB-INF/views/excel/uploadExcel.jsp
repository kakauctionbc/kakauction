<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../design/inc/top.jsp" %>
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
	.upload{
		width: 400px;
		height: 400px;
		margin: 0 auto;
		margin-top: 100px;
	}
</style>
	<div class="upload">
		<strong>**주의 사항**</strong>
		<form id="excelUpFrom" method="post" action="<c:url value='/excel/uploadExcel.do'/>">
			<p>*엑셀 파일만 업로드 가능합니다.</p>
			<p>*첫 번째 시트에 데이터가 있어야 합니다. [시트명 : Sheet1]</p>
			<p>*엑셀 작성 시, 중간에 빈 줄이 없어야 합니다.</p>
			
			<div class="form_group">
				<label>엑셀 파일</label>
				<div class="upFile">
					<input id="excel" type="file" name="excel">엑셀 파일
				</div>
			</div>
			<div class="form_submit">
				<button type="submit" id="excelUp">등록하기</button>
			</div>
		</form>
	</div>
<%@ include file="../design/inc/bottom.jsp" %>