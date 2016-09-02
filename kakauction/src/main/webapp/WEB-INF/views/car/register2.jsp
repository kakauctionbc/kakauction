<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>차량등록</title>

<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js' />"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$("#frmWrite").submit(function(event){
			if($("#freeboardTitle").val()==""){
				alert("제목을 입력하세요");
				$("#freeboardTitle").focus();
				event.preventDefault();
			}else if($("#name").val().length<1){
				alert("이름을 입력하세요");
				$("#name").focus();
				event.preventDefault();
			}else if($("#pwd").val().length<1){
				alert("비밀번호를 입력하세요");
				$("#pwd").focus();
				event.preventDefault();
			}
		});
		
	});
	
	var reader = null;
	var fileName = "";
	
	function readURL(input) {
/* 		$("#UploadedImg").css("border-radius","40px");
 */		
	    if (input.files && input.files[0]) {
	    	for(var i=1; i<=input.files.length; i++){
				$("#UploadedImg"+i).css("height","80px"); //미리보기 크기 조정
				$("#UploadedImg"+i).css("width","80px"); //미리보기 크기 조정
				
				fileName = input.files[i-1].name;
		 		$("#picture"+i).val(fileName); //fileName 넣기
		 		
		        reader = new FileReader();
		        reader.onload = function (e) {
		            $('#UploadedImg'+(i-1)).attr('src', e.target.result);
		        };
		        reader.readAsDataURL(input.files[i-1]);
	    	}
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
</head>
<body>
	<div id="Content">
		<h3>국산차 등록</h3>
		<div>
			<div class="title">
				<h4>판매자정</h4>
			</div>

			<table summary="판매자정보 입력" id="memberInfoTable">
				<caption>판매자정보 입력</caption>
				<colgroup>
					<col width="116px">
					<col width="290px">
					<col width="116px">
					<col width="*">
				</colgroup>
				<tbody>
				<tr>
					<th scope="col">이름</th>
					<td colspan="3">
						<strong>강병천</strong> 
					</td>
				</tr>
				<tr>
					<th scope="col">주소</th>
					<td colspan="3">
					서울 광진구 광장동 극동아파트	
					</td>
				</tr>
				<tr>
					<th scope="col"><label>이메일</label></th>
					<td colspan="3">
						starstar16@naver.com
					</td>
				</tr>
				<tr>
					<th scope="col"><label>휴대전화</label></th>
					<td colspan="3">
						010
						<span>-</span>
						7453
						<span>-</span>
						1990
                    </td>
				</tr>
				</tbody>
			</table>
		</div>

<!-- div phone edit -->
<style>
#hp_auth_toggle {  position:absolute; top:260px;  width:400px; height:130px; background-color:white; border: 1px solid  #999; box-shadow:2px 2px 2px #ccc; }
#hp_auth_toggle .top { display:block; border-bottom:1px solid #ccc;padding:15px 10px; }
#hp_auth_toggle .igc { position:absolute; top:7px; right:5px;  }
#hp_auth_toggle .txt { padding:20px  20px 5px 20px ; color:#999999; }
#hp_auth_toggle .ipt { padding:5px  20px 5px 20px ; color:#999999; }	
	
</style>
<!-- div phone edit -->
              
			
		<div>
			<div>
				<h4>차량정보 입력</h4>
			</div>
			
			<table id="carInfoTable" summary="차량정보 입력">
			<caption>차량정보 입력</caption>
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
						<select name="maker_no" id="maker_no" style="width:133px;" onchange="car_depth(this.value, 1);">
						<option value="">제조사</option>
						<option value="">모델</option>
						<input type="text" name="carModel" id="carModel">
				</td>
			</tr>
			<tr>
				<th scope="col"><label>연식</label><span>(최초등록일)</span></th>
				<td colspan="3">
					<select name="carBirth1" id="carBirth1" style="width:89px;" title="년선택">
						<option value="">선택</option>
                        <option value="2017">2017</option><option value="2016">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option>
                    </select>
					년
					&nbsp;
					<select name="carBirth12" id="carBirth2" style="width:89px;" title="월선택">
					<option value="">선택</option>
						<option value="00">0</option><option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>
                    </select>
					월
			  </td>
			</tr>
			<tr>
				<th scope="col"><label>변속기</label></th>
				<td>
					<select name="carAm" id="carAm" style="width:89px;" title="변속기선택">
						<option value="">선택</option>                            
						<option value="auto" selected="">자동</option>
						<option value="manual">수동</option>
					</select>
			  </td>
				<th scope="col"><label>연료</label></th>
				<td>
         			<select name="carGas" style="width:100px;" id="carGas" title="연료선택">
            		<option value="">선택</option>
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
					<input name="carDist" type="text" id=""carDist"" style="width:78px;" title="주행거리" onkeydown="Numberic();" onpaste="return false;">
					<label>km</label>
			</td>
			</tr>
			<tr>
				<th scope="col"><label>색상</label></th>
				<td>
					<select name="carColor" id="carColor" style="width:89px;" title="색상선택">
							<option value="">선택</option>
							<option value="검정색">검정색</option><option value="검정투톤">검정투톤</option><option value="은색">은색</option><option value="은색투톤">은색투톤</option><option value="흰색">흰색</option><option value="흰색투톤">흰색투톤</option><option value="진주색">진주색</option><option value="진주투톤">진주투톤</option><option value="갈색">갈색</option><option value="금색">금색</option><option value="남색">남색</option><option value="노란색">노란색</option><option value="녹색">녹색</option><option value="베이지색">베이지색</option><option value="보라색">보라색</option><option value="분홍색">분홍색</option><option value="빨간색">빨간색</option><option value="연금색">연금색</option><option value="연두색">연두색</option><option value="은하늘색">은하늘색</option><option value="자주색">자주색</option><option value="주황색">주황색</option><option value="청색">청색</option><option value="진청색">진청색</option><option value="청옥색">청옥색</option><option value="파란색">파란색</option><option value="하늘색">하늘색</option><option value="회색">회색</option><option value="진회색">진회색</option><option value="기타색상">기타색상</option>
					</select>
				</td>
				<th scope="col">
					<label>사고여부</label>
					<!-- img style="cursor:pointer" src="http://image.bobaedream.co.kr/renew/images/vehicle/icon_tip.gif" alt="도움말보기" onclick="return false;" -->
				</th>
				<td>
					<input name="carAcci" type="radio" id="noAcci" value="N">
					<label for="noAcci">무사고</label>
						
					<input name="carAcci" type="radio" id="acci" value="Y">
					<label for="acci">사고</label>
			</td>
			</tr>

     		<tr>
				<th scope="col">
					<label>판매가격</label>
				</th>
				<td colspan="3">
					<input name="carPrice" type="text" id="carPrice" style="width:78px;" title="판매가격" onkeydown="Numberic();" maxlength="6">
					(단위 : 만원)
					<span>* 허위가격 입력 시 아이디 제명 및 경고없이 삭제됩니다.</span>
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
				<caption>차량옵션선택</caption>
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
				<td class="option_inout">
					<ul>
						<li><input type="checkbox" id="options_95" name="options[]" value="95"> <label for="options_95"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=01&amp;sk=01','mv','width=0,height=0');" style="cursor:pointer;">파워윈도우</a></label></li>
						<li><input type="checkbox" id="options_96" name="options[]" value="96"> <label for="options_96">에어컨</label></li>
						<li><input type="checkbox" id="options_97" name="options[]" value="97"> <label for="options_97">풀오토에어컨</label></li>
						<li><input type="checkbox" id="options_98" name="options[]" value="98"> <label for="options_98"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=01&amp;sk=04','mv','width=0,height=0');" style="cursor:pointer;">좌/우독립에어컨</a></label></li>
						<li><input type="checkbox" id="options_99" name="options[]" value="99"> <label for="options_99"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=01&amp;sk=05','mv','width=0,height=0');" style="cursor:pointer;">가죽시트</a></label></li>
						<li><input type="checkbox" id="options_100" name="options[]" value="100"> <label for="options_100"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=01&amp;sk=06','mv','width=0,height=0');" style="cursor:pointer;">열선시트</a></label></li>
						<li><input type="checkbox" id="options_101" name="options[]" value="101"> <label for="options_101"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=01&amp;sk=07','mv','width=0,height=0');" style="cursor:pointer;">통풍시트</a></label></li>
						<li><input type="checkbox" id="options_102" name="options[]" value="102"> <label for="options_102"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=01&amp;sk=08','mv','width=0,height=0');" style="cursor:pointer;">마사지시트</a></label></li>
						<li><input type="checkbox" id="options_103" name="options[]" value="103"> <label for="options_103">버켓시트</label></li>
						<li><input type="checkbox" id="options_104" name="options[]" value="104"> <label for="options_104"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=01&amp;sk=10','mv','width=0,height=0');" style="cursor:pointer;">메모리시트</a></label></li>
						<li><input type="checkbox" id="options_105" name="options[]" value="105"> <label for="options_105">분할폴딩시트</label></li>
						<li><input type="checkbox" id="options_106" name="options[]" value="106"> <label for="options_106">운전석전동시트</label></li>
						<li><input type="checkbox" id="options_107" name="options[]" value="107"> <label for="options_107">동승석전동시트</label></li>
						<li><input type="checkbox" id="options_108" name="options[]" value="108"> <label for="options_108">뒷좌석전동시트</label></li>
						<li><input type="checkbox" id="options_109" name="options[]" value="109"> <label for="options_109"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=01&amp;sk=15','mv','width=0,height=0');" style="cursor:pointer;">알루미늄휠</a></label></li>
						<li><input type="checkbox" id="options_110" name="options[]" value="110"> <label for="options_110">크롬휠</label></li>
						<li><input type="checkbox" id="options_111" name="options[]" value="111"> <label for="options_111">광폭타이어</label></li>
						<li><input type="checkbox" id="options_112" name="options[]" value="112"> <label for="options_112">샤크안테나</label></li>
						<li><input type="checkbox" id="options_113" name="options[]" value="113"> <label for="options_113">데이라이트</label></li>
					</ul>
				</td>
				<td class="option_con">
					<ul>
						<li><input type="checkbox" id="options_38" name="options[]" value="38"> <label for="options_38"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=02&amp;sk=01','mv','width=0,height=0');" style="cursor:pointer;">썬루프</a></label></li>
						<li><input type="checkbox" id="options_39" name="options[]" value="39"> <label for="options_39"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=02&amp;sk=02','mv','width=0,height=0');" style="cursor:pointer;">파노라마썬루프</a></label></li>
						<li><input type="checkbox" id="options_40" name="options[]" value="40"> <label for="options_40"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=02&amp;sk=03','mv','width=0,height=0');" style="cursor:pointer;">HID/제논램프</a></label></li>
						<li><input type="checkbox" id="options_41" name="options[]" value="41"> <label for="options_41"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=02&amp;sk=04','mv','width=0,height=0');" style="cursor:pointer;">오토라이트</a></label></li>
						<li><input type="checkbox" id="options_42" name="options[]" value="42"> <label for="options_42">스마트키</label></li>
						<li><input type="checkbox" id="options_43" name="options[]" value="43"> <label for="options_43"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=02&amp;sk=06','mv','width=0,height=0');" style="cursor:pointer;">엔진스타트버튼</a></label></li>
						<li><input type="checkbox" id="options_44" name="options[]" value="44"> <label for="options_44">라이트세척장치</label></li>
						<li><input type="checkbox" id="options_45" name="options[]" value="45"> <label for="options_45"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=02&amp;sk=08','mv','width=0,height=0');" style="cursor:pointer;">주차조향보조시스템</a></label></li>
						<li><input type="checkbox" id="options_46" name="options[]" value="46"> <label for="options_46"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=02&amp;sk=09','mv','width=0,height=0');" style="cursor:pointer;">전자주차브레이크</a></label></li>
						<li><input type="checkbox" id="options_47" name="options[]" value="47"> <label for="options_47">이모빌라이져</label></li>
						<li><input type="checkbox" id="options_48" name="options[]" value="48"> <label for="options_48">트립컴퓨터</label></li>
						<li><input type="checkbox" id="options_49" name="options[]" value="49"> <label for="options_49">슈퍼비전계기판</label></li>
						<li><input type="checkbox" id="options_50" name="options[]" value="50"> <label for="options_50">HUD</label></li>
						<li><input type="checkbox" id="options_51" name="options[]" value="51"> <label for="options_51">나이트비전</label></li>
						<li><input type="checkbox" id="options_52" name="options[]" value="52"> <label for="options_52">ECM룸미러</label></li>
						<li><input type="checkbox" id="options_53" name="options[]" value="53"> <label for="options_53"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=02&amp;sk=16','mv','width=0,height=0');" style="cursor:pointer;">크루즈컨트롤</a></label></li>
						<li><input type="checkbox" id="options_54" name="options[]" value="54"> <label for="options_54">에어서스펜션</label></li>
						<li><input type="checkbox" id="options_55" name="options[]" value="55"> <label for="options_55"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=02&amp;sk=18','mv','width=0,height=0');" style="cursor:pointer;">전동트렁크</a></label></li>
						<li><input type="checkbox" id="options_56" name="options[]" value="56"> <label for="options_56"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=02&amp;sk=19','mv','width=0,height=0');" style="cursor:pointer;">타이어공기압경보</a></label></li> 
					</ul>
				</td>
				<td class="option_con">
					<ul> 
						<li><input type="checkbox" id="options_57" name="options[]" value="57"> <label for="options_57"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=03&amp;sk=01','mv','width=0,height=0');" style="cursor:pointer;">파워핸들</a></label></li>
						<li><input type="checkbox" id="options_58" name="options[]" value="58"> <label for="options_58"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=03&amp;sk=02','mv','width=0,height=0');" style="cursor:pointer;">히팅핸들</a></label></li>
						<li><input type="checkbox" id="options_59" name="options[]" value="59"> <label for="options_59"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=03&amp;sk=03','mv','width=0,height=0');" style="cursor:pointer;">리모컨핸들</a></label></li>
						<li><input type="checkbox" id="options_60" name="options[]" value="60"> <label for="options_60">가죽/우드핸들</label></li>
						<li><input type="checkbox" id="options_61" name="options[]" value="61"> <label for="options_61"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=03&amp;sk=05','mv','width=0,height=0');" style="cursor:pointer;">속도감응식핸들</a></label></li>
						<li><input type="checkbox" id="options_62" name="options[]" value="62"> <label for="options_62">원격시동장치</label></li>
						<li><input type="checkbox" id="options_63" name="options[]" value="63"> <label for="options_63"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=03&amp;sk=07','mv','width=0,height=0');" style="cursor:pointer;">무선도어리모컨</a></label></li>
						<li><input type="checkbox" id="options_64" name="options[]" value="64"> <label for="options_64">유아시트고정장치</label></li>
						<li><input type="checkbox" id="options_65" name="options[]" value="65"> <label for="options_65"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=03&amp;sk=09','mv','width=0,height=0');" style="cursor:pointer;">패들쉬프트</a></label></li>
						<li><input type="checkbox" id="options_66" name="options[]" value="66"> <label for="options_66">압축도어</label></li>
						<li><input type="checkbox" id="options_67" name="options[]" value="67"> <label for="options_67">자동도어잠금</label></li>
						<li><input type="checkbox" id="options_68" name="options[]" value="68"> <label for="options_68"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=03&amp;sk=12','mv','width=0,height=0');" style="cursor:pointer;">자동슬라이딩도어</a></label></li>
						<li><input type="checkbox" id="options_69" name="options[]" value="69"> <label for="options_69"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=03&amp;sk=13','mv','width=0,height=0');" style="cursor:pointer;">전동접이식미러</a></label></li>
						<li><input type="checkbox" id="options_70" name="options[]" value="70"> <label for="options_70">냉장고</label></li>
						<li><input type="checkbox" id="options_71" name="options[]" value="71"> <label for="options_71"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=03&amp;sk=15','mv','width=0,height=0');" style="cursor:pointer;">루프캐리어</a></label></li>
						<li><input type="checkbox" id="options_72" name="options[]" value="72"> <label for="options_72">에어스카프</label></li>
						<li><input type="checkbox" id="options_73" name="options[]" value="73"> <label for="options_73">공기청정기</label></li>
						<li><input type="checkbox" id="options_74" name="options[]" value="74"> <label for="options_74"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=03&amp;sk=18','mv','width=0,height=0');" style="cursor:pointer;">전동햇빛가리개</a></label></li>
						<li><input type="checkbox" id="options_75" name="options[]" value="75"> <label for="options_75"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=03&amp;sk=19','mv','width=0,height=0');" style="cursor:pointer;">레인센서와이퍼</a></label></li> 
					</ul>
				</td>
				<td class="option_safe">
					<ul>
						<li><input type="checkbox" id="options_76" name="options[]" value="76"> <label for="options_76"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=04&amp;sk=01','mv','width=0,height=0');" style="cursor:pointer;">운전석에어백</a></label></li>
						<li><input type="checkbox" id="options_77" name="options[]" value="77"> <label for="options_77">동승석에어백</label></li>
						<li><input type="checkbox" id="options_78" name="options[]" value="78"> <label for="options_78"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=04&amp;sk=03','mv','width=0,height=0');" style="cursor:pointer;">측면에어백</a></label></li>
						<li><input type="checkbox" id="options_79" name="options[]" value="79"> <label for="options_79"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=04&amp;sk=04','mv','width=0,height=0');" style="cursor:pointer;">커튼에어백</a></label></li>
						<li><input type="checkbox" id="options_80" name="options[]" value="80"> <label for="options_80">승객감지에어백</label></li>
						<li><input type="checkbox" id="options_81" name="options[]" value="81"> <label for="options_81"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=04&amp;sk=06','mv','width=0,height=0');" style="cursor:pointer;">무릎보호에어백</a></label></li>
						<li><input type="checkbox" id="options_82" name="options[]" value="82"> <label for="options_82"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=04&amp;sk=07','mv','width=0,height=0');" style="cursor:pointer;">액티브헤드레스트</a></label></li>
						<li><input type="checkbox" id="options_83" name="options[]" value="83"> <label for="options_83"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=04&amp;sk=08','mv','width=0,height=0');" style="cursor:pointer;">ABS</a></label></li>
						<li><input type="checkbox" id="options_84" name="options[]" value="84"> <label for="options_84">BAS</label></li>
						<li><input type="checkbox" id="options_85" name="options[]" value="85"> <label for="options_85">EBD</label></li>
						<li><input type="checkbox" id="options_86" name="options[]" value="86"> <label for="options_86">ECS</label></li>
						<li><input type="checkbox" id="options_87" name="options[]" value="87"> <label for="options_87">LSD</label></li>
						<li><input type="checkbox" id="options_88" name="options[]" value="88"> <label for="options_88"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=04&amp;sk=13','mv','width=0,height=0');" style="cursor:pointer;">TCS</a></label></li>
						<li><input type="checkbox" id="options_89" name="options[]" value="89"> <label for="options_89"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=04&amp;sk=14','mv','width=0,height=0');" style="cursor:pointer;">VDC/ESP</a></label></li>
						<li><input type="checkbox" id="options_90" name="options[]" value="90"> <label for="options_90">전,측면감지센서</label></li>
						<li><input type="checkbox" id="options_91" name="options[]" value="91"> <label for="options_91"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=04&amp;sk=16','mv','width=0,height=0');" style="cursor:pointer;">후방감지센서</a></label></li>
						<li><input type="checkbox" id="options_92" name="options[]" value="92"> <label for="options_92"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=04&amp;sk=17','mv','width=0,height=0');" style="cursor:pointer;">전방카메라</a></label></li>
						<li><input type="checkbox" id="options_93" name="options[]" value="93"> <label for="options_93"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=04&amp;sk=18','mv','width=0,height=0');" style="cursor:pointer;">후방카메라</a></label></li>
						<li><input type="checkbox" id="options_94" name="options[]" value="94"> <label for="options_94"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=04&amp;sk=19','mv','width=0,height=0');" style="cursor:pointer;">차선이탈경보장치</a></label></li>
					</ul>
				</td>
				<td class="option_aa">
					<ul>
						<li><input type="checkbox" id="options_114" name="options[]" value="114"> <label for="options_114">내비게이션</label></li>
						<li><input type="checkbox" id="options_115" name="options[]" value="115"> <label for="options_115">하이패스</label></li>
						<li><input type="checkbox" id="options_116" name="options[]" value="116"> <label for="options_116">블랙박스</label></li>
						<li><input type="checkbox" id="options_117" name="options[]" value="117"> <label for="options_117">핸즈프리</label></li>
						<li><input type="checkbox" id="options_118" name="options[]" value="118"> <label for="options_118"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=05&amp;sk=05','mv','width=0,height=0');" style="cursor:pointer;">블루투스</a></label></li>
						<li><input type="checkbox" id="options_119" name="options[]" value="119"> <label for="options_119"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=05&amp;sk=06','mv','width=0,height=0');" style="cursor:pointer;">CD플레이어</a></label></li>
						<li><input type="checkbox" id="options_120" name="options[]" value="120"> <label for="options_120">CD체인저</label></li>
						<li><input type="checkbox" id="options_121" name="options[]" value="121"> <label for="options_121">DVD플레이어</label></li>
						<li><input type="checkbox" id="options_122" name="options[]" value="122"> <label for="options_122">DMB</label></li>
						<li><input type="checkbox" id="options_123" name="options[]" value="123"> <label for="options_123">DivX</label></li>
						<li><input type="checkbox" id="options_124" name="options[]" value="124"> <label for="options_124">MP3</label></li>
						<li><input type="checkbox" id="options_125" name="options[]" value="125"> <label for="options_125"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=05&amp;sk=12','mv','width=0,height=0');" style="cursor:pointer;">AUX</a></label></li>
						<li><input type="checkbox" id="options_126" name="options[]" value="126"> <label for="options_126"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=05&amp;sk=13','mv','width=0,height=0');" style="cursor:pointer;">USB</a></label></li>
						<li><input type="checkbox" id="options_127" name="options[]" value="127"> <label for="options_127"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=05&amp;sk=14','mv','width=0,height=0');" style="cursor:pointer;">아이팟단자</a></label></li>
						<li><input type="checkbox" id="options_128" name="options[]" value="128"> <label for="options_128">앞좌석TV</label></li>
						<li><input type="checkbox" id="options_129" name="options[]" value="129"> <label for="options_129"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=05&amp;sk=16','mv','width=0,height=0');" style="cursor:pointer;">뒷좌석TV</a></label></li>  
						<li><input type="checkbox" id="options_130" name="options[]" value="130"> <label for="options_130">엠프</label></li>  
						<li><input type="checkbox" id="options_131" name="options[]" value="131"> <label for="options_131">우퍼</label></li>
						<li><input type="checkbox" id="options_132" name="options[]" value="132"> <label for="options_132">모젠시스템</label></li>
					</ul>
				</td>
				<td class="option_tune">
					<ul>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_133" value="133" onclick="tuneChk()"> <label for="options_133"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=06&amp;sk=01','mv','width=0,height=0');" style="cursor:pointer;">흡기</a></label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_134" value="134" onclick="tuneChk()"> <label for="options_134"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=06&amp;sk=02','mv','width=0,height=0');" style="cursor:pointer;">배기</a></label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_135" value="135" onclick="tuneChk()"> <label for="options_135"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=06&amp;sk=03','mv','width=0,height=0');" style="cursor:pointer;">미션</a></label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_136" value="136" onclick="tuneChk()"> <label for="options_136">핸들</label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_137" value="137" onclick="tuneChk()"> <label for="options_137">계기판</label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_138" value="138" onclick="tuneChk()"> <label for="options_138"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=06&amp;sk=06','mv','width=0,height=0');" style="cursor:pointer;">ECU맵핑</a></label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_139" value="139" onclick="tuneChk()"> <label for="options_139">터보차저</label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_140" value="140" onclick="tuneChk()"> <label for="options_140">슈퍼차저</label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_141" value="141" onclick="tuneChk()"> <label for="options_141">다운스프링</label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_142" value="142" onclick="tuneChk()"> <label for="options_142">일체형쇼바</label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_143" value="143" onclick="tuneChk()"> <label for="options_143"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=06&amp;sk=11','mv','width=0,height=0');" style="cursor:pointer;">NA튜닝</a></label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_144" value="144" onclick="tuneChk()"> <label for="options_144"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=06&amp;sk=12','mv','width=0,height=0');" style="cursor:pointer;">오디오</a></label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_145" value="145" onclick="tuneChk()"> <label for="options_145">스트럿바</label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_146" value="146" onclick="tuneChk()"> <label for="options_146">스테빌라이저</label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_147" value="147" onclick="tuneChk()"> <label for="options_147"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=06&amp;sk=15','mv','width=0,height=0');" style="cursor:pointer;">엔진스왑</a></label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_148" value="148" onclick="tuneChk()"> <label for="options_148"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=06&amp;sk=16','mv','width=0,height=0');" style="cursor:pointer;">브레이크</a></label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_149" value="149" onclick="tuneChk()"> <label for="options_149">스포일러</label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_150" value="150" onclick="tuneChk()"> <label for="options_150"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=06&amp;sk=18','mv','width=0,height=0');" style="cursor:pointer;">휠/타이어</a></label></li>
               		<li style="width:97px"><input type="checkbox" name="options[]" id="options_151" value="151" onclick="tuneChk()"> <label for="options_151"><a onclick="javascript:window.open('/mycar/popup/option_explain.php?k=06&amp;sk=19','mv','width=0,height=0');" style="cursor:pointer;">에어로파츠</a></label></li>
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
		       <img id="UploadedImg1" src="" /> 
		       <img id="UploadedImg2" src="" /> 
		       <img id="UploadedImg3" src="" /> 
		       <img id="UploadedImg4" src="" /> 
		       <img id="UploadedImg5" src="" /> 
		       <img id="UploadedImg6" src="" /> 
		       <img id="UploadedImg7" src="" /> 
		       <img id="UploadedImg8" src="" /> 
		       <img id="UploadedImg9" src="" /> 
		       <img id="UploadedImg10" src="" /> 
		       <img id="UploadedImg11" src="" /> 
		       <img id="UploadedImg12" src="" /> 
		       <img id="UploadedImg13" src="" /> 
		       <img id="UploadedImg14" src="" /> 
		       <img id="UploadedImg15" src="" /> 
		       <img id="UploadedImg16" src="" /> 
		       <img id="UploadedImg17" src="" /> 
		       <img id="UploadedImg18" src="" /> 
		       <img id="UploadedImg19" src="" /> 
		       <img id="UploadedImg20" src="" /> 
		    </div>
		    <div>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      <input type='file' id="imageFileUpload" onchange="readURL(this);"  value="사진등록" accept="image/*"/>
		      
		      <input type="text" id="picture1" name="picture1">
		      <input type="text" id="picture2" name="picture2">
		      <input type="text" id="picture3" name="picture3">
		      <input type="text" id="picture4" name="picture4">
		      <input type="text" id="picture5" name="picture5">
		      <input type="text" id="picture6" name="picture6">
		      <input type="text" id="picture7" name="picture7">
		      <input type="text" id="picture8" name="picture8">
		      <input type="text" id="picture9" name="picture9">
		      <input type="text" id="picture10" name="picture10">
		      <input type="text" id="picture11" name="picture11">
		      <input type="text" id="picture12" name="picture12">
		      <input type="text" id="picture13" name="picture13">
		      <input type="text" id="picture14" name="picture14">
		      <input type="text" id="picture15" name="picture15">
		      <input type="text" id="picture16" name="picture16">
		      <input type="text" id="picture17" name="picture17">
		      <input type="text" id="picture18" name="picture18">
		      <input type="text" id="picture19" name="picture19">
		      <input type="text" id="picture20" name="picture20">
		    </div>
			
			<div class="btn_bottom">
				<ul>
					<li>사진은 640*480 사이즈에 최적화 됐으며 타 사이트 광고, 과도한 포토샵은 경고 없이 삭제됩니다. 분할사진은 1개만 허용됩니다.</li>
				</ul>
			</div>
		</div>

<div class="layout2 car_description car_description_top">
				<h4>판매약관</h4>
				<fieldset>
					<legend>판매약관 동의</legend>
					<div class="terms agree">
						<p class="txt1">	
							신뢰할 수 있는 거래환경 조성을 위하여 실매물이 아닌 허위(미끼)매물 판매을 엄격히 제한합니다.<br>
							소비자와 판매자 보호를 위해 보배드림은 허위(미끼)매물 판매자에 대해 <span class="accent">예고없이 보배드림 차량등록 서비스 영구 이용정지, 상사 제한, <br>
							등록된 모든 차량 삭제는 물론 등록비 등 일체비용 환불 불가</span>하오니 반드시 숙지하시기 바랍니다.<br>
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
							- 보배드림 관리자 검열을 통한 서류 제출(차량 관련 서류) 요청에 따르지 않는 등 보배드림 차량등록 기준에 부합하지 않다고 판단될 경우<br>
							- 타인의 명의를 도용해 차량을 등록한 경우(2006년 9월24일 개정된 주민등록법 제 21조 2항 제 9호의 의거, 3년 이하의 징역 또는 <br>
							&nbsp;&nbsp;1천만원 이하의 벌금이 부과됨)<br><br>
							* <span class="accent">광고중인 차량은 물론 판매대기, 판매완료 차량도 적용대상</span><br>
							* <span class="accent">허위매물 확인/신고접수 후 3일 이내 관리자 요청 서류을 통한 소명 가능</span><br>
							&nbsp;(관리자가 요청한 소명자료 기간은 3일이며, 요청 서류는 허위매물 신고 유형에 따라 검열에 필요한 요청 서류가 다를 수 있음) 
						</p>
						<h3>이용 제한 및 환불 안내</h3>
						<p class="txt2">			
							- 차량등록 서비스 이용정지 및 해당 상사제한<br>
							- 판매(등록)자가 등록한 모든 차량 광고 즉시 노출 중단 및 삭제처리<br>
							- <span class="accent">이용 제한시 판매(등록)자가 등록한 모든 차량에 대한 등록비 등 일체 비용 환불 불가</span><br>		
							※ 허위(미끼)매물 등록 시 위와같은 판매약관에 따라 엄격히 제한되오니 이용하시는데 유의하시기 바랍니다.
						 </p>
					</div>
					<div class="bx">
						<input type="radio" id="Seller-6-1" name="chk_agree" checked="">
						<label for="Seller-6-1" class="s1">위 내용에 동의합니다.</label>
						<input type="radio" id="Seller-6-2" name="chk_agree">
						<label for="Seller-6-2" class="s2">위 내용에 동의하지 않습니다. </label>
					</div>
				</fieldset>
			</div>

		<div>
			<a href="#"></a>
			<a style="cursor:pointer; text-decoration: none;color: black;" href="#">차량 등록</a>
		</div>            
	</div>
</body>
</html>