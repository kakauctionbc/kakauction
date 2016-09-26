<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js' />"></script>
<script type="text/javascript">
	
	$(function(){ 
		$("#carEdit").click(function(event){
			var bool = false;
			
			if($("#carCompany").val().length<1){
				alert("공고기관을 입력하세요");
				$("#carCompany").focus();
				bool = true;
			}else if($("#carNum").val().length<1){
				alert("차량 번호를 입력하세요");
				$("#carNum").focus();
				bool = true;
			}else if($("#carModel").val().length<1){
				alert("차량명을 입력하세요");
				$("#carModel").focus();
				bool = true;
			}else if($("#carBirth1").val()==''){
				alert("연식 년도를 선택하세요");
				$("#carBirth1").focus();
				bool = true;
			}else if($("#carBirth2").val()==''){
				alert("연식 월을 입력하세요");
				$("#carBirth2").focus();
				bool = true;
			}else if($("#carSize").val()==''){
				alert("차종을 선택하세요");
				$("#carSize").focus();
				bool = true;
			}else if($("#carAm").val()==''){
				alert("변속기를 선택하세요");
				$("#carAm").focus();
				bool = true;
			}else if($("#carGas").val().length<1){
				alert("연료를 선택하세요");
				$("#carGas").focus();
				bool = true;
			}else if($("#carCc").val().length<1){
				alert("배기량을 입력하세요");
				$("#carCc").focus();
				bool = true;
			}else if($("#carDist").val().length<1){
				alert("주행거리를 입력하세요");
				$("#carDist").focus();
				bool = true;
			}else if($("#carColor").val().length<1){
				alert("차량색상을 선택하세요");
				$("#carColor").focus();
				bool = true;
			}else if($("#carPrice").val().length<1){
				alert("초기구입가를 입력하세요");
				$("#carPrice").focus();
				bool = true;
			}else if($("#carLoc").val().length<1){
				alert("차량 현재 위치를 입력하세요");
				$("#carLoc").focus();
				bool = true;
			}else if($("#sellerAgree2:checked").val()=='2'){
				alert("차량 판매 약관에 동의하세요");
				$("#sellerAgree2").focus();
				bool=true;
			}

			/* $("input[type='file']").each(function(){
				if(!$(this).val()){
					alert("사진은 20장 모두 등록하셔야 합니다");
					bool = true;
					return false;
				}
			}); */
			
			if(!bool){
				$("#carBirth").val($("#carBirth1").val()+"년"+$("#carBirth2").val()+"월");
				$("#editCar").submit();
			}
			
		});
		
		$("#myLoc").click(function(){
			$("#carLoc").val("${memVo.memberAddr }");
		});
		
		$(".imgfile label img").hover(function(){
			$(this).css("cursor","pointer");
		}, function(){
			$(this).css("cursor","");
		});
	});
	
	function readURL(input, num) {
/* 		$("#UploadedImg").css("border-radius","40px");
 */		
	    if (input.files && input.files[0]) {
			var fileName = input.files[0].name;
	 		$("#picture"+num).val(fileName); //fileName 넣기
	 		
	        var reader = new FileReader();
	        reader.onload = function (e) {
	            $('#UploadedImg'+num).attr('src', e.target.result);
	        };
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
</script>
<style type="text/css">
	th{
		background: #fffffb;
		padding-left: 10px;
	}
	th label{
		text-align: left;
	}
	th img{
		float: left;
	}
	#memberInfoTable td, #memberInfoTable th, #memberInfoTable{
		border: 1px solid #acacac;
		border-collapse: collapse;
	}
	
	#carInfoTable td, #carInfoTable th, #carInfoTable{
		border: 1px solid #acacac;
		border-collapse: collapse;
	}
	
	#carOptionTable td, #carOptionTable th, #carOptionTable{
		border: 1px solid #acacac;
		border-collapse: collapse;
	}
	
	/* .imgfile{
		width:80px; 
		height:80px;
		-webkit-border-radius:40px;
		-moz-border-radius:40px;
		border-radius: 40px; 
	}*/
</style>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<p>
				<a href="${pageContext.request.contextPath }/design/index.do">HOME</a>>보류경매 수정
			</p>
		</div>
		<div id="pagelogo">
			<img
				src="${pageContext.request.contextPath }/img/car_register_logo.png"
				alt="차량 등록 로고">
		</div>
		<form  id="editCar" name="editCar" method="post" enctype="multipart/form-data" action="<c:url value='/car/editCar.do'/>">
			<div class="title">
				<img src="${pageContext.request.contextPath }/img/sellerInfo.png">
			</div>

			<table summary="판매자정보 입력" id="memberInfoTable">
				<colgroup>
					<col width="116px">
					<col width="290px">
					<col width="116px">
					<col width="290px">
				</colgroup>
				<tbody>
				<tr>
					<th scope="col">이름</th>
					<td>
						<strong>${memVo.memberName }</strong>
					</td>
					<th scope="col">아이디</th>
					<td>
						<input type="text" name="sellerMemberId" id="sellerMemberId" style="width: 300px; border: none;" value="${memVo.memberId }" readonly>
					</td>
				</tr>
				<tr>
					<th scope="col"><label>휴대전화</label></th>
					<td>
						${memVo.memberHp }
                    </td>
					<th scope="col"><label>이메일</label></th>
					<td>
						${memVo.memberEmail }
					</td>
                </tr>
                <tr>
					<th scope="col">주소</th>
					<td colspan="3">
					${memVo.memberAddr }
					</td>
				</tr>
				<tr>
					<th scope="col"><img src="${pageContext.request.contextPath }/img/check.png" alt="필수체크">
					<label>공고기관</label></th>
					<td colspan="3"><input type="text" name="carCompany" id="carCompany" style="width: 700px; border: none;" value="${map['CAR_COMPANY'] }"></td>
				</tr>
				</tbody>
			</table>
			<div>
				<div class="title">
					<img src="${pageContext.request.contextPath }/img/carInfo.png">
				</div>
				
				<table id="carInfoTable" summary="차량정보 입력">
				<colgroup>
					<col width="130px">
					<col width="130px">
					<col width="150px">
					<col width="*">
				</colgroup>
				<tbody>
				<tr>
					<th scope="col"><img src="${pageContext.request.contextPath }/img/check.png" alt="필수체크">
					<label>차량번호</label></th>
					<td colspan="3">
						<input type="text" name="carNum" id="carNum"  maxlength="12" style="width: 690px; border: none;" value="${map['CAR_NUM'] }">
					</td>
				</tr>
				<tr>
					<th scope="col">
					<img src="${pageContext.request.contextPath }/img/check.png" alt="필수체크">
					<label>차량명</label></th>
					<td colspan="3">
	                       <span id="id_cardepth">
							<input type="text" name="carModel" id="carModel" style="width: 690px; border: none;" value="${map['CAR_MODEL'] }">
					</td>
				</tr>
				<tr>
					<th scope="col"><label>
					<img src="${pageContext.request.contextPath }/img/check.png" alt="필수체크">차종</label></th>
					<td>
						<select name="carSize" id="carSize" style="width:100px; font-size: 1.1em;" title="년선택">
							<option value="경차" 
								<c:if test="${map['CAR_SIZE']=='경차' }">
									selected
								</c:if>
							>
							경차</option>
							<option value="소형" 
								<c:if test="${map['CAR_SIZE']=='소형' }">
									selected
								</c:if>
							>소형</option>
							<option value="준중" 
								<c:if test="${map['CAR_SIZE']=='준중' }">
									selected
								</c:if>
							>준중</option>
							<option value="중형" 
								<c:if test="${map['CAR_SIZE']=='중형' }">
									selected
								</c:if>
							>중형</option>
							<option value="대형" 
								<c:if test="${map['CAR_SIZE']=='대형' }">
									selected
								</c:if>
							>대형</option>
							<option value="리무진" 
								<c:if test="${map['CAR_SIZE']=='리무진' }">
									selected
								</c:if>
							>리무진</option>
							<option value="스포츠카" 
								<c:if test="${map['CAR_SIZE']=='스포츠카' }">
									selected1
								</c:if>
							>스포츠카</option>
							<option value="SUV" 
								<c:if test="${map['CAR_SIZE']=='SUV' }">
									selected
								</c:if>
							>SUV</option>
							<option value="RV" 
								<c:if test="${map['CAR_SIZE']=='RV' }">
									selected
								</c:if>
							>RV</option>
							<option value="승합차" 
								<c:if test="${map['CAR_SIZE']=='승합차' }">
									selected
								</c:if>
							>승합차</option>
							<option value="밴" 
								<c:if test="${map['CAR_SIZE']=='밴' }">
									selected
								</c:if>
							>밴</option>
							<option value="캠핑카" 
								<c:if test="${map['CAR_SIZE']=='캠핑카' }">
									selected
								</c:if>
							>캠핑카</option>
							<option value="버스" 
								<c:if test="${map['CAR_SIZE']=='버스' }">
									selected
								</c:if>
							>버스</option>
	                    </select>
					</td>
					<th scope="col"><label>
					<img src="${pageContext.request.contextPath }/img/check.png" alt="필수체크">연식</label><span>(최초등록일)</span></th>
					<td>
						<select name="carBirth1" id="carBirth1" style="width:100px; font-size: 1.1em;" title="년선택">
	                        <option value="2017"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2017' }">
									selected
								</c:if>
							</c:forEach>>2017</option>
	                        <option value="2016"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2016' }">
									selected
								</c:if>
							</c:forEach>>2016</option>
	                        <option value="2015"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2015' }">
									selected
								</c:if>
							</c:forEach>>2015</option>
	                        <option value="2014"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2014' }">
									selected
								</c:if>
							</c:forEach>>2014</option>
	                        <option value="2013"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2013' }">
									selected
								</c:if>
							</c:forEach>>2013</option>
	                        <option value="2012"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2012' }">
									selected
								</c:if>
							</c:forEach>>2012</option>
	                        <option value="2011"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2011' }">
									selected
								</c:if>
							</c:forEach>>2011</option>
	                        <option value="2010"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2010' }">
									selected
								</c:if>
							</c:forEach>>2010</option>
	                        <option value="2009"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2009' }">
									selected
								</c:if>
							</c:forEach>>2009</option>
	                        <option value="2008"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2008' }">
									selected
								</c:if>
							</c:forEach>>2008</option>
	                        <option value="2007"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2007' }">
									selected
								</c:if>
							</c:forEach>>2007</option>
	                        <option value="2006"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2006' }">
									selected
								</c:if>
							</c:forEach>>2006</option>
	                        <option value="2005"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2005' }">
									selected
								</c:if>
							</c:forEach>>2005</option>
	                        <option value="2004"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2004' }">
									selected
								</c:if>
							</c:forEach>>2004</option>
	                        <option value="2003"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2003' }">
									checked
								</c:if>
							</c:forEach>>2003</option>
	                        <option value="2002"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2002' }">
									selected
								</c:if>
							</c:forEach>>2002</option>
	                        <option value="2001"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2001' }">
									selected
								</c:if>
							</c:forEach>>2001</option>
	                        <option value="2000"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='2000' }">
									selected
								</c:if>
							</c:forEach>>2000</option>
	                        <option value="1999"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1999' }">
									selected
								</c:if>
							</c:forEach>>1999</option>
	                        <option value="1998"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1998' }">
									selected
								</c:if>
							</c:forEach>>1998</option>
	                        <option value="1997"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1997' }">
									selected
								</c:if>
							</c:forEach>>1997</option>
	                        <option value="1996"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1996' }">
									selected
								</c:if>
							</c:forEach>>1996</option>
	                        <option value="1995"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1995' }">
									selected
								</c:if>
							</c:forEach>>1995</option>
	                        <option value="1994"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1994' }">
									selected
								</c:if>
							</c:forEach>>1994</option>
	                        <option value="1993"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1993' }">
									selected
								</c:if>
							</c:forEach>>1993</option>
	                        <option value="1992"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1992' }">
									selected
								</c:if>
							</c:forEach>>1992</option>
	                        <option value="1991"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1991' }">
									selected
								</c:if>
							</c:forEach>>1991</option>
	                        <option value="1990"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1990' }">
									selected
								</c:if>
							</c:forEach>>1990</option>
	                        <option value="1989"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1989' }">
									selected
								</c:if>
							</c:forEach>>1989</option>
	                        <option value="1988"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1988' }">
									selected
								</c:if>
							</c:forEach>>1988</option>
	                        <option value="1987"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1987' }">
									selected
								</c:if>
							</c:forEach>>1987</option>
	                        <option value="1986"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1986' }">
									selected
								</c:if>
							</c:forEach>>1986</option>
	                        <option value="1985"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1985' }">
									selected
								</c:if>
							</c:forEach>>1985</option>
	                        <option value="1984"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1984' }">
									selected
								</c:if>
							</c:forEach>>1984</option>
	                        <option value="1983"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1983' }">
									selected
								</c:if>
							</c:forEach>>1983</option>
	                        <option value="1982"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1982' }">
									selected
								</c:if>
							</c:forEach>>1982</option>
	                        <option value="1981"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1981' }">
									selected
								</c:if>
							</c:forEach>>1981</option>
	                        <option value="1980"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1980' }">
									selected
								</c:if>
							</c:forEach>>1980</option>
	                        <option value="1979"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1979' }">
									selected
								</c:if>
							</c:forEach>>1979</option>
	                        <option value="1978"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1978' }">
									selected
								</c:if>
							</c:forEach>>1978</option>
	                        <option value="1977"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1977' }">
									selected
								</c:if>
							</c:forEach>>1977</option>
	                        <option value="1976"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1976' }">
									selected
								</c:if>
							</c:forEach>>1976</option>
	                        <option value="1975"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1975' }">
									selected
								</c:if>
							</c:forEach>>1975</option>
	                        <option value="1974"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1974' }">
									selected
								</c:if>
							</c:forEach>>1974</option>
	                        <option value="1973"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1973' }">
									selected
								</c:if>
							</c:forEach>>1973</option>
	                        <option value="1972"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1972' }">
									selected
								</c:if>
							</c:forEach>>1972</option>
	                        <option value="1971"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1971' }">
									selected
								</c:if>
							</c:forEach>>1971</option>
	                        <option value="1970"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1970' }">
									selected
								</c:if>
							</c:forEach>>1970</option>
	                        <option value="1969"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1969' }">
									selected
								</c:if>
							</c:forEach>>1969</option>
	                        <option value="1968"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1968' }">
									selected
								</c:if>
							</c:forEach>>1968</option>
	                        <option value="1967"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1967' }">
									selected
								</c:if>
							</c:forEach>>1967</option>
	                        <option value="1966"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1966' }">
									selected
								</c:if>
							</c:forEach>>1966</option>
	                        <option value="1965"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1965' }">
									selected
								</c:if>
							</c:forEach>>1965</option>
	                        <option value="1964"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1964' }">
									selected
								</c:if>
							</c:forEach>>1964</option>
	                        <option value="1963"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1963' }">
									selected
								</c:if>
							</c:forEach>>1963</option>
	                        <option value="1962"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1962' }">
									selected
								</c:if>
							</c:forEach>>1962</option>
	                        <option value="1961"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1961' }">
									selected
								</c:if>
							</c:forEach>>1961</option>
	                        <option value="1960"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1960' }">
									selected
								</c:if>
							</c:forEach>>1960</option>
	                        <option value="1959"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1959' }">
									selected
								</c:if>
							</c:forEach>>1959</option>
	                        <option value="1958"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1958' }">
									selected
								</c:if>
							</c:forEach>>1958</option>
	                        <option value="1957"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1957' }">
									selected
								</c:if>
							</c:forEach>>1957</option>
	                        <option value="1956"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1956' }">
									selected
								</c:if>
							</c:forEach>>1956</option>
	                        <option value="1955"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1955' }">
									selected
								</c:if>
							</c:forEach>>1955</option>
	                        <option value="1954"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1954' }">
									selected
								</c:if>
							</c:forEach>>1954</option>
	                        <option value="1953"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1953' }">
									selected
								</c:if>
							</c:forEach>>1953</option>
	                        <option value="1952"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1952' }">
									selected
								</c:if>
							</c:forEach>>1952</option>
	                        <option value="1951"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1951' }">
									selected
								</c:if>
							</c:forEach>>1951</option>
	                        <option value="1950"
	                        	<c:forEach var="carBirthYear" items="${carBirth }">
								<c:if test="${carBirthYear=='1950' }">
									selected
								</c:if>
							</c:forEach>>1950</option>
	                    </select>
						년
						&nbsp;
						<select name="carBirth2" id="carBirth2" style="width:89px;" title="월선택">
							<option value="01"
	                        	<c:forEach var="carBirthYear2" items="${carBirth }">
									<c:if test="${carBirthYear2=='01' }">
										selected
									</c:if>
								</c:forEach>>1</option>
							<option value="02"<c:forEach var="carBirthYear2" items="${carBirth }">
									<c:if test="${carBirthYear2=='02' }">
										selected
									</c:if>
								</c:forEach>>2</option>
							<option value="03"<c:forEach var="carBirthYear2" items="${carBirth }">
									<c:if test="${carBirthYear2=='03' }">
										selected
									</c:if>
								</c:forEach>>3</option>
							<option value="04"<c:forEach var="carBirthYear2" items="${carBirth }">
									<c:if test="${carBirthYear2=='04' }">
										selected
									</c:if>
								</c:forEach>>4</option>
							<option value="05"<c:forEach var="carBirthYear2" items="${carBirth }">
									<c:if test="${carBirthYear2=='05' }">
										selected
									</c:if>
								</c:forEach>>5</option>
							<option value="06"<c:forEach var="carBirthYear2" items="${carBirth }">
									<c:if test="${carBirthYear2=='06' }">
										selected
									</c:if>
								</c:forEach>>6</option>
							<option value="07"<c:forEach var="carBirthYear2" items="${carBirth }">
									<c:if test="${carBirthYear2=='07' }">
										selected
									</c:if>
								</c:forEach>>7</option>
							<option value="08"<c:forEach var="carBirthYear2" items="${carBirth }">
									<c:if test="${carBirthYear2=='08' }">
										selected
									</c:if>
								</c:forEach>>8</option>
							<option value="09"<c:forEach var="carBirthYear2" items="${carBirth }">
									<c:if test="${carBirthYear2=='09' }">
										selected
									</c:if>
								</c:forEach>>9</option>
							<option value="10"<c:forEach var="carBirthYear2" items="${carBirth }">
									<c:if test="${carBirthYear2=='10' }">
										selected
									</c:if>
								</c:forEach>>10</option>
							<option value="11"<c:forEach var="carBirthYear2" items="${carBirth }">
									<c:if test="${carBirthYear2=='11' }">
										selected
									</c:if>
								</c:forEach>>11</option>
							<option value="12"<c:forEach var="carBirthYear2" items="${carBirth }">
									<c:if test="${carBirthYear2=='12' }">
										selected
									</c:if>
								</c:forEach>>12</option>
	                    </select>
						월
						<input type="hidden" name="carBirth" id="carBirth">
				  	</td>
				</tr>
				<tr>
					<th scope="col"><label>
					<img src="${pageContext.request.contextPath }/img/check.png" alt="필수체크">변속기</label></th>
					<td>
						<select name="carAm" id="carAm" style="width:100px; font-size: 1.1em;" title="변속기선택">
							<option value="자동"
								<c:if test="${map['CAR_AM']=='자동' }">
									selected
								</c:if>
							>자동</option>
							<option value="수동"
								<c:if test="${map['CAR_AM']=='수동' }">
									selected
								</c:if>
							>수동</option>
						</select>
					</td>
					<th scope="col"><label>
					<img src="${pageContext.request.contextPath }/img/check.png" alt="필수체크">연료</label></th>
					<td>
	         			<select name="carGas" style="width:100px; font-size: 1.1em;" id="carGas" title="연료선택">
							<option value="가솔린"
								<c:if test="${map['CAR_GAS']=='가솔린' }">
									selected
								</c:if>
							>가솔린</option>
							<option value="디젤"
								<c:if test="${map['CAR_GAS']=='디젤' }">
									selected
								</c:if>
							>디젤</option>
							<option value="LPG"
								<c:if test="${map['CAR_GAS']=='LPG' }">
									selected
								</c:if>
							>LPG</option>
							<option value="LPG 일반인구입"
								<c:if test="${map['CAR_GAS']=='LPG 일반인구입' }">
									selected
								</c:if>
							>LPG 일반인구입</option>
							<option value="가솔린/LPG겸용"
								<c:if test="${map['CAR_GAS']=='가솔린/LPG겸용' }">
									selected
								</c:if>
							>가솔린/LPG겸용</option>
							<option value="가솔린 하이브리드"
								<c:if test="${map['CAR_GAS']=='가솔린 하이브리드' }">
									selected
								</c:if>
							>가솔린 하이브리드</option>
							<option value="LPG 하이브리드"
								<c:if test="${map['CAR_GAS']=='LPG 하이브리드' }">
									selected
								</c:if>
							>LPG 하이브리드</option>
							<option value="디젤 하이브리드"
								<c:if test="${map['CAR_GAS']=='디젤 하이브리드' }">
									selected
								</c:if>
							>디젤 하이브리드</option>
							<option value="CNG"
								<c:if test="${map['CAR_GAS']=='CNG' }">
									selected
								</c:if>
							>CNG</option>
							<option value="전기"
								<c:if test="${map['CAR_GAS']=='전기' }">
									selected
								</c:if>
							>전기</option>
							<option value="기타"
								<c:if test="${map['CAR_GAS']=='기타' }">
									selected
								</c:if>
							>기타</option>
						</select>
					</td>
					</tr>
					<tr>
						<th scope="col"><label>
						<img src="${pageContext.request.contextPath }/img/check.png" alt="필수체크">배기량</label></th>
						<td>
							<input name="carCc" type="text" id="carCc" style="width:78px;" onkeydown="Numberic();" title="배기량" maxlength="4" value="${map['CAR_CC']} "> cc
						</td>
						<th scope="col"><label>
						<img src="${pageContext.request.contextPath }/img/check.png" alt="필수체크">색상</label></th>
						<td>
							<select name="carColor" id="carColor" style="width:100px; font-size: 1.1em;" title="색상선택">
									<option value="검정색"
										<c:if test="${map['CAR_COLOR']=='검정색' }">
											selected
										</c:if>
									>검정색</option>
									<option value="검정투톤"
										<c:if test="${map['CAR_COLOR']=='검정투톤' }">
											selected
										</c:if>
									>검정투톤</option>
									<option value="은색"
										<c:if test="${map['CAR_COLOR']=='은색' }">
											selected
										</c:if>
									>은색</option>
									<option value="은색투톤"
										<c:if test="${map['CAR_COLOR']=='은색투톤' }">
											selected
										</c:if>
									>은색투톤</option>
									<option value="흰색"
										<c:if test="${map['CAR_COLOR']=='흰색' }">
											selected
										</c:if>
									>흰색</option
									><option value="흰색투톤"
										<c:if test="${map['CAR_COLOR']=='흰색투톤' }">
											selected
										</c:if>
									>흰색투톤</option>
									<option value="진주색"
										<c:if test="${map['CAR_COLOR']=='진주색' }">
											selected
										</c:if>
									>진주색</option>
									<option value="진주투톤"
										<c:if test="${map['CAR_COLOR']=='진주투톤' }">
											selected
										</c:if>
									>진주투톤</option>
									<option value="갈색"
										<c:if test="${map['CAR_COLOR']=='갈색' }">
											selected
										</c:if>
									>갈색</option>
									<option value="금색"
										<c:if test="${map['CAR_COLOR']=='금색' }">
											selected
										</c:if>
									>금색</option>
									<option value="남색"
										<c:if test="${map['CAR_COLOR']=='남색' }">
											selected
										</c:if>
									>남색</option>
									<option value="노란색"
										<c:if test="${map['CAR_COLOR']=='노란색' }">
											selected
										</c:if>
									>노란색</option>
									<option value="녹색"
										<c:if test="${map['CAR_COLOR']=='녹색' }">
											selected
										</c:if>
									>녹색</option>
									<option value="베이지색"
										<c:if test="${map['CAR_COLOR']=='베이지색' }">
											selected
										</c:if>
									>베이지색</option>
									<option value="보라색"
										<c:if test="${map['CAR_COLOR']=='보라색' }">
											selected
										</c:if>
									>보라색</option>
									<option value="분홍색"
										<c:if test="${map['CAR_COLOR']=='분홍색' }">
											selected
										</c:if>
									>분홍색</option>
									<option value="빨간색"
										<c:if test="${map['CAR_COLOR']=='빨간색' }">
											selected
										</c:if>
									>빨간색</option>
									<option value="연금색"
										<c:if test="${map['CAR_COLOR']=='연금색' }">
											selected
										</c:if>
									>연금색</option>
									<option value="연두색"
										<c:if test="${map['CAR_COLOR']=='연두색' }">
											selected
										</c:if>
									>연두색</option>
									<option value="은하늘색"
										<c:if test="${map['CAR_COLOR']=='은하늘색' }">
											selected
										</c:if>
									>은하늘색</option>
									<option value="자주색"
										<c:if test="${map['CAR_COLOR']=='자주색' }">
											selected
										</c:if>
									>자주색</option>
									<option value="주황색"
										<c:if test="${map['CAR_COLOR']=='주황색' }">
											selected
										</c:if>
									>주황색</option>
									<option value="청색"
										<c:if test="${map['CAR_COLOR']=='청색' }">
											selected
										</c:if>
									>청색</option>
									<option value="진청색"
										<c:if test="${map['CAR_COLOR']=='진청색' }">
											selected
										</c:if>
									>진청색</option>
									<option value="청옥색"
										<c:if test="${map['CAR_COLOR']=='청옥색' }">
											selected
										</c:if>
									>청옥색</option>
									<option value="파란색"
										<c:if test="${map['CAR_COLOR']=='파란색' }">
											selected
										</c:if>
									>파란색</option>
									<option value="하늘색"
										<c:if test="${map['CAR_COLOR']=='하늘색' }">
											selected
										</c:if>
									>하늘색</option>
									<option value="회색"
										<c:if test="${map['CAR_COLOR']=='회색' }">
											selected
										</c:if>
									>회색</option>
									<option value="진회색"
										<c:if test="${map['CAR_COLOR']=='진회색' }">
											selected
										</c:if>
									>진회색</option>
									<option value="기타색상"
										<c:if test="${map['CAR_COLOR']=='기타색상' }">
											selected
										</c:if>
									>기타색상</option>
							</select>
						</td>
				</tr>
				<tr>
					<th scope="col"><label>
					<img src="${pageContext.request.contextPath }/img/check.png" alt="필수체크">주행거리</label></th>
					<td>
						<input name="carDist" type="text" id="carDist" style="width:78px;" title="주행거리" onkeydown="Numberic();" value="${map['CAR_DIST'] }">
						<label>km</label>
					</td>
					<th scope="col">
						<label>
						<img src="${pageContext.request.contextPath }/img/check.png" alt="필수체크">사고여부</label>
					</th>
					<td>
						<input name="carAcci" type="radio" id="noAcci" value="N" 
										<c:if test="${map['CAR_ACCI']=='N' }">
											checked
										</c:if>
									>
						<label for="noAcci">무사고</label>
							
						<input name="carAcci" type="radio" id="acci" value="Y"
										<c:if test="${map['CAR_ACCI']=='Y' }">
											checked
										</c:if>
									>
						<label for="acci">사고</label>
					</td>
				</tr>
	
	     		<tr>
					<th scope="col">
						<label><img src="${pageContext.request.contextPath }/img/check.png" alt="필수체크">초기 구입가</label>
					</th>
					<td colspan="3">
						<input name="carPrice" type="text" id="carPrice" style="width:78px;" title="판매가격" onkeydown="Numberic();" maxlength="6" value="${map['CAR_PRICE'] }">
						(단위 : 만원)
						<span>* 허위가격 입력 시 아이디 제명 및 경고없이 삭제됩니다.</span>
					</td>
				</tr>
	     		<tr>
					<th scope="col">
						<label><img src="${pageContext.request.contextPath }/img/check.png" alt="필수체크">차량 현재 위치</label>
					</th>
					<td colspan="3">
						<input name="carLoc" type="text" id="carLoc" style="width:500px; border: none;" title="현재위치" value="${map['CAR_LOC'] }">
						<input type="button" id="myLoc" name="myLoc" value="내 주소로">
					</td>
				</tr>
			</tbody>
		</table>
	</div>

       
		<div class="title">
				<img src="${pageContext.request.contextPath }/img/carOption.png">
		</div>
		<div>
			<table id="carOptionTable" summary="차량옵션선택" style="font-size: 0.7em">
			<%-- <colgroup>
				<col width="20%">
				<col width="20%">
				<col width="23%">
				<col width="20%">
				<col width="*">
			</colgroup> --%>
			<tbody>
			<tr>
				<th class="h2" scope="row">내/외장옵션</th>
				<th class="h2" scope="row">편의장치1</th>
				<th class="h2" scope="row">편의장치2</th>
				<th class="h2" scope="row">안전장치</th>
				<th class="h2" scope="row">AV/오디오/항법</th>
				<th class="h2" scope="row">튜닝사항</th>
			</tr>
			<tr>
				<td class="opInout">
					<ul>
						<li><input type="checkbox" id="options_95" name="opIn" value="95" 
							<c:forEach var="opInNum" items="${opIn }">
								<c:if test="${opInNum=='95' }">
									checked
								</c:if>
							</c:forEach>
						> <label for="options_95">파워윈도우</label></li>
						<li><input type="checkbox" id="options_96" name="opIn" value="96" 
							<c:forEach var="opInNum" items="${opIn }">
								<c:if test="${opInNum=='96' }">
									checked
								</c:if>
							</c:forEach>
						> <label for="options_96">에어컨</label></li>
						<li><input type="checkbox" id="options_97" name="opIn" value="97" 
							<c:forEach var="opInNum" items="${opIn }">
								<c:if test="${opInNum=='97' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_97">풀오토에어컨</label></li>
						<li><input type="checkbox" id="options_98" name="opIn" value="98" 
							<c:forEach var="opInNum" items="${opIn }">
								<c:if test="${opInNum=='98' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_98">좌/우독립에어컨</label></li>
						<li><input type="checkbox" id="options_99" name="opIn" value="99" 
							<c:forEach var="opInNum" items="${opIn }">
								<c:if test="${opInNum=='99' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_99">가죽시트</label></li>
						<li><input type="checkbox" id="options_100" name="opIn" value="100" 
							<c:forEach var="opInNum" items="${opIn }">
								<c:if test="${opInNum=='100' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_100">열선시트</label></li>
						<li><input type="checkbox" id="options_101" name="opIn" value="101" 
							<c:forEach var="opInNum" items="${opIn }">
								<c:if test="${opInNum=='101' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_101">통풍시트</label></li>
						<li><input type="checkbox" id="options_102" name="opIn" value="102" 
							<c:forEach var="opInNum" items="${opIn }">
								<c:if test="${opInNum=='102' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_102">마사지시트</label></li>
						<li><input type="checkbox" id="options_103" name="opIn" value="103" 
							<c:forEach var="opInNum" items="${opIn }">
								<c:if test="${opInNum=='103' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_103">버켓시트</label></li>
						<li><input type="checkbox" id="options_104" name="opIn" value="104" 
							<c:forEach var="opInNum" items="${opIn }">
								<c:if test="${opInNum=='104' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_104">메모리시트</label></li>
						<li><input type="checkbox" id="options_105" name="opIn" value="105" 
							<c:forEach var="opInNum" items="${opIn }">
								<c:if test="${opInNum=='105' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_105">분할폴딩시트</label></li>
						<li><input type="checkbox" id="options_106" name="opIn" value="106" 
							<c:forEach var="opInNum" items="${opIn }">
								<c:if test="${opInNum=='106' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_106">운전석전동시트</label></li>
						<li><input type="checkbox" id="options_107" name="opIn" value="107" 
							<c:forEach var="opInNum" items="${opIn }">
								<c:if test="${opInNum=='107' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_107">동승석전동시트</label></li>
						<li><input type="checkbox" id="options_108" name="opIn" value="108" 
							<c:forEach var="opInNum" items="${opIn }">
								<c:if test="${opInNum=='108' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_108">뒷좌석전동시트</label></li>
					</ul>
					<ul>
						<li><input type="checkbox" id="options_109" name="opOut" value="109" 
							<c:forEach var="opOutNum" items="${opOut }">
								<c:if test="${opOutNum=='109' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_109">알루미늄휠</label></li>
						<li><input type="checkbox" id="options_110" name="opOut" value="110" 
							<c:forEach var="opOutNum" items="${opOut }">
								<c:if test="${opOutNum=='110' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_110">크롬휠</label></li>
						<li><input type="checkbox" id="options_111" name="opOut" value="111" 
							<c:forEach var="opOutNum" items="${opOut }">
								<c:if test="${opOutNum=='111' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_111">광폭타이어</label></li>
						<li><input type="checkbox" id="options_112" name="opOut" value="112" 
							<c:forEach var="opOutNum" items="${opOut }">
								<c:if test="${opOutNum=='112' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_112">샤크안테나</label></li>
						<li><input type="checkbox" id="options_113" name="opOut" value="113" 
							<c:forEach var="opOutNum" items="${opOut }">
								<c:if test="${opOutNum=='113' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_113">데이라이트</label></li>
					</ul>
				</td>
				<td class="opCon">
					<ul>
						<li><input type="checkbox" id="options_38" name="opCon" value="38" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='38' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_38">썬루프</label></li>
						<li><input type="checkbox" id="options_39" name="opCon" value="39" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='39' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_39">파노라마썬루프</label></li>
						<li><input type="checkbox" id="options_40" name="opCon" value="40" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='40' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_40">HID/제논램프</label></li>
						<li><input type="checkbox" id="options_41" name="opCon" value="41" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='41' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_41">오토라이트</label></li>
						<li><input type="checkbox" id="options_42" name="opCon" value="42" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='42' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_42">스마트키</label></li>
						<li><input type="checkbox" id="options_43" name="opCon" value="43" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='43' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_43">엔진스타트버튼</label></li>
						<li><input type="checkbox" id="options_44" name="opCon" value="44" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='44' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_44">라이트세척장치</label></li>
						<li><input type="checkbox" id="options_45" name="opCon" value="45" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='45' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_45">주차조향보조시스템</label></li>
						<li><input type="checkbox" id="options_46" name="opCon" value="46" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='46' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_46">전자주차브레이크</label></li>
						<li><input type="checkbox" id="options_47" name="opCon" value="47" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='47' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_47">이모빌라이져</label></li>
						<li><input type="checkbox" id="options_48" name="opCon" value="48" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='48' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_48">트립컴퓨터</label></li>
						<li><input type="checkbox" id="options_49" name="opCon" value="49" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='49' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_49">슈퍼비전계기판</label></li>
						<li><input type="checkbox" id="options_50" name="opCon" value="50" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='50' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_50">HUD</label></li>
						<li><input type="checkbox" id="options_51" name="opCon" value="51" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='51' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_51">나이트비전</label></li>
						<li><input type="checkbox" id="options_52" name="opCon" value="52" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='52' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_52">ECM룸미러</label></li>
						<li><input type="checkbox" id="options_53" name="opCon" value="53" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='53' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_53">크루즈컨트롤</label></li>
						<li><input type="checkbox" id="options_54" name="opCon" value="54" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='54' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_54">에어서스펜션</label></li>
						<li><input type="checkbox" id="options_55" name="opCon" value="55" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='55' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_55">전동트렁크</label></li>
						<li><input type="checkbox" id="options_56" name="opCon" value="56" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='56' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_56">타이어공기압경보</label></li> 
					</ul>
				</td>
				<td class="opCon">
					<ul> 
						<li><input type="checkbox" id="options_57" name="opCon" value="57" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='57' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_57">파워핸들</label></li>
						<li><input type="checkbox" id="options_58" name="opCon" value="58" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='58' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_58">히팅핸들</label></li>
						<li><input type="checkbox" id="options_59" name="opCon" value="59" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='59' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_59">리모컨핸들</label></li>
						<li><input type="checkbox" id="options_60" name="opCon" value="60" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='60' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_60">가죽/우드핸들</label></li>
						<li><input type="checkbox" id="options_61" name="opCon" value="61" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='61' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_61">속도감응식핸들</label></li>
						<li><input type="checkbox" id="options_62" name="opCon" value="62" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='62' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_62">원격시동장치</label></li>
						<li><input type="checkbox" id="options_63" name="opCon" value="63" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='63' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_63">무선도어리모컨</label></li>
						<li><input type="checkbox" id="options_64" name="opCon" value="64" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='64' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_64">유아시트고정장치</label></li>
						<li><input type="checkbox" id="options_65" name="opCon" value="65" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='65' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_65">패들쉬프트</label></li>
						<li><input type="checkbox" id="options_66" name="opCon" value="66" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='66' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_66">압축도어</label></li>
						<li><input type="checkbox" id="options_67" name="opCon" value="67" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='67' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_67">자동도어잠금</label></li>
						<li><input type="checkbox" id="options_68" name="opCon" value="68" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='68' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_68">자동슬라이딩도어</label></li>
						<li><input type="checkbox" id="options_69" name="opCon" value="69" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='69' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_69">전동접이식미러</label></li>
						<li><input type="checkbox" id="options_70" name="opCon" value="70" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='70' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_70">냉장고</label></li>
						<li><input type="checkbox" id="options_71" name="opCon" value="71" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='71' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_71">루프캐리어</label></li>
						<li><input type="checkbox" id="options_72" name="opCon" value="72" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='72' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_72">에어스카프</label></li>
						<li><input type="checkbox" id="options_73" name="opCon" value="73" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='73' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_73">공기청정기</label></li>
						<li><input type="checkbox" id="options_74" name="opCon" value="74" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='74' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_74">전동햇빛가리개</label></li>
						<li><input type="checkbox" id="options_75" name="opCon" value="75" 
							<c:forEach var="opConNum" items="${opCon }">
								<c:if test="${opConNum=='75' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_75">레인센서와이퍼</label></li> 
					</ul>
				</td>
				<td class="opSafe">
					<ul>
						<li><input type="checkbox" id="options_76" name="opSafe" value="76" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='70' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_76">운전석에어백</label></li>
						<li><input type="checkbox" id="options_77" name="opSafe" value="77" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='77' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_77">동승석에어백</label></li>
						<li><input type="checkbox" id="options_78" name="opSafe" value="78" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='78' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_78">측면에어백</label></li>
						<li><input type="checkbox" id="options_79" name="opSafe" value="79" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='79' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_79">커튼에어백</label></li>
						<li><input type="checkbox" id="options_80" name="opSafe" value="80" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='80' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_80">승객감지에어백</label></li>
						<li><input type="checkbox" id="options_81" name="opSafe" value="81" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='81' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_81">무릎보호에어백</label></li>
						<li><input type="checkbox" id="options_82" name="opSafe" value="82" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='82' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_82">액티브헤드레스트</label></li>
						<li><input type="checkbox" id="options_83" name="opSafe" value="83" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='83' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_83">ABS</label></li>
						<li><input type="checkbox" id="options_84" name="opSafe" value="84" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='84' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_84">BAS</label></li>
						<li><input type="checkbox" id="options_85" name="opSafe" value="85" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='85' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_85">EBD</label></li>
						<li><input type="checkbox" id="options_86" name="opSafe" value="86" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='86' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_86">ECS</label></li>
						<li><input type="checkbox" id="options_87" name="opSafe" value="87" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='87' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_87">LSD</label></li>
						<li><input type="checkbox" id="options_88" name="opSafe" value="88" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='88' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_88">TCS</label></li>
						<li><input type="checkbox" id="options_89" name="opSafe" value="89" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='89' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_89">VDC/ESP</label></li>
						<li><input type="checkbox" id="options_90" name="opSafe" value="90" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='90' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_90">전,측면감지센서</label></li>
						<li><input type="checkbox" id="options_91" name="opSafe" value="91" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='91' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_91">후방감지센서</label></li>
						<li><input type="checkbox" id="options_92" name="opSafe" value="92" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='92' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_92">전방카메라</label></li>
						<li><input type="checkbox" id="options_93" name="opSafe" value="93" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='93' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_93">후방카메라</label></li>
						<li><input type="checkbox" id="options_94" name="opSafe" value="94" 
							<c:forEach var="opSafeNum" items="${opSafe }">
								<c:if test="${opSafeNum=='94' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_94">차선이탈경보장치</label></li>
					</ul>
				</td>
				<td class="opAa">
					<ul>
						<li><input type="checkbox" id="options_114" name="opAa" value="114" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='114' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_114">내비게이션</label></li>
						<li><input type="checkbox" id="options_115" name="opAa" value="115" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='115' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_115">하이패스</label></li>
						<li><input type="checkbox" id="options_116" name="opAa" value="116" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='116' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_116">블랙박스</label></li>
						<li><input type="checkbox" id="options_117" name="opAa" value="117" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='117' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_117">핸즈프리</label></li>
						<li><input type="checkbox" id="options_118" name="opAa" value="118" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='118' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_118">블루투스</label></li>
						<li><input type="checkbox" id="options_119" name="opAa" value="119" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='119' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_119">CD플레이어</label></li>
						<li><input type="checkbox" id="options_120" name="opAa" value="120" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='120' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_120">CD체인저</label></li>
						<li><input type="checkbox" id="options_121" name="opAa" value="121" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='121' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_121">DVD플레이어</label></li>
						<li><input type="checkbox" id="options_122" name="opAa" value="122" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='122' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_122">DMB</label></li>
						<li><input type="checkbox" id="options_123" name="opAa" value="123" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='123' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_123">DivX</label></li>
						<li><input type="checkbox" id="options_124" name="opAa" value="124" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='124' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_124">MP3</label></li>
						<li><input type="checkbox" id="options_125" name="opAa" value="125" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='125' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_125">AUX</label></li>
						<li><input type="checkbox" id="options_126" name="opAa" value="126" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='126' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_126">USB</label></li>
						<li><input type="checkbox" id="options_127" name="opAa" value="127" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='127' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_127">아이팟단자</label></li>
						<li><input type="checkbox" id="options_128" name="opAa" value="128" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='128' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_128">앞좌석TV</label></li>
						<li><input type="checkbox" id="options_129" name="opAa" value="129" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='129' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_129">뒷좌석TV</label></li>  
						<li><input type="checkbox" id="options_130" name="opAa" value="130" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='130' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_130">엠프</label></li>  
						<li><input type="checkbox" id="options_131" name="opAa" value="131" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='131' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_131">우퍼</label></li>
						<li><input type="checkbox" id="options_132" name="opAa" value="132" 
							<c:forEach var="opAaNum" items="${opAa }">
								<c:if test="${opAaNum=='132' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_132">모젠시스템</label></li>
					</ul>
				</td>
				<td class="opTune">
					<ul>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_133" value="133" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='133' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_133">흡기</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_134" value="134" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='134' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_134">배기</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_135" value="135" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='135' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_135">미션</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_136" value="136" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='136' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_136">핸들</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_137" value="137" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='137' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_137">계기판</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_138" value="138" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='138' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_138">ECU맵핑</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_139" value="139" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='139' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_139">터보차저</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_140" value="140" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='140' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_140">슈퍼차저</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_141" value="141" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='141' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_141">다운스프링</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_142" value="142" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='142' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_142">일체형쇼바</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_143" value="143" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='143' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_143">NA튜닝</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_144" value="144" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='144' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_144">오디오</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_145" value="145" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='145' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_145">스트럿바</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_146" value="146" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='146' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_146">스테빌라이저</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_147" value="147" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='147' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_147">엔진스왑</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_148" value="148" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='148' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_148">브레이크</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_149" value="149" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='149' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_149">스포일러</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_150" value="150" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='150' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_150">휠/타이어</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_151" value="151" 
							<c:forEach var="opTuneNum" items="${opTune }">
								<c:if test="${opTuneNum=='151' }">
									checked
								</c:if>
							</c:forEach>> <label for="options_151">에어로파츠</label></li>
               	</ul>
				</td>
			</tr>
			</tbody>
			</table> 
		</div>
		
<!-- ******************************************************************************************************************************************************************** -->
		<div class="title">
			<img src="${pageContext.request.contextPath }/img/carImg_register.png">
		</div>
		
		<div id="car_pictures">
           <div class="imgfile">
		   		<label for="imageFileUpload1"><img id="UploadedImg1" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_1']}" style="width: 80px; height: 80px;"/></label> 
		       	<label for="imageFileUpload2"><img id="UploadedImg2" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_2']}" style="width: 80px; height: 80px;"/></label>
		       	<label for="imageFileUpload3"><img id="UploadedImg3" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_3']}" style="width: 80px; height: 80px;"/></label>
		       	<label for="imageFileUpload4"><img id="UploadedImg4" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_4']}" style="width: 80px; height: 80px;"/></label> 
		      	<label for="imageFileUpload5"><img id="UploadedImg5" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_5']}" style="width: 80px; height: 80px;"/></label> 
		       	<label for="imageFileUpload6"><img id="UploadedImg6" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_6']}" style="width: 80px; height: 80px;"/></label> 
		       	<label for="imageFileUpload7"><img id="UploadedImg7" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_7']}" style="width: 80px; height: 80px;"/></label> 
		       	<label for="imageFileUpload8"><img id="UploadedImg8" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_8']}" style="width: 80px; height: 80px;"/></label> 
		       	<label for="imageFileUpload9"><img id="UploadedImg9" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_9']}" style="width: 80px; height: 80px;"/></label> 
		       	<label for="imageFileUpload10"><img id="UploadedImg10" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_10']}" style="width: 80px; height: 80px;"/></label> 
		       	<label for="imageFileUpload11"><img id="UploadedImg11" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_11']}" style="width: 80px; height: 80px;"/></label> 
		       	<label for="imageFileUpload12"><img id="UploadedImg12" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_12']}" style="width: 80px; height: 80px;"/></label> 
		       	<label for="imageFileUpload13"><img id="UploadedImg13" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_13']}" style="width: 80px; height: 80px;"/></label> 
		       	<label for="imageFileUpload14"><img id="UploadedImg14" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_14']}" style="width: 80px; height: 80px;"/></label> 
		       	<label for="imageFileUpload15"><img id="UploadedImg15" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_15']}" style="width: 80px; height: 80px;"/></label> 
		       	<label for="imageFileUpload16"><img id="UploadedImg16" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_16']}" style="width: 80px; height: 80px;"/></label> 
		 	   	<label for="imageFileUpload17"><img id="UploadedImg17" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_17']}" style="width: 80px; height: 80px;"/></label> 
		       	<label for="imageFileUpload18"><img id="UploadedImg18" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_18']}" style="width: 80px; height: 80px;"/></label> 
		       	<label for="imageFileUpload19"><img id="UploadedImg19" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_19']}" style="width: 80px; height: 80px;"/></label> 
		       	<label for="imageFileUpload20"><img id="UploadedImg20" src="${pageContext.request.contextPath }/picture_upload/${map['PICTURE_20']}" style="width: 80px; height: 80px;"/></label> 
	      		
	      		<input type='file' id="imageFileUpload1" name="imageFileUpload1" onchange="readURL(this, 1);" accept="image/*"/>
				<input type='file' id="imageFileUpload2" name="imageFileUpload2" onchange="readURL(this, 2);" accept="image/*"/>
			    <input type='file' id="imageFileUpload3" name="imageFileUpload3" onchange="readURL(this, 3);" accept="image/*"/>
			    <input type='file' id="imageFileUpload4" name="imageFileUpload4" onchange="readURL(this, 4);" accept="image/*"/>
			    <input type='file' id="imageFileUpload5" name="imageFileUpload5" onchange="readURL(this, 5);" accept="image/*"/>
			    <input type='file' id="imageFileUpload6" name="imageFileUpload6" onchange="readURL(this, 6);" accept="image/*"/>
			    <input type='file' id="imageFileUpload7" name="imageFileUpload7" onchange="readURL(this, 7);" accept="image/*"/>
			    <input type='file' id="imageFileUpload8" name="imageFileUpload8" onchange="readURL(this, 8);" accept="image/*"/>
			    <input type='file' id="imageFileUpload9" name="imageFileUpload9" onchange="readURL(this, 9);" accept="image/*"/>
			    <input type='file' id="imageFileUpload10" name="imageFileUpload10" onchange="readURL(this, 10);" accept="image/*"/>
			    <input type='file' id="imageFileUpload11" name="imageFileUpload11" onchange="readURL(this, 11);" accept="image/*"/>
			    <input type='file' id="imageFileUpload12" name="imageFileUpload12" onchange="readURL(this, 12);" accept="image/*"/>
			    <input type='file' id="imageFileUpload13" name="imageFileUpload13" onchange="readURL(this, 13);" accept="image/*"/>
			    <input type='file' id="imageFileUpload14" name="imageFileUpload14" onchange="readURL(this, 14);" accept="image/*"/>
			    <input type='file' id="imageFileUpload15" name="imageFileUpload15" onchange="readURL(this, 15);" accept="image/*"/>
			    <input type='file' id="imageFileUpload16" name="imageFileUpload16" onchange="readURL(this, 16);" accept="image/*"/>
			    <input type='file' id="imageFileUpload17" name="imageFileUpload17" onchange="readURL(this, 17);" accept="image/*"/>
			    <input type='file' id="imageFileUpload18" name="imageFileUpload18" onchange="readURL(this, 18);" accept="image/*"/>
			    <input type='file' id="imageFileUpload19" name="imageFileUpload19" onchange="readURL(this, 19);" accept="image/*"/>
			    <input type='file' id="imageFileUpload20" name="imageFileUpload20" onchange="readURL(this, 20);" accept="image/*"/>
		    </div>
		    <div>
		    
		    <input type="hidden" id="picture1" name="picture1">
		    <input type="hidden" id="picture2" name="picture2">
		    <input type="hidden" id="picture3" name="picture3">
		    <input type="hidden" id="picture4" name="picture4">
		    <input type="hidden" id="picture5" name="picture5">
		    <input type="hidden" id="picture6" name="picture6">
		    <input type="hidden" id="picture7" name="picture7">
		    <input type="hidden" id="picture8" name="picture8">
		    <input type="hidden" id="picture9" name="picture9">
		    <input type="hidden" id="picture10" name="picture10">
		    <input type="hidden" id="picture11" name="picture11">
		    <input type="hidden" id="picture12" name="picture12">
		    <input type="hidden" id="picture13" name="picture13">
		    <input type="hidden" id="picture14" name="picture14">
		    <input type="hidden" id="picture15" name="picture15">
		    <input type="hidden" id="picture16" name="picture16">
		    <input type="hidden" id="picture17" name="picture17">
		    <input type="hidden" id="picture18" name="picture18">
		    <input type="hidden" id="picture19" name="picture19">
		    <input type="hidden" id="picture20" name="picture20">
			
		    <input type="hidden" id="originPicture1" name="originPicture1" value="${map['PICTURE_1'] }">
		    <input type="hidden" id="originPicture2" name="originPicture2" value="${map['PICTURE_2'] }">
		    <input type="hidden" id="originPicture3" name="originPicture3" value="${map['PICTURE_3'] }">
		    <input type="hidden" id="originPicture4" name="originPicture4" value="${map['PICTURE_4'] }">
		    <input type="hidden" id="originPicture5" name="originPicture5" value="${map['PICTURE_5'] }">
		    <input type="hidden" id="originPicture6" name="originPicture6" value="${map['PICTURE_6'] }">
		    <input type="hidden" id="originPicture7" name="originPicture7" value="${map['PICTURE_7'] }">
		    <input type="hidden" id="originPicture8" name="originPicture8" value="${map['PICTURE_8'] }">
		    <input type="hidden" id="originPicture9" name="originPicture9" value="${map['PICTURE_9'] }">
		    <input type="hidden" id="originPicture10" name="originPicture10" value="${map['PICTURE_10'] }">
		    <input type="hidden" id="originPicture11" name="originPicture11" value="${map['PICTURE_11'] }">
		    <input type="hidden" id="originPicture12" name="originPicture12" value="${map['PICTURE_12'] }">
		    <input type="hidden" id="originPicture13" name="originPicture13" value="${map['PICTURE_13'] }">
		    <input type="hidden" id="originPicture14" name="originPicture14" value="${map['PICTURE_14'] }">
		    <input type="hidden" id="originPicture15" name="originPicture15" value="${map['PICTURE_15'] }">
		    <input type="hidden" id="originPicture16" name="originPicture16" value="${map['PICTURE_16'] }">
		    <input type="hidden" id="originPicture17" name="originPicture17" value="${map['PICTURE_17'] }">
		    <input type="hidden" id="originPicture18" name="originPicture18" value="${map['PICTURE_18'] }">
		    <input type="hidden" id="originPicture19" name="originPicture19" value="${map['PICTURE_19'] }">
		    <input type="hidden" id="originPicture20" name="originPicture20" value="${map['PICTURE_20'] }">
		    </div>
			
			<div class="btn_bottom">
				<ul>
					<li>사진은 640*480 사이즈에 최적화 됐으며 타 사이트 광고, 과도한 포토샵은 경고 없이 삭제됩니다. 분할사진은 1개만 허용됩니다.</li>
				</ul>
			</div>
		</div>
	</form>
	<div class="car_description">
			<iframe id="carregisterAgree" width="900px" height="500px;" src="<c:url value='/inc2/carRegister.html'/>"></iframe>
					<div class="bx">
						<input type="radio" id="sellerAgree1" name="sellerAgree" checked="" value="1">
						<label for="sellerAgree1" class="s1">위 내용에 동의합니다.</label>
						<input type="radio" id="sellerAgree2" name="sellerAgree" value="2">
						<label for="sellerAgree2" class="s2">위 내용에 동의하지 않습니다. </label>
					</div>
			</div>
			<div style="text-align: center;">
				<a href="#"></a>
				<a style="cursor:pointer; color: black;" id="carEdit" href="#"><img alt="차량등록" src="<%=request.getContextPath()%>/img/register_car.png"></a>
			</div>            
		</div>
	</div>
</div>
<%@ include file="../design/inc/bottom.jsp" %>