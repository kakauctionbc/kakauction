<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript"
	src="<c:url value='/jquery/jquery-3.1.0.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/js/member.js'/>"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#wr_submit").click(function(event){
			if($("#memberName").val().length < 1){
				alert("이름을 입력하세요");
				$("#memberName").focus();
				return false;
			}else if($("#memberPwd").val().length < 1){
				alert("비밀번호를 입력하세요");
				$("#memberPwd").focus();
				return false;
			}else if(!validate_hp($("#hp2").val()) || !validate_hp($("#hp3").val())){
				alert("휴대폰 번호는 숫자여야 합니다");
				$("#hp2").focus();
				return false;
			}else if($("#jumin1").val().length < 1){
				alert("주민번호를 입력하세요");
				$("#jumin1").focus();
				return false;
			}else if($("#jumin2").val().length < 1){
				alert("주민번호를 입력하세요");
				$("#jumin2").focus();
				return false;
			}else if($("#hp2").val().length<1 || $("#hp3").val().length<1 ){
				alert("핸드폰 번호를 입력하세요");
				$("#hp2").focus();
				return false;
			}else if($("#memberGender").is(":checked") == false ){
			    alert("성별을 선택 하세요");
			    return false;
			}
		});//click
		
 
		$("#memberId").keyup(function(){
			//1 <= 해당 아이디가 존재하는 경우
			//2 <= 존재하지 않는 경우
			
			if (validate_userid($("#memberId").val()) && $("#memberId").val().length>=2 && $("#memberId").val().length<=20) {
				$.ajax({
					url:"<c:url value='/member/ajaxCheckUserid.do'/>",
					type:"GET",
					data:"memberId="+$("#memberId").val(),
					success:function(res){
						var result = "";
						if (res==1) {
							result = "이미사용중이거나 탈퇴한 아이디입니다.";
							$("#chkId").val("N");
						}else if(res==2){
							result = "멋진 아이디네요!"
							$("#chkId").val("Y");
						}
						$("#message").html(result);
					},
					error:function(xhr, status, error){
						alert(status+":"+error);
					}
				});
			} else {
				//유효성 검사를 통과하지 못한 경우
				$("#message").html("5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.");
				$("#chkId").val("N");
			}
		});
		
		$("#memberName").keyup(function() {
			validate_name(memberName)
			if(!validate_name($("#memberName").val())){
				$("#Namemessage").html("이름은 한글만 가능합니다.");
			}else{
				$("#Namemessage").html("");
			}
		});

		$("#memberPwd").keyup(function(){
			if (validate_pwd($("#memberPwd").val()) && $("#memberPwd").val().length>=8) {
				$("#PWDmessage").html("");
			} else {
				//유효성 검사를 통과하지 못한 경우
				$("#PWDmessage").html("비밀번호는 영문/숫자/특문 포함 8자리 이상입니다.");
			}
		});
		
		$("#memberPwd2").keyup(function(){
			if($("#memberPwd").val()!=$("#memberPwd2").val()){
				$("#PWDmessage2").html("비밀번호가 일치하지 않습니다.");
				$("#memberPwd2").focus();
			} else {
				$("#PWDmessage2").html("");
			}
		});
		
	});
</script>

<div id="wrap">
	<form name="frm1" method="post"
		action="<c:url value="/member/memberAdd.do"/>">
		<div id="registerwrap">
			<div id="registertop">
				<p>
					<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>회원가입>일반회원가입
				</p>
			</div>
			<div id="registerlogo">
				<img
					src="${pageContext.request.contextPath }/img/register_logo.png"
					alt="로그인로고">
			</div>
			<div id="step">
				<img
					src="${pageContext.request.contextPath }/img/register_step2.png"
					alt="스텝로고">
			</div>
			<div id="register_txt">
				<dl>
					<dt>아래의 양식을 기입하신 후, ‘가입하기’ 버튼을 누르십시오.</dt>
					<dd>아이디는 추후변경이 안되니 정확히 기입하십시오.</dd>
					<dd>입력하신 정보가 허위일 경우, 통보없이 가입이 취소됩니다.</dd>
					<dd>
						[&nbsp;<img
							src="${pageContext.request.contextPath }/img/check.png" alt="" />&nbsp;]으로
						표시된 항목은 필수항목이므로 꼭 입력하셔야 합니다.
					</dd>
				</dl>
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
						<th><label for="name"> <img
								src="${pageContext.request.contextPath }/img/check.png" alt="" />성명(한글)
						</label></th>
						<td><input type="text" name="memberName" id="memberName"
							style="ime-mode: active; width: 160px;"> <span
							id="Namemessage" style="color: red"></span></td>
						<th><label for="userid"> <img
								src="${pageContext.request.contextPath }/img/check.png"
								alt="" />회원 ID
						</label></th>
						<td><input type="text" name="memberId" id="memberId"
							style="ime-mode: inactive; width: 160px;">&nbsp; <span
							id="message" style="color: red"></span></td>
					</tr>
					<tr>
						<th><label for="pwd"> <img
								src="${pageContext.request.contextPath }/img/check.png"
								alt="" />비밀번호
						</label></th>
						<td><input type="Password" name="memberPwd" id="memberPwd"
							style="width: 120px;"> <span id="PWDmessage"
							style="color: red"></span></td>
						<th><label for="pwd2"> <img
								src="${pageContext.request.contextPath }/img/check.png"
								alt="" />비밀번호 확인
						</label></th>
						<td><input type="Password" name="memberPwd2" id="memberPwd2"
							style="width: 120px;"> <span id="PWDmessage2"
							style="color: red"></span></td>
					</tr>
					<tr>
						<th><label for="jumin"> <img
								src="${pageContext.request.contextPath }/img/check.png"
								alt="" />주민번호
						</label></th>
						<td><input type="text" name="jumin1" id="jumin1"
							style="width: 120px;"> - <input type="password"
							name="jumin2" id="jumin2" style="width: 120px;"> <input
							type="hidden" name="memberJumin" id="memberJumin"></td>
						<th><label for="gender"> <img
								src="${pageContext.request.contextPath}/img/check.png"
								alt="" />성별
						</label></th>
						<td><input type="radio" name="memberGender" id="memberGender"
							value="M"><label for="memberGender">남자</label> <input type="radio" name="memberGender"
							id="memberGender1" value="F"><label for="memberGender1">여자</label></td>
					</tr>
					<tr>
						<th><label for="email1"> <img
								src="${pageContext.request.contextPath}/img/check.png"
								alt="" />E-mail
						</label></th>
						<td><input type="text" name="email1" id="email1"
							title="이메일주소 앞자리" style="width: 120px;"> @ <select
							name="email2" id="email2" title="이메일주소 뒷자리">
								<option value="naver.com">naver.com</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="nate.com">nate.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="etc">직접입력</option>
						</select> <input type="text" name="email3" id="email3"
							title="직접입력인 경우 이메일주소 뒷자리"
							style="visibility: hidden; width: 100px"> </select></td>

						<th><label for="hp1"> <img
								src="${pageContext.request.contextPath }/img/check.png"
								alt="" />핸드폰
						</label></th>
						<td><select name="hp1" id="hp1" title="휴대폰 앞자리">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
						</select> - <input type="text" name="hp2" id="hp2" maxlength="4"
							title="휴대폰 가운데자리" style="width: 70px;"> - <input
							type="text" name="hp3" id="hp3" maxlength="4" title="휴대폰 뒷자리"
							style="width: 70px;"></td>
					</tr>
					<tr>
						<th><label for="zipcode"> <img
								src="${pageContext.request.contextPath }/img/check.png"
								alt="" />주소
						</label></th>
						<td colspan="3">
							<ul class="address_ul">
								<li><input type="text" name="memberZipcode"
									id="memberZipcode" ReadOnly title="우편번호" style="width: 120px;">
									<input type="Button" value="우편번호 찾기" id="btnZipcode"
									title="새창열림"></li>
								<li id="address_li"><input type="text" name="memberAddr"
									id="memberAddr" ReadOnly title="주소" style="width: 230px;">
								</li>
								<li id="address_li"><input type="text" name="memberAddr2"
									id="memberAddr2" title="상세주소" placeholder="상세주소"
									style="width: 320px;" required></li>
							</ul>
						</td>
					</tr>

				</tbody>
			</table>
			<div id="btn_area">
				<ul>
					<li id="btn_register">
						<button type="submit">관리자등록</button>
					</li>
					<li id="btn_cancel">
						<button type="reset">취소</button>
					</li>
				</ul>
			</div>
		</div>
	</form>
</div>

<%@ include file="../design/inc/bottom.jsp"%>








