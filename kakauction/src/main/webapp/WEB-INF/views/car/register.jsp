<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js' />"></script>
<script type="text/javascript">
	
	$(function(){
		$("#carReg").click(function(event){
			var bool = false;
			/* $("input[type='file']").each(function(){
				if(!$(this).val()){
					alert("사진은 20장 모두 등록하셔야 합니다");
					bool = true;
					return false;
				}
			}); */
			
			
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
				alert("차량 판매 약관에 동의하세요")
				bool=true;
			}

			if(!bool){
				$("#carBirth").val($("#carBirth1").val()+"년 "+$("#carBirth2").val()+"월");
				$("#registerCar").submit();
			}
			
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
	#memberInfoTable td, #memberInfoTable th, #memberInfoTable{
		border: 1px solid black;
		border-collapse: collapse;
	}
	
	#carInfoTable td, #carInfoTable th, #carInfoTable{
		border: 1px solid black;
		border-collapse: collapse;
	}
	
	#carOptionTable td, #carOptionTable th, #carOptionTable{
		border: 1px solid black;
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
<form id="registerCar" name="registerCar" method="post" enctype="multipart/form-data" action="<c:url value='/car/register.do'/>">
	<div id="Content">
		<h3>국산차 등록</h3>
		<div>
			<div class="title">
				<h4>판매자정보</h4>
			</div>

			<table summary="판매자정보 입력" id="memberInfoTable">
				<colgroup>
					<col width="116px">
					<col width="290px">
					<col width="116px">
					<col width="*">
				</colgroup>
				<tbody>
				<tr>
					<th scope="col">이름</th>
					<td>
						<strong>${memVo.memberName }</strong>
					</td>
					<th scope="col">아이디</th>
					<td>
						<input type="text" name="memberId" id="memberId" value="${memVo.memberId }" readonly>
					</td>
				</tr>
				<tr>
					<th scope="col">주소</th>
					<td colspan="3">
					${memVo.memberAddr }
					</td>
				</tr>
				<tr>
					<th scope="col">공고기관</th>
					<td colspan="3"><input type="text" name="carCompany" id="carCompany" style="width: 500px;"></td>
				</tr>
				<tr>
					<th scope="col"><label>이메일</label></th>
					<td colspan="3">
						${memVo.memberEmail }
					</td>
				</tr>
				<tr>
					<th scope="col"><label>휴대전화</label></th>
					<td colspan="3">
						${memVo.memberHp }
                    </td>
				</tr>
				</tbody>
			</table>
		</div>

		<div>
			<div>
				<h4>차량정보 입력</h4>
			</div>
			
			<table id="carInfoTable" summary="차량정보 입력">
			<colgroup>
				<col width="116px">
				<col width="*">
				<col width="116px">
				<col width="*">
			</colgroup>
			<tbody>
			<tr>
				<th scope="col"><label>차량번호</label></th>
				<td colspan="3">
					<input type="text" name="carNum" id="carNum"  maxlength="12">
				</td>
			</tr>
			<tr>
				<th scope="col"><label>차량명</label></th>
				<td colspan="3">
                       <span id="id_cardepth">
						<input type="text" name="carModel" id="carModel">
				</td>
			</tr>
			<tr>
				<th scope="col"><label>연식</label><span>(최초등록일)</span></th>
				<td>
					<select name="carBirth1" id="carBirth1" style="width:89px;" title="년선택">
						<option value="">선택</option>
                        <option value="2017">2017</option><option value="2016">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option>
                    </select>
					년
					&nbsp;
					<select name="carBirth2" id="carBirth2" style="width:89px;" title="월선택">
					<option value="">선택</option>
						<option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>
                    </select>
					월
					<input type="hidden" name="carBirth" id="carBirth">
			  	</td>
				<th scope="col"><label>차종</label></th>
				<td>
					<select name="carSize" id="carSize" style="width:89px;" title="년선택">
						<option value="">선택하세요</option>
						<option value="경차">경차</option>
						<option value="소형">소형</option>
						<option value="준중">준중</option>
						<option value="중형">중형</option>
						<option value="대형">대형</option>
						<option value="리무진">리무진</option>
						<option value="스포츠카">스포츠카</option>
						<option value="SUV">SUV</option>
						<option value="RV">RV</option>
						<option value="승합차">승합차</option>
						<option value="밴">밴</option>
						<option value="캠핑카">캠핑카</option>
						<option value="버스">버스</option>
                    </select>
				</td>
			</tr>
			<tr>
				<th scope="col"><label>변속기</label></th>
				<td>
					<select name="carAm" id="carAm" style="width:89px;" title="변속기선택">
						<option value="" selected>선택하세요</option>
						<option value="자동">자동</option>
						<option value="수동">수동</option>
					</select>
			  </td>
				<th scope="col"><label>연료</label></th>
				<td>
         			<select name="carGas" style="width:100px;" id="carGas" title="연료선택">
						<option value="">선택하세요</option>
						<option value="가솔린">가솔린</option>
						<option value="디젤">디젤</option>
						<option value="LPG">LPG</option>
						<option value="LPG 일반인구입">LPG 일반인구입</option>
						<option value="가솔린/LPG겸용">가솔린/LPG겸용</option>
						<option value="가솔린 하이브리드">가솔린 하이브리드</option>
						<option value="LPG 하이브리드">LPG 하이브리드</option>
						<option value="디젤 하이브리드">디젤 하이브리드</option>
						<option value="CNG">CNG</option>
						<option value="전기">전기</option>
						<option value="기타">기타</option>
					</select>
				</td>
				</tr>
				<tr>
					<th scope="col"><label>배기량</label></th>
					<td>
						<input name="carCc" type="text" id="carCc" style="width:78px;" onkeydown="Numberic();" title="배기량" maxlength="4"> cc
				</td>
				<th scope="col"><label>주행거리</label></th>
				<td>
					<input name="carDist" type="text" id="carDist" style="width:78px;" title="주행거리" onkeydown="Numberic();">
					<label>km</label>
			</td>
			</tr>
			<tr>
				<th scope="col"><label>색상</label></th>
				<td>
					<select name="carColor" id="carColor" style="width:89px;" title="색상선택">
							<option value="">선택하세요</option>
							<option value="검정색">검정색</option><option value="검정투톤">검정투톤</option><option value="은색">은색</option><option value="은색투톤">은색투톤</option><option value="흰색">흰색</option><option value="흰색투톤">흰색투톤</option><option value="진주색">진주색</option><option value="진주투톤">진주투톤</option><option value="갈색">갈색</option><option value="금색">금색</option><option value="남색">남색</option><option value="노란색">노란색</option><option value="녹색">녹색</option><option value="베이지색">베이지색</option><option value="보라색">보라색</option><option value="분홍색">분홍색</option><option value="빨간색">빨간색</option><option value="연금색">연금색</option><option value="연두색">연두색</option><option value="은하늘색">은하늘색</option><option value="자주색">자주색</option><option value="주황색">주황색</option><option value="청색">청색</option><option value="진청색">진청색</option><option value="청옥색">청옥색</option><option value="파란색">파란색</option><option value="하늘색">하늘색</option><option value="회색">회색</option><option value="진회색">진회색</option><option value="기타색상">기타색상</option>
					</select>
				</td>
				<th scope="col">
					<label>사고여부</label>
				</th>
				<td>
					<input name="carAcci" type="radio" id="noAcci" value="N" checked>
					<label for="noAcci">무사고</label>
						
					<input name="carAcci" type="radio" id="acci" value="Y">
					<label for="acci">사고</label>
			</td>
			</tr>

     		<tr>
				<th scope="col">
					<label>초기 구입가</label>
				</th>
				<td colspan="3">
					<input name="carPrice" type="text" id="carPrice" style="width:78px;" title="판매가격" onkeydown="Numberic();" maxlength="6">
					(단위 : 만원)
					<span>* 허위가격 입력 시 아이디 제명 및 경고없이 삭제됩니다.</span>
				</td>
			</tr>
     		<tr>
				<th scope="col">
					<label>차량 현재 위치</label>
				</th>
				<td colspan="3">
					<input name="carLoc" type="text" id="carLoc" style="width:400px;" title="현재위치">
					<input type="button" id="searchLoc" name="searchLoc" value="장소 검색">
				</td>
			</tr>
			</tbody>
		  </table>
		</div>

       
		<div class="title">
				<h4>차량옵션선택</h4>
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
						<li><input type="checkbox" id="options_95" name="opIn" value="95"> <label for="options_95">파워윈도우</label></li>
						<li><input type="checkbox" id="options_96" name="opIn" value="96"> <label for="options_96">에어컨</label></li>
						<li><input type="checkbox" id="options_97" name="opIn" value="97"> <label for="options_97">풀오토에어컨</label></li>
						<li><input type="checkbox" id="options_98" name="opIn" value="98"> <label for="options_98">좌/우독립에어컨</label></li>
						<li><input type="checkbox" id="options_99" name="opIn" value="99"> <label for="options_99">가죽시트</label></li>
						<li><input type="checkbox" id="options_100" name="opIn" value="100"> <label for="options_100">열선시트</label></li>
						<li><input type="checkbox" id="options_101" name="opIn" value="101"> <label for="options_101">통풍시트</label></li>
						<li><input type="checkbox" id="options_102" name="opIn" value="102"> <label for="options_102">마사지시트</label></li>
						<li><input type="checkbox" id="options_103" name="opIn" value="103"> <label for="options_103">버켓시트</label></li>
						<li><input type="checkbox" id="options_104" name="opIn" value="104"> <label for="options_104">메모리시트</label></li>
						<li><input type="checkbox" id="options_105" name="opIn" value="105"> <label for="options_105">분할폴딩시트</label></li>
						<li><input type="checkbox" id="options_106" name="opIn" value="106"> <label for="options_106">운전석전동시트</label></li>
						<li><input type="checkbox" id="options_107" name="opIn" value="107"> <label for="options_107">동승석전동시트</label></li>
						<li><input type="checkbox" id="options_108" name="opIn" value="108"> <label for="options_108">뒷좌석전동시트</label></li>
					</ul>
					<ul>
						<li><input type="checkbox" id="options_109" name="opOut" value="109"> <label for="options_109">알루미늄휠</label></li>
						<li><input type="checkbox" id="options_110" name="opOut" value="110"> <label for="options_110">크롬휠</label></li>
						<li><input type="checkbox" id="options_111" name="opOut" value="111"> <label for="options_111">광폭타이어</label></li>
						<li><input type="checkbox" id="options_112" name="opOut" value="112"> <label for="options_112">샤크안테나</label></li>
						<li><input type="checkbox" id="options_113" name="opOut" value="113"> <label for="options_113">데이라이트</label></li>
					</ul>
				</td>
				<td class="opCon">
					<ul>
						<li><input type="checkbox" id="options_38" name="opCon" value="38"> <label for="options_38">썬루프</label></li>
						<li><input type="checkbox" id="options_39" name="opCon" value="39"> <label for="options_39">파노라마썬루프</label></li>
						<li><input type="checkbox" id="options_40" name="opCon" value="40"> <label for="options_40">HID/제논램프</label></li>
						<li><input type="checkbox" id="options_41" name="opCon" value="41"> <label for="options_41">오토라이트</label></li>
						<li><input type="checkbox" id="options_42" name="opCon" value="42"> <label for="options_42">스마트키</label></li>
						<li><input type="checkbox" id="options_43" name="opCon" value="43"> <label for="options_43">엔진스타트버튼</label></li>
						<li><input type="checkbox" id="options_44" name="opCon" value="44"> <label for="options_44">라이트세척장치</label></li>
						<li><input type="checkbox" id="options_45" name="opCon" value="45"> <label for="options_45">주차조향보조시스템</label></li>
						<li><input type="checkbox" id="options_46" name="opCon" value="46"> <label for="options_46">전자주차브레이크</label></li>
						<li><input type="checkbox" id="options_47" name="opCon" value="47"> <label for="options_47">이모빌라이져</label></li>
						<li><input type="checkbox" id="options_48" name="opCon" value="48"> <label for="options_48">트립컴퓨터</label></li>
						<li><input type="checkbox" id="options_49" name="opCon" value="49"> <label for="options_49">슈퍼비전계기판</label></li>
						<li><input type="checkbox" id="options_50" name="opCon" value="50"> <label for="options_50">HUD</label></li>
						<li><input type="checkbox" id="options_51" name="opCon" value="51"> <label for="options_51">나이트비전</label></li>
						<li><input type="checkbox" id="options_52" name="opCon" value="52"> <label for="options_52">ECM룸미러</label></li>
						<li><input type="checkbox" id="options_53" name="opCon" value="53"> <label for="options_53">크루즈컨트롤</label></li>
						<li><input type="checkbox" id="options_54" name="opCon" value="54"> <label for="options_54">에어서스펜션</label></li>
						<li><input type="checkbox" id="options_55" name="opCon" value="55"> <label for="options_55">전동트렁크</label></li>
						<li><input type="checkbox" id="options_56" name="opCon" value="56"> <label for="options_56">타이어공기압경보</label></li> 
					</ul>
				</td>
				<td class="opCon">
					<ul> 
						<li><input type="checkbox" id="options_57" name="opCon" value="57"> <label for="options_57">파워핸들</label></li>
						<li><input type="checkbox" id="options_58" name="opCon" value="58"> <label for="options_58">히팅핸들</label></li>
						<li><input type="checkbox" id="options_59" name="opCon" value="59"> <label for="options_59">리모컨핸들</label></li>
						<li><input type="checkbox" id="options_60" name="opCon" value="60"> <label for="options_60">가죽/우드핸들</label></li>
						<li><input type="checkbox" id="options_61" name="opCon" value="61"> <label for="options_61">속도감응식핸들</label></li>
						<li><input type="checkbox" id="options_62" name="opCon" value="62"> <label for="options_62">원격시동장치</label></li>
						<li><input type="checkbox" id="options_63" name="opCon" value="63"> <label for="options_63">무선도어리모컨</label></li>
						<li><input type="checkbox" id="options_64" name="opCon" value="64"> <label for="options_64">유아시트고정장치</label></li>
						<li><input type="checkbox" id="options_65" name="opCon" value="65"> <label for="options_65">패들쉬프트</label></li>
						<li><input type="checkbox" id="options_66" name="opCon" value="66"> <label for="options_66">압축도어</label></li>
						<li><input type="checkbox" id="options_67" name="opCon" value="67"> <label for="options_67">자동도어잠금</label></li>
						<li><input type="checkbox" id="options_68" name="opCon" value="68"> <label for="options_68">자동슬라이딩도어</label></li>
						<li><input type="checkbox" id="options_69" name="opCon" value="69"> <label for="options_69">전동접이식미러</label></li>
						<li><input type="checkbox" id="options_70" name="opCon" value="70"> <label for="options_70">냉장고</label></li>
						<li><input type="checkbox" id="options_71" name="opCon" value="71"> <label for="options_71">루프캐리어</label></li>
						<li><input type="checkbox" id="options_72" name="opCon" value="72"> <label for="options_72">에어스카프</label></li>
						<li><input type="checkbox" id="options_73" name="opCon" value="73"> <label for="options_73">공기청정기</label></li>
						<li><input type="checkbox" id="options_74" name="opCon" value="74"> <label for="options_74">전동햇빛가리개</label></li>
						<li><input type="checkbox" id="options_75" name="opCon" value="75"> <label for="options_75">레인센서와이퍼</label></li> 
					</ul>
				</td>
				<td class="opSafe">
					<ul>
						<li><input type="checkbox" id="options_76" name="opSafe" value="76"> <label for="options_76">운전석에어백</label></li>
						<li><input type="checkbox" id="options_77" name="opSafe" value="77"> <label for="options_77">동승석에어백</label></li>
						<li><input type="checkbox" id="options_78" name="opSafe" value="78"> <label for="options_78">측면에어백</label></li>
						<li><input type="checkbox" id="options_79" name="opSafe" value="79"> <label for="options_79">커튼에어백</label></li>
						<li><input type="checkbox" id="options_80" name="opSafe" value="80"> <label for="options_80">승객감지에어백</label></li>
						<li><input type="checkbox" id="options_81" name="opSafe" value="81"> <label for="options_81">무릎보호에어백</label></li>
						<li><input type="checkbox" id="options_82" name="opSafe" value="82"> <label for="options_82">액티브헤드레스트</label></li>
						<li><input type="checkbox" id="options_83" name="opSafe" value="83"> <label for="options_83">ABS</label></li>
						<li><input type="checkbox" id="options_84" name="opSafe" value="84"> <label for="options_84">BAS</label></li>
						<li><input type="checkbox" id="options_85" name="opSafe" value="85"> <label for="options_85">EBD</label></li>
						<li><input type="checkbox" id="options_86" name="opSafe" value="86"> <label for="options_86">ECS</label></li>
						<li><input type="checkbox" id="options_87" name="opSafe" value="87"> <label for="options_87">LSD</label></li>
						<li><input type="checkbox" id="options_88" name="opSafe" value="88"> <label for="options_88">TCS</label></li>
						<li><input type="checkbox" id="options_89" name="opSafe" value="89"> <label for="options_89">VDC/ESP</label></li>
						<li><input type="checkbox" id="options_90" name="opSafe" value="90"> <label for="options_90">전,측면감지센서</label></li>
						<li><input type="checkbox" id="options_91" name="opSafe" value="91"> <label for="options_91">후방감지센서</label></li>
						<li><input type="checkbox" id="options_92" name="opSafe" value="92"> <label for="options_92">전방카메라</label></li>
						<li><input type="checkbox" id="options_93" name="opSafe" value="93"> <label for="options_93">후방카메라</label></li>
						<li><input type="checkbox" id="options_94" name="opSafe" value="94"> <label for="options_94">차선이탈경보장치</label></li>
					</ul>
				</td>
				<td class="opAa">
					<ul>
						<li><input type="checkbox" id="options_114" name="opAa" value="114"> <label for="options_114">내비게이션</label></li>
						<li><input type="checkbox" id="options_115" name="opAa" value="115"> <label for="options_115">하이패스</label></li>
						<li><input type="checkbox" id="options_116" name="opAa" value="116"> <label for="options_116">블랙박스</label></li>
						<li><input type="checkbox" id="options_117" name="opAa" value="117"> <label for="options_117">핸즈프리</label></li>
						<li><input type="checkbox" id="options_118" name="opAa" value="118"> <label for="options_118">블루투스</label></li>
						<li><input type="checkbox" id="options_119" name="opAa" value="119"> <label for="options_119">CD플레이어</label></li>
						<li><input type="checkbox" id="options_120" name="opAa" value="120"> <label for="options_120">CD체인저</label></li>
						<li><input type="checkbox" id="options_121" name="opAa" value="121"> <label for="options_121">DVD플레이어</label></li>
						<li><input type="checkbox" id="options_122" name="opAa" value="122"> <label for="options_122">DMB</label></li>
						<li><input type="checkbox" id="options_123" name="opAa" value="123"> <label for="options_123">DivX</label></li>
						<li><input type="checkbox" id="options_124" name="opAa" value="124"> <label for="options_124">MP3</label></li>
						<li><input type="checkbox" id="options_125" name="opAa" value="125"> <label for="options_125">AUX</label></li>
						<li><input type="checkbox" id="options_126" name="opAa" value="126"> <label for="options_126">USB</label></li>
						<li><input type="checkbox" id="options_127" name="opAa" value="127"> <label for="options_127">아이팟단자</label></li>
						<li><input type="checkbox" id="options_128" name="opAa" value="128"> <label for="options_128">앞좌석TV</label></li>
						<li><input type="checkbox" id="options_129" name="opAa" value="129"> <label for="options_129">뒷좌석TV</label></li>  
						<li><input type="checkbox" id="options_130" name="opAa" value="130"> <label for="options_130">엠프</label></li>  
						<li><input type="checkbox" id="options_131" name="opAa" value="131"> <label for="options_131">우퍼</label></li>
						<li><input type="checkbox" id="options_132" name="opAa" value="132"> <label for="options_132">모젠시스템</label></li>
					</ul>
				</td>
				<td class="opTune">
					<ul>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_133" value="133"> <label for="options_133">흡기</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_134" value="134"> <label for="options_134">배기</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_135" value="135"> <label for="options_135">미션</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_136" value="136"> <label for="options_136">핸들</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_137" value="137"> <label for="options_137">계기판</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_138" value="138"> <label for="options_138">ECU맵핑</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_139" value="139"> <label for="options_139">터보차저</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_140" value="140"> <label for="options_140">슈퍼차저</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_141" value="141"> <label for="options_141">다운스프링</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_142" value="142"> <label for="options_142">일체형쇼바</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_143" value="143"> <label for="options_143">NA튜닝</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_144" value="144"> <label for="options_144">오디오</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_145" value="145"> <label for="options_145">스트럿바</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_146" value="146"> <label for="options_146">스테빌라이저</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_147" value="147"> <label for="options_147">엔진스왑</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_148" value="148"> <label for="options_148">브레이크</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_149" value="149"> <label for="options_149">스포일러</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_150" value="150"> <label for="options_150">휠/타이어</label></li>
               		<li style="width:97px"><input type="checkbox" name="opTune" id="options_151" value="151"> <label for="options_151">에어로파츠</label></li>
               	</ul>
				</td>
			</tr>
			</tbody>
			</table> 
		</div>
		
<!-- ******************************************************************************************************************************************************************** -->
		<div class="title">
			<h4>차량사진 등록</h4>
		</div>
		
		<div id="car_pictures">
           <div class="imgfile">
		       <img id="UploadedImg1" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg2" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg3" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg4" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg5" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg6" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg7" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg8" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg9" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg10" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg11" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg12" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg13" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg14" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg15" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg16" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg17" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg18" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg19" src="" style="width: 80px; height: 80px;"/> 
		       <img id="UploadedImg20" src="" style="width: 80px; height: 80px;"/> 
		    </div>
		    <div>
		    
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
		    </div>
			
			<div class="btn_bottom">
				<ul>
					<li>사진은 640*480 사이즈에 최적화 됐으며 타 사이트 광고, 과도한 포토샵은 경고 없이 삭제됩니다. 분할사진은 1개만 허용됩니다.</li>
				</ul>
			</div>
		</div>
</form>
<div class="layout2 car_description car_description_top">
				<h4>판매약관</h4>
				<fieldset>
					<legend>판매약관 동의</legend>
					<div class="terms agree">
						<p class="txt1">	
							신뢰할 수 있는 거래환경 조성을 위하여 실매물이 아닌 허위(미끼)매물 판매을 엄격히 제한합니다.<br>
							소비자와 판매자 보호를 위해 카카옥션은 허위(미끼)매물 판매자에 대해 예고없이 카카옥션 차량등록 서비스 영구 이용정지, 상사 제한, <br>
							등록된 모든 차량 삭제는 물론 등록비 등 일체비용 환불 불가하오니 반드시 숙지하시기 바랍니다.<br>
							등록 내용에 따른 모든 책임은 판매자에게 있습니다.
						</p>
						<h3>이용 제한 기준</h3>
						<p class="txt2">			
							1) 1년 이용정지<br>
							- 허위(미끼)매물 또는 개인위장매물로 신고된 차량<br>
							- 판매된 차량을 고의로 판매완료, 삭제하지 않은 차량<br>
							- 차량의 판매가격이 동급모델 또는 평균 시세대비 낮은 금액으로 등록된 차량<br>
							- 딜러 판매자가 소속된 단지 매물이 아닌 타 지역(단지) 매물을 등록한 차량<br>
							- 검열을 위해 관리자가 요청한 소명자료 기간(3일)을 초한 경우<br>
							- 차량의 실 소유주의 제시가 보다 낮은 금액으로 광고하는 차량<br>
							- 차량의 실 소유주에게 허위매물로 신고된 차량<br>
							- 판매가 불가한 차량을 위탁차량으로 위장해 등록된 차량<br>
							- 딜러 판매자가 개인 ID를 이용해 개인판매자로 등록된 차량<br>
							- 실 차량과 등록된 차량정보의 내용이 상이하게 등록된 차량<br>
							- 차량등록증, 성능점검기록부, 사고유무를 허위로 등록된 차량<br>
							- 판매자정보, 차량정보가 차량설명란의 내용과 상이하게 등록된 차량<br>
							- 차량 설명란에 차량설명 외에 판매자의 업체광고 및 홍보성 내용이 등록된 차량<br>
							- 등록 시점의 계절과 맞지 않는 과거의 사진, 판매된 차량사진을 이용해 등록된 차량<br>
							- 사진 무단도용, 타 사이트 혹은 다른 판매자의 사진을 도용하여 등록된 차량<br>
							- 차량사진, 동영상 차량번호 등 의도적인 삭제/가림/훼손 하거나 과도한 보정/조작해 등록된 차량<br>
							- 입력한 개인정보와 차량정보가 실제와 상이한 경우<br>
							- 허위(미끼)매물 허위 신고 및 보복성으로 신고하는 경우<br>
							- 신고내용과 다르거나 의미 없는 내용으로만 작성 신고하는 경우 <br><br>
							2) 영구정지<br>
							- 이용정지 2회 적발 시<br>
							- 이용정지자가 다른 ID를 이용해 차량을 등록하거나 등록을 시도하는 경우<br>
							- 거래가 불가능한 대포차(명의이전 불가차량)나 매매부적합 차량을 등록한 경우<br>
							- 서버에 무리를 주는 불법 프로그램을 사용해 재등록, 차량등록을 하는 경우<br>
							- 명백한 사기행위, 소비자원 및 수사기관의 신고 등 부당한 행위를 한 이용자인 경우<br>
							- 관리자가 검열(차량 관련 서류)을 위해 요청하는 서류를 위조해 보내주는 경우<br>
							- 한 상사기준 영구 정지 3명 누적 시 해당 상사 영구 이용정지<br>
							- 카카옥션 관리자 검열을 통한 서류 제출(차량 관련 서류) 요청에 따르지 않는 등 카카옥션 차량등록 기준에 부합하지 않다고 판단될 경우<br>
							- 타인의 명의를 도용해 차량을 등록한 경우(2006년 9월24일 개정된 주민등록법 제 21조 2항 제 9호의 의거, 3년 이하의 징역 또는 <br>
							&nbsp;&nbsp;1천만원 이하의 벌금이 부과됨)<br><br>
							* 광고중인 차량은 물론 판매대기, 판매완료 차량도 적용대상<br>
							* 허위매물 확인/신고접수 후 3일 이내 관리자 요청 서류을 통한 소명 가능<br>
							&nbsp;(관리자가 요청한 소명자료 기간은 3일이며, 요청 서류는 허위매물 신고 유형에 따라 검열에 필요한 요청 서류가 다를 수 있음) 
						</p>
						<h3>이용 제한 및 환불 안내</h3>
						<p>			
							- 차량등록 서비스 이용정지 및 해당 상사제한<br>
							- 판매(등록)자가 등록한 모든 차량 광고 즉시 노출 중단 및 삭제처리<br>
							- 이용 제한시 판매(등록)자가 등록한 모든 차량에 대한 등록비 등 일체 비용 환불 불가<br>		
							※ 허위(미끼)매물 등록 시 위와같은 판매약관에 따라 엄격히 제한되오니 이용하시는데 유의하시기 바랍니다.
						 </p>
					</div>
					<div class="bx">
						<input type="radio" id="sellerAgree1" name="sellerAgree" checked="" value="1">
						<label for="sellerAgree1" class="s1">위 내용에 동의합니다.</label>
						<input type="radio" id="sellerAgree2" name="sellerAgree" value="2">
						<label for="sellerAgree2" class="s2">위 내용에 동의하지 않습니다. </label>
					</div>
				</fieldset>
			</div>

		<div>
			<a href="#"></a>
			<a style="cursor:pointer; text-decoration: none;color: black;" id="carReg" href="#">차량 등록</a>
		</div>            
	</div>
</body>
<%@ include file="../design/inc/bottom.jsp" %>