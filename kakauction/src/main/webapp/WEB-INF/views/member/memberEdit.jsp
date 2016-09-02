<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
        <label for="email1">이메일 주소</label>
        <input type="text" name="email1"  id="email1" title="이메일주소 앞자리" value="${email1}">@
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
        	title="직접입력인 경우 이메일주소 뒷자리"
        	<c:if test="${etcYn=='Y' }">
        		style="visibility:visible"
        		value=${email2 }
        	</c:if>
        	<c:if test="${etcYn=='N' }">
        		style="visibility:hidden"
        	</c:if>       	
        	>
        <input type="hidden" name="memberEmail" id="memberEmail">
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












