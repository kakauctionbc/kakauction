<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../design/inc/top.jsp" %>
<script type="text/javascript" src="<c:url value='/js/member.js'/>"></script>
	
<script type="text/javascript">
$(document).ready(function(){
	$("#wr_submit").click(function(event){
		if($("#name").val().length < 1){
			alert("이름을 입력하세요");
			$("#name").focus();
			return false;
		}else if(!validate_userid($("#userid").val())){
			alert("아이디는 영문이나 숫자 _만 가능합니다!");
			$("#userid").focus();
			return false;
		}else if($("#pwd").val().length<1){
			alert("비밀번호를 입력하세요");
			$("#pwd").focus();
			return false;
		}else if($("#pwd").val()!=$("#pwd2").val()){
			alert("비밀번호가 일치하지 않습니다.");
			$("#pwd2").focus();
			return false;
		}else if($("#chkId").val()!='Y'){
			alert("아이디 중복확인을 하셔야 합니다!");
			$("#btnChkId").focus();
			return false;
		}else if(!validate_hp($("#hp2").val()) || 
				!validate_hp($("#hp3").val())){
			alert("휴대폰 번호는 숫자여야 합니다");
			$("#hp2").focus();
			return false;
		}
	});//click
	
	$("#btnChkId").click(function(){
		var userid=$("#userid").val();
				
		window.open(
		"<c:url value='design/checkUserid.do?userid="
				+userid+"'/>",	"chkId",
"width=450,height=250,left=50,top=50,resizable=yes,location=yes");
	});
	$(function(){
		$("#email2 option[value='etc']").click(function () {
   			$("#email3").show();
		}
	});
});
</script>
<div id="wrap">
	<form name="frm1" id=frm1" method="post" action="<c:url value='/member/memberEdit.do'/>">
	<div id="registerwrap">
		<div id="registertop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>회원정보수정
			</p>
		</div>
		<div id="pagelogo">
			<img src="${pageContext.request.contextPath }/img/edit_logo.png"
				alt="로그인로고">
		</div>

			
		<table id="registertable">
			<colgroup>
				<col width="120" />
				<col width="440" />
				<col width="140" />
				<col width="*" />
			</colgroup>
			<tbody>

				<tr>
					<th><label for="name">
					<img src="${pageContext.request.contextPath }/img/check.png" alt="" />성명(한글)</label></th>
					<td>
        				<input type="text" name="memberName" id="memberName" style="ime-mode:active; width: 120px;" value="${memVo.memberName }" readonly="readonly">
					</td>
					<th><label for="userid">
					<img src="${pageContext.request.contextPath }/img/check.png" alt=""/>회원 ID</label></th>
					<td>
			      		<input type="text" name="memberId" id="memberId" value="${memVo.memberId }" style="ime-mode:inactive; width: 120px;" value="" readonly="readonly">&nbsp;
					</td>
				</tr>
				<tr>
					<th><label for="email1">
					<img src="${pageContext.request.contextPath }/img/check.png" alt="" />E-mail</label></th>
					<td>
					<c:set var="etcYn" value="" />
			    	<c:choose>
			    		<c:when test="${email2=='naver.com' || email2=='hanmail.net'
			    			|| email2=='nate.com' || email2=='gmail.com'
			    			|| empty email2 }">
			    			<!-- 직접 입력이 아닌 경우 -->
			    			<c:set var="etcYn" value="N"/>
			    		</c:when>
			    		<c:otherwise>
			    			<c:set var="etcYn" value="Y"/>
			    		</c:otherwise>
			    	</c:choose>
					<input type="hidden" name="email">
					<input type="text" name="email1" id="email1" title="이메일주소 앞자리" value="${email1}" style="width: 120px;"> @
			        <select name="email2" id="email2"  
			        title="이메일주소 뒷자리">
			            <option value="naver.com"
			            	<c:if test="${email2=='naver.com' }"> 
			            		selected
			            	</c:if>
			            >naver.com</option>
			            <option value="hanmail.net"
			            	<c:if test="${email2=='hanmail.net' }"> 
			            		selected
			            	</c:if>
			            >hanmail.net</option>
			            <option value="nate.com"
			            	<c:if test="${email2=='nate.com' }">
			            		selected
			            	</c:if>
			            >nate.com</option>
			            <option value="gmail.com"
			            	<c:if test="${email2=='gmail.com' }">
			            		selected
			            	</c:if>
			            >gmail.com</option>
			            <option value="etc"
			            	<c:if test="${etcYn=='Y' }">
			            		selected
			            	</c:if>
			            >직접입력</option>
			        </select>	
					<input type="text" name="email3" id="email3"
						title="직접입력인 경우 이메일주소 뒷자리" style="visibility: hidden; width:100px"
			        	<c:if test="${etcYn=='Y' }">
			        		style="visibility:visible"
			        		value=${email2 }
			        	</c:if>
			        	<c:if test="${etcYn=='N' }">
			        		style="visibility:hidden"
			        	</c:if>       	
			        	>
			        <input type="hidden" name="memberEmail" id="memberEmail">
					</td>
					<th><label for="hp1">
					<img src="${pageContext.request.contextPath }/img/check.png" alt="" />핸드폰</label></th>
					<td>
						<select name="hp1" id="hp1" title="휴대폰 앞자리">
								<option value="010"
					            	<c:if test="${hp1=='010' }">
					            		selected
					            	</c:if>
					            >010</option>
					            <option value="011"
					            	<c:if test="${hp1=='011' }">
					            		selected
					            	</c:if>
					            >011</option>
					            <option value="016"
					            	<c:if test="${hp1=='016' }">
					            		selected
					            	</c:if>
					            >016</option>
					            <option value="017"
					            	<c:if test="${hp1=='017' }">
					            		selected
					            	</c:if>
					            >017</option>
					            <option value="018"
					            	<c:if test="${hp1=='018' }">
					            		selected
					            	</c:if>
					            >018</option>
					            <option value="019"`
					            	<c:if test="${hp1=='019' }">
					            		selected
					            	</c:if>
					            >019</option>
						</select> -
	
        				<input type="text" name="hp2" id="hp2" value="${hp2}" maxlength="4" title="휴대폰 가운데자리"
        				style="width: 70px;"> -

        	      		<input type="text" name="hp3" id="hp3" value="${hp3}" maxlength="4" title="휴대폰 뒷자리"
        				style="width: 70px;">
        				
        				<input type="hidden" name="memberHp" id="memberHp">
        			</td>
				</tr>
				<tr>
					<th><label for="zipcode">
					<img src="${pageContext.request.contextPath }/img/check.png" alt="" />주소</label></th>
					<td colspan="3">
						<ul class="address_ul">
							<li>
								<input type="text" name="zipcode" id="zipcode" ReadOnly title="우편번호" style="width: 120px;">
        						<input type="Button" value="우편번호 찾기" id="btnZipcode" title="새창열림" >
        					</li>
							<li id="address_li">
								<input type="text" name="memberAddr" id="memberAddr" value="${memVo.memberAddr }" ReadOnly title="주소" style="width:230px;">
							</li>
							<li id="address_li">
								<input type="text" name="memberAddr2" id="memberAddr2" value="${memVo.memberAddr2 }" title="상세주소" placeholder="상세주소" 
								 style="width: 320px;" required>
							</li>
						</ul>
					</td>
				</tr>
			</tbody>
		</table>
		<div id="btn_area">
			<ul>
				<li id="btn_register">
					<button type="submit" id="wr_submit">회원정보수정</button>
				</li>
				<li id="btn_cancel">
					<input type="text">
				</li>
			</ul>
		</div>
	</div>
	</form>
</div>
 

<%@ include file="../design/inc/bottom.jsp"%>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/js/member.js'/>"></script>
<script type="text/javascript">

</script>

<style type="text/css">
	.width_80{
		width:80px;
	}
	.width_350{
		width:350px;
	}	
</style>
<article>
<div class="divForm">
<form name="frm1" id=frm1" method="post" action="<c:url value='/member/memberEdit.do'/>">
<fieldset>
	<legend>회원 수정</legend>
    <div>        
        <label for="memberName">성명</label>
        <span>${memVo.memberName }</span>
    </div>
    <div>
        <label for="userid">회원ID</label>
         <span>${memVo.memberId }</span>
    </div>
    <div>
        <label for="zipcode">주소</label>
        <input type="text" name="zipcode" id="zipcode" ReadOnly
        	title="우편번호" class="width_80" style="text-align: center;">
        <input type="Button" value="우편번호 찾기" id="btnZipcode" title="새창열림"><br />
        <span class="sp1">&nbsp;</span>
        <!-- <input type="text" name="memberAddr" id="memberAddr" ReadOnly title="주소"  class="width_350"  style="padding-left: 10px;"><br /> -->
        <input type="text" name="memberAddr" id="memberAddr"  title="주소"  class="width_350"  style="padding-left: 10px;" value="${memVo.memberAddr }"><br />
        <span class="sp1">&nbsp;</span>
        <input type="text" name="memberAddr2" id="memberAddr2" title="상세주소"  class="width_350"  style="padding-left: 10px;" value="${memVo.memberAddr2 }">
    </div>
    <div>
    	<input type="hidden" name="hp">
        <label for="hp1">핸드폰</label>&nbsp;
        <select name="hp1" id="hp1" title="휴대폰 앞자리">
            <option value="010"
            	<c:if test="${hp1=='010' }">
            		selected
            	</c:if>
            >010</option>
            <option value="011"
            	<c:if test="${hp1=='011' }">
            		selected
            	</c:if>
            >011</option>
            <option value="016"
            	<c:if test="${hp1=='016' }">
            		selected
            	</c:if>
            >016</option>
            <option value="017"
            	<c:if test="${hp1=='017' }">
            		selected
            	</c:if>
            >017</option>
            <option value="018"
            	<c:if test="${hp1=='018' }">
            		selected
            	</c:if>
            >018</option>
            <option value="019"`
            	<c:if test="${hp1=='019' }">
            		selected
            	</c:if>
            >019</option>
       	</select>
        -
        <input type="text" name="hp2" id="hp2" maxlength="4" title="휴대폰 가운데자리" value="${hp2}"
        	class="width_80">-
        <input type="text" name="hp3" id="hp3" maxlength="4" title="휴대폰 뒷자리" value="${hp3}"
        	class="width_80">
        <input type="hidden" name="memberHp" id="memberHp">
    </div>
    <div>
    	
    </div>
     <div class="center">
         <input type="submit" id="wr_submit" value="수정">
    </div>
</fieldset>

    <input type ="text" name="chkId" id="chkId">
    <input type ="text" name="chkId1" id="chkId1">
        
</form>
</div>
</article>












