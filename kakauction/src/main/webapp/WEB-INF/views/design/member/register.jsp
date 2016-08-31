<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<script type="text/javascript" 
	src="<c:url value='/js/member.js'/>"></script>
	
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
			"<c:url value='/member/checkUserid.do?userid="
					+userid+"'/>",	"chkId",
	"width=450,height=250,left=50,top=50,resizable=yes,location=yes");
		});
		
	});//document.ready
	
	
	
</script>
<div id="wrap">
	<div id="registerwrap">
		<div id="registertop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>회원가입>일반회원가입
			</p>
		</div>
		<div id="registerlogo">
			<img src="${pageContext.request.contextPath }/img/register_logo.png"
				alt="로그인로고">
		</div>
		<table class="sub_tb_01 mb25" style="width: 1030px">
			<colgroup>
				<col width="160" />
				<col width="355" />
				<col width="160" />
				<col width="*" />
			</colgroup>
			<tbody>
				<tr>
					<th><strong><label for="name">성명(한글)</label></strong></th>
					<td>
        				<input type="text" name="name" id="name" style="ime-mode:active">
					</td>
					<th><strong><label for="userid">회원 ID</label></strong></th>
					<td>
			      		<input type="text" name="userid" id="userid" style="ime-mode:inactive">&nbsp;
			        	<input type="button" value="중복확인" id="btnChkId" title="새창열림">
					</td>
				</tr>
				<tr>
					<th><strong><label for="pwd">비밀번호</label></strong></th>
       				<td>
       					<input type="Password" name="pwd" id="pwd">
       				</td>
					<th><strong><label for="pwd2">비밀번호 확인</label></strong></th>
					<td>
						<input type="Password" name="pwd2" id="pwd2">
					</td>
				</tr>
				<tr>
					<th><strong>직업</strong></th>
					<td><select name="i_sJobType" id="i_sJobType"
						style="width: 195px">
							<option value="">선택</option>

							<option value="01">직장인</option>

							<option value="02">자영업</option>

							<option value="03">공무원</option>

							<option value="04">전문직</option>

							<option value="05">주부</option>

							<option value="06">학생</option>

							<option value="99">기타</option>

					</select></td>
					<th><strong>생년월일</strong></th>
					<td><select name="i_sBirthdayYear" style="width: 60px">
							<option value="">선택</option>
					</select>&nbsp;년&nbsp; <select name="i_sBirthdayMonth" style="width: 50px">
							<option value="">선택</option>
					</select>&nbsp;월&nbsp; <select name="i_sBirthdayDay" style="width: 50px">
							<option value="">선택</option>
					</select>&nbsp;일&nbsp; <input type="radio" id="i_sSolarYn" name="i_sSolarYn"
						value="Y" class="myClass" title="양력" checked="checked" /> <label
						for="month1" class="myClass_label">양력</label> <input type="radio"
						id="i_sSolarYn" name="i_sSolarYn" value="N" class="myClass"
						title="음력" /> <label for="month2" class="myClass_label">음력</label>
					</td>
				</tr>
				<tr>
					<th><strong>E-mail</strong></th>
					<td colspan="3"><input type="text" id="i_sJoinEmail1"
						name="i_sJoinEmail1" class="required" alt="이메일 아이디"
						onkeydown="fn_press_han(this);"
						style="width: 184px; ime-mode: disabled;" placeholder="" value=""
						maxlength="20" />&nbsp;@&nbsp; <input type="text"
						id="i_sJoinEmail2" name="i_sJoinEmail2" class="required"
						alt="이메일 도메인" onkeydown="fn_press_han(this);"
						style="width: 88px; ime-mode: disabled;" placeholder="" value=""
						maxlength="20" /> <select name="i_sJoinEmailCd"
						id="i_sJoinEmailCd" alt="이메일">
							<option value="">직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="nate.com">네이트</option>
							<option value="gmail.com">지메일</option>
							<option value="hanmail.net">한메일</option>
							<option value="hotmail.com">핫메일</option>
					</select> <a href="javascript:;" class="btn_mailcheck tb_btn">&nbsp;&nbsp;중복확인</a>
					</td>
				</tr>
				<tr>
					<th><strong><label for="zipcode">주소</label></strong></th>
					<td colspan="3">
						<ul class="address_ul">
							<li>
								<input type="text" name="zipcode" id="zipcode" ReadOnly title="우편번호" class="width_80">
        						<input type="Button" value="우편번호 찾기" id="btnZipcode" title="새창열림">
        					</li>
							<li>
								<input type="text" name="address" id="address" ReadOnly title="주소"  class="width_350">
							</li>
							<li>
								<input type="text" name="addressDetail" title="상세주소"  class="width_350">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<th><strong><label for="hp1">핸드폰</label></strong></th>
					<td>
						<select name="hp1" id="hp1" title="휴대폰 앞자리">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
						</select>
					</td>
					<td>
        				<input type="text" name="hp2" id="hp2" maxlength="4" title="휴대폰 가운데자리"
        				class="width_80">
        			</td>
        			<td>
        	      		<input type="text" name="hp3" id="hp3" maxlength="4" title="휴대폰 뒷자리"
        				class="width_80">
        			</td>
				</tr>
				<tr>
					<th><strong>메일수신여부</strong></th>
					<td><input type="radio" id="i_sMailFlag" name="i_sMailFlag"
						class="myClass" title="수신함" value="Y" checked="checked" /><label
						for="remember" class="myClass_label">수신함</label>&nbsp;&nbsp;&nbsp;
						<input type="radio" id="i_sMailFlag" name="i_sMailFlag"
						class="myClass" title="수신안함" value="N" /><label for="remember"
						class="myClass_label">수신안함</label></td>
					<th><strong>문자수신여부</strong></th>
					<td><input type="radio" id="i_sSmsFlag" name="i_sSmsFlag"
						class="myClass" title="수신함" value="Y" checked="checked" /><label
						for="remember" class="myClass_label">수신함</label>&nbsp;&nbsp;&nbsp;
						<input type="radio" id="i_sSmsFlag" name="i_sSmsFlag"
						class="myClass" title="수신안함" value="N" /><label for="remember"
						class="myClass_label">수신안함</label></td>
				</tr>
			</tbody>
		</table>
		<div class="btn_area_c">
			<ul class="btn">
				<li class="btn_st01_ok"><a href="javascript:;" class="btn_reg"
					title="확인">확인</a></li>
				<li class="btn_st01_cancle btn_cancel"><a href="javascript:;"
					title="취소">취소</a></li>
				<!--li class="btn_st01_cancle btn_new_drop"><a href="javascript:;" title="회원탈퇴">회원탈퇴</a></li-->
			</ul>
		</div>
	</div>
</div>
 

<%@ include file="../inc/bottom.jsp"%>