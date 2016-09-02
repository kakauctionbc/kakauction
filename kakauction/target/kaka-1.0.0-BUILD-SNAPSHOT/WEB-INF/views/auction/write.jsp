<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<c:url value='jquery/jquery-3.1.0.min.js'/>"></script>
<script> 
	var filesUpload = document.getElementById("files-upload"), 
		fileList = document.getElementById("file-list"); 
	 
	function traverseFiles (files) { 
		var li, file, fileInfo; 
		fileList.innerHTML = ""; 
		for (var i=0, il=files.length; i<il; i++) { 
			li = document.createElement("li"); 
			file = files[i]; 
			fileInfo = "<div><strong>Name:</strong> " + file.name + "</div>"; 
			fileInfo += "<div><strong>Size:</strong> "+ file.size + " bytes</div>"; 
			fileInfo += "<div><strong>Type:</strong> "+ file.type + "</div>"; 
			li.innerHTML = fileInfo; 
			fileList.appendChild(li);
			}; 
	}; 

	filesUpload.onchange = function () { 
		traverseFiles(this.files); 
	}; 
</script> 
<script src="<c:url value='/ckeditor/ckeditor.js'/>"
	type="text/javascript"></script>
<title>auction/write.jsp</title>
</head>
<body>
	<form action="" name="" id="" method="post">
		<table width="960" border="0" cellspacing="0" cellpadding="0" align="center">
			<tr>
				<td>
					<table width="960" border="0" cellspacing="1" cellpadding="0" bgcolor="#bebebe">
						<tr bgcolor="#f3f7fa">
							<td height="30" class="p_10"><span for="auctionNo">물건관리번호 : </span>
								<input type="text" name="auctionNo" id="auctionNo">
							</td>
						</tr>
						<tr bgcolor="#ffffff">
							<td height="123">
								<table width="%" border="0" align="center" cellpadding="0" cellspacing="0">
									<tr>
										<td width="121">
											<table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#cacaca">
												<tr>
													<td>
														<input type="file" id="picture" name="picture" multiple="multiple" accept=".gif, .jpg, .png"> 
													</td>
													<td>사진</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>
					<table width="932" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="932" height="28" class="gu_black_b1">물건기본정보</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td><table width="960" border="0" cellspacing="1" cellpadding="0" bgcolor="#bebebe" class="ingTbl">
						<tr bgcolor="#FFFFFF">
							<td width="958">
								<table width="958" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee">매각물건</td>
										<td colspan="5" bgcolor="#ffffff" class="p_10">
											<table width="99%" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="756" class="gu_black_b1">
														<select>
															<option>자동차 종류 테이블에서 가져오기</option>
														</select>
														차량모델
														<input type="text" name="carModel" value="">
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td width="210" height="1"></td>
										<td height="1"></td>
										<td width="220" height="1"></td>
										<td width="100" height="1"></td>
										<td width="213" height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee" class="gu_b_r1">소재지</td>
										<td colspan="5" bgcolor="#ffffff" class="p_10">
											<span>차량 주소</span>
										</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>

									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">보관장소</td>
										<td colspan="5" bgcolor="#ffffff" class="p_10">
											대구광역시 북구 조야로2길 209 대구환경공단 신천사업소 주차장</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>

									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">기관/재산종류</td>
										<td colspan="5" bgcolor="#ffffff" style="padding-left: 10px;">
											<table width="99%" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="756">이용기관물건 / 불용품</td>
													<td width="77"></td>
												</tr>
											</table>
										</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee" class="gu_b_r1">집행기관</td>
										<td colspan="5" bgcolor="#ffffff" class="p_10_gu">
											대구광역시 의회사무처 의정담당관실 (김현희) / 전화번호 : 053-803-5143</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">입찰기간</td>
										<td colspan="5" bgcolor="#ffffff" class="p_10_gu">2016년
											09월 01일 17:00 ~ 2016년 09월 08일 16:00 (개찰일시 : 2016년 09월 09일
											10:00)</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee" class="gu_b_r1">공매관련자료</td>
										<td colspan="5" bgcolor="#ffffff" class="p_10">
											<a href="#a07">
												<span class="gu_blue_4" style="cursor: pointer" onclick="viewPop2(22218)">공고정보보기</span>
											</a>
												<span class="do_gray_s4">ㅣ</span>
											<a href="#a07">
												<span class="gu_blue_4" style="cursor: pointer;" onClick="">물건위치보기</span>
											</a>
												<span class="do_gray_s4">ㅣ</span>
											<a href="#a07">
												<span class="gu_blue_4" style="cursor: pointer;" onClick="">중고차시세</span>
											</a>
												<span class="do_gray_s4">ㅣ</span>
											<a href="#a07">
												<span class="gu_blue_4" style="cursor: pointer;" onClick="">동급중고차매물</span>
											</a>
												<span class="do_gray_s4">ㅣ</span>
											<a href="#a07">
												<span class="gu_blue_4">사고이력조회</span>
											</a>
												<span class="do_gray_s4">ㅣ</span>
											<a href="#a08">
												<span class="gu_blue_4" onclick="tab(1)" style="cursor: pointer">인근낙찰물건</span>
											</a>
												<span class="do_gray_s4">ㅣ</span>
											<a href="#a08">
												<span class="gu_blue_4" onclick="tab(2)" style="cursor: pointer">인근낙찰통계</span>
											</a>
										</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>

									<tr>
										<td width="112" height="29" align="left" bgcolor="#eeeeee" class="gu_b_r1">물건관리번호</td>
										<td width="210" bgcolor="#ffffff" class="gu_b_r1">2016-0700-010571&nbsp;</td>
										<td width="103" align="left" bgcolor="#eeeeee" class="gu_b_r1">입찰번호</td>
										<td width="220" bgcolor="#ffffff" class="gu_b_r1">
											<span id='bNo'/>&nbsp;
										</td>
										<td width="100" bgcolor="#eeeeee" class="gu_b_r1">물건상태</td>
										<td width="213" bgcolor="#ffffff" class="p_10_gu">입찰중&nbsp;(유찰<span class="do_red_b1">4</span>회)
										</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr>
										<td width="112" height="32" align="left" bgcolor="#eeeeee" class="gu_b_r1">입찰시작</td>
										<td width="213" bgcolor="#ffffff" class="p_10_gu">2016.09.01 17:00:00&nbsp;</td>
										<td width="100" class="gu_b_r1" bgcolor="#eeeeee">입찰마감</td>
										<td width="213" bgcolor="#ffffff" class="p_10_gu">2016.09.08 16:00:00&nbsp;</td>
										<td width="100" class="gu_b_r1" bgcolor="#eeeeee">개찰일자</td>
										<td width="213" bgcolor="#ffffff" class="p_10_gu"> 2016.09.09 10:00:00&nbsp;</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee" class="gu_b_r1">감정평가액</td>
										<td width="210" align="right" bgcolor="#ffffff"
											class="gu_b_r1"><strong class="p_r10_gu">14,000,000원</strong></td>
										<td width="103" align="left" bgcolor="#eeeeee" class="gu_b_r1">감정평가일자</td>
										<td width="220" bgcolor="#ffffff" class="gu_b_r1" colspan="4">2016.07.13&nbsp;</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">최저입찰가</td>
										<td width="210" align="right" bgcolor="#ffffff"
											class="gu_b_r1"><strong class="p_r10_gu_orange">9,800,000원</strong></td>
										<td width="103" align="left" bgcolor="#eeeeee" class="gu_b_r1">이전책임</td>
										<td width="220" bgcolor="#ffffff" class="gu_b_r1">매수자&nbsp;</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td height="28">
					<table width="960" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="gu_black_b1">차량상세정보</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table width="960" border="0" cellspacing="1" cellpadding="0" bgcolor="#bebebe" class="ingTbl">
						<tr bgcolor="#FFFFFF">
							<td width="958">
								<table width="958" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee" class="gu_b_r1">차량명</td>
										<td colspan="5" bgcolor="#ffffff" class="p_10_gu">
											<strong>기아 기타 SD Ⅱ 38-5R-B</strong>
										</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td width="211" height="1"></td>
										<td width="103" height="1"></td>
										<td width="220" height="1"></td>
										<td width="99" height="1"></td>
										<td width="213" height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee" class="gu_b_r1">차량번호</td>
										<td width="211" bgcolor="#ffffff" class="gu_b_r1">73러1597&nbsp;</td>
										<td width="103" align="left" bgcolor="#eeeeee" class="gu_b_r1">
											연식</td>
										<td width="220" bgcolor="#ffffff" class="gu_b_r1">2005년&nbsp;</td>
										<td width="99" bgcolor="#eeeeee" class="gu_b_r1">연료</td>
										<td width="213" bgcolor="#ffffff" class="p_10_gu">디젤&nbsp;</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">기어</td>
										<td bgcolor="#ffffff" class="gu_b_r1">수동</td>
										<td align="left" bgcolor="#eeeeee" class="gu_b_r1">주행거리</td>
										<td bgcolor="#ffffff" class="gu_b_r1">86,578km</td>
										<td bgcolor="#eeeeee" class="gu_b_r1">배기량</td>
										<td bgcolor="#ffffff" class="gu_b_r1">12,344cc</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee" class="gu_b_r1">세부내역</td>
										<td colspan="5" bgcolor="#ffffff" class="gu_b_r1">차량내부에 약간의 누수현상 및 차량외부 표면에 일부 부식현상있습니다.<br /> 그 밖 현상 및 관리상태는
											보통입니다.&nbsp;
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>

			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td height="28"><table width="960" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td class="gu_black_b1">입찰진행내용</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><table width="960" border="0" cellspacing="1"
						cellpadding="0" bgcolor="#bebebe">
						<tr bgcolor="#FFFFFF">
							<td><table width="958" border="0" cellpadding="0"
									cellspacing="0">
									<tr bgcolor="#eeeeee" align="center">
										<td width="116" height="30" class="gu_r1">입찰번호</td>
										<td width="89" height="32" class="gu_r1">처분방식</td>
										<!-- td width="128" height="32" class="gu_r1" >물건관리번호</td -->
										<td width="146" height="32" class="gu_r1">개찰일시</td>
										<td width="140" height="32" class="gu_r1">최저입찰가</td>
										<td width="140" class="gu_r1">낙찰가</td>
										<td width="81" class="gu_r1">낙찰율</td>
										<td width="118" height="32">입찰결과</td>
									</tr>

									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<!-- td height="1"></td -->
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr bgcolor="#ffffff" align="center">
										<td height="30" class="gu_r1">0001&nbsp;</td>
										<td class="bor_r1">매각&nbsp;</td>
										<!-- td class="bor_r1">2016-0700-010571&nbsp;</td -->
										<td class="bor_r1"><span class="gu_black">2016-08-03
												10:00:00</span>&nbsp;</td>
										<td class="bor_r1">14,000,000원&nbsp;</td>
										<td class="bor_r1">&nbsp;</td>
										<td class="bor_r1">&nbsp;</td>
										<td>유찰&nbsp;</td>
									</tr>

									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<!-- td height="1"></td -->
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr bgcolor="#ffffff" align="center">
										<td height="30" class="gu_r1">0001&nbsp;</td>
										<td class="bor_r1">매각&nbsp;</td>
										<!-- td class="bor_r1">2016-0700-010571&nbsp;</td -->
										<td class="bor_r1"><span class="gu_black">2016-08-11
												10:00:00</span>&nbsp;</td>
										<td class="bor_r1">14,000,000원&nbsp;</td>
										<td class="bor_r1">&nbsp;</td>
										<td class="bor_r1">&nbsp;</td>
										<td>유찰&nbsp;</td>
									</tr>

									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<!-- td height="1"></td -->
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr bgcolor="#ffffff" align="center">
										<td height="30" class="gu_r1">0001&nbsp;</td>
										<td class="bor_r1">매각&nbsp;</td>
										<!-- td class="bor_r1">2016-0700-010571&nbsp;</td -->
										<td class="bor_r1"><span class="gu_black">2016-08-19
												10:00:00</span>&nbsp;</td>
										<td class="bor_r1">12,600,000원&nbsp;</td>
										<td class="bor_r1">&nbsp;</td>
										<td class="bor_r1">&nbsp;</td>
										<td>유찰&nbsp;</td>
									</tr>

									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<!-- td height="1"></td -->
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr bgcolor="#ffffff" align="center">
										<td height="30" class="gu_r1">0001&nbsp;</td>
										<td class="bor_r1">매각&nbsp;</td>
										<!-- td class="bor_r1">2016-0700-010571&nbsp;</td -->
										<td class="bor_r1"><span class="gu_black">2016-08-31
												10:00:00</span>&nbsp;</td>
										<td class="bor_r1">11,200,000원&nbsp;</td>
										<td class="bor_r1">&nbsp;</td>
										<td class="bor_r1">&nbsp;</td>
										<td>유찰&nbsp;</td>
									</tr>
								</table></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td height="28" colspan="2"><table width="960" border="0"
						cellspacing="0" cellpadding="0">
						<tr>
							<td class="gu_black_b1"><img alt=""
								src="http://image.bobaedream.co.kr/images/icon/bullet1.gif">
								입찰정보</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td colspan="2"><table width="960" border="0" cellspacing="1"
						cellpadding="0" bgcolor="#bebebe">
						<tr bgcolor="#FFFFFF">
							<td><table width="958" border="0" cellpadding="0"
									cellspacing="0">
									<tr bgcolor="#eeeeee" align="center">
										<td width="74" height="30" class="gu_r1">입찰번호</td>
										<td width="85" height="32" class="gu_r1">회차/차수</td>
										<!-- td width="88" height="32" class="gu_r1" >공고일</td -->
										<td width="83" height="32" class="gu_r1">대금납부</td>
										<td width="171" height="32" class="gu_r1">납부기한</td>
										<td width="236" height="32" class="gu_r1">입찰기간</td>
										<td width="111" class="gu_r1">개찰일시</td>
										<td width="110" height="32">최저입찰가</td>
									</tr>

									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1" colspan="2"></td>
										<td height="1"></td>
									</tr>
									<tr bgcolor="#ffffff" align="center">
										<td height="30" class="gu_r1">0001&nbsp;</td>
										<td class="bor_r1">001/002&nbsp;</td>
										<!-- td class="bor_r1">2016.09.01&nbsp;</td -->
										<td class="bor_r1">일시불&nbsp;</td>
										<td class="bor_r1">계약체결동시 납부&nbsp;</td>
										<td class="bor_r1">2016.09.01 17:00 ~ 2016.09.08
											16:00&nbsp;</td>
										<td class="bor_r1">2016.09.09 10:00&nbsp;</td>
										<td class="do_orange">9,800,000원</td>
									</tr>

								</table></td>
						</tr>
					</table></td>
			</tr>

			<script>
				document.getElementById('bNo').innerHTML = '0001';
			</script>

			<!--  
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="28"><table width="960" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td class="gu_black_b1"><img src="http://image.bobaedream.co.kr/images/icon/bullet1.gif"> 사고이력정보 무료서비스</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><iframe src="http://test.bobaedream.co.kr/sian/03/caraccidentinfo.html" frameborder="0" width="100%" height="470" marginwidth="0" marginheight="0" scrolling="auto" style="border:1 solid #d2d2d2"></iframe></td>
  </tr>
  <tr>
    <td height="25"><table width="66%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="49%"><span class="do_gray_s3">* 사고이력조회 내용을 한번에 확인하려면 버튼을 클릭하세요.</span></td>
        <td width="51%"><span class="text_31"><img src="http://image.bobaedream.co.kr/usedcar/btn/detail_bt_accidlist.gif"  align="absmiddle" style="cursor:pointer"></span></td>
      </tr>
    </table></td>
  </tr>
-->
			<tr>
				<td height="18">&nbsp;</td>
			</tr>
			<tr>
				<td height="28">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="100" class="txt_black bo"><img alt=""
								src="http://image.bobaedream.co.kr/images/icon/bullet1.gif"><a
								name="a07"></a> <strong>사고이력조회</strong></td>
							<td class="text_28">(해당 차량의 사고이력, 소유자변경, 침수 및 도난, 보험처리 내역을
								확인할 수 있습니다.)&nbsp; <a
								href="http://www.carhistory.or.kr/main/main.asp?realm=bobae"
								target="_blank"><img alt="사고이력조회하기"
									src="http://image.bobaedream.co.kr/usedcar/btn/performance_all.gif"
									style="vertical-align: bottom; margin-bottom: 2px"></a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td style="width: 960px; height: 100px; border: 1 solid #d2d2d2;"
					align="center" valign="middle"><img alt="사고이력조회비공개"
					src="http://image.bobaedream.co.kr/usedcar/etc/accident_no.jpg">
				</td>
			</tr>

			<tr>
				<td>&nbsp;</td>
			</tr>

			<tr>
				<td height="28"><table width="960" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td class="gu_black_b1"><img alt=""
								src="http://image.bobaedream.co.kr/images/icon/bullet1.gif">
								<a name="a08"></a>부가정보</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td height="9"><table width="960" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td height="32"
								background="http://image.bobaedream.co.kr/usedcar/etc/tab_back01.gif"><table
									border="0" cellspacing="0" cellpadding="0">
									<tr align="center">
										<td width="117" height="32"
											background="http://image.bobaedream.co.kr/usedcar/etc/tab_ov01.gif"
											class="gu_blue_b2" id=tab1 onclick="tab(1)"
											style="cursor: pointer">인근낙찰물건</td>
										<td width="4"></td>
										<td width="117" height="32"
											background="http://image.bobaedream.co.kr/usedcar/etc/tab_off01.gif"
											class="gu_blue_3" id=tab2 onclick="tab(2)"
											style="cursor: pointer">인근낙찰통계</td>
										<td width="18"></td>
										<td width="29" height="32" class="gu_blue_3">&nbsp;</td>
									</tr>
								</table></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td height="10"></td>
			</tr>
			<tr>
				<td height="28"><table width="960" border="0" cellspacing="1"
						cellpadding="0" bgcolor="#bebebe">
						<tr bgcolor="#FFFFFF">
							<td><div id="divs1"></div>
								<div id="divs2"></div></td>
						</tr>
					</table></td>
			</tr>



			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td height="28"><table width="960" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td class="gu_black_b1"><img alt=""
								src="http://image.bobaedream.co.kr/images/icon/bullet1.gif">
								공매정보참고사항</td>
						</tr>
					</table></td>
			</tr>


			<tr>
				<td height="28"><table width="960" border="0" cellspacing="1"
						cellpadding="0" bgcolor="#bebebe">
						<tr bgcolor="#FFFFFF">
							<td height="80" style="line-height: 160%"><p class="p_20">
									- 제공된 정보가 실제 매각물건의 정보와 일치하지 않거나 정보의 제공 이후 중요한 변동사항이 생길 수 있습니다.<br>
									- 물건의 내용은 온비드, 입찰 집행기관 등에서 반드시 재확인 하시기 바랍니다.<br> <span
										class="do_red">* 본 정보와 관련하여 발생하는 모든 문제에 대해 어떠한 책임도 지지
										않습니다.</span>
								</p></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>


		</table>
		<table width="960" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td><table width="960" border="0" cellspacing="1"
						cellpadding="0" bgcolor="#bebebe">
						<tr bgcolor="#f3f7fa">
							<td height="30" class="p_10"><strong>물건관리번호 :
									2016-0700-010571 / 물건상태 : 입찰중</strong></td>
						</tr>
						<tr bgcolor="#ffffff">
							<td height="123"><table width="%" border="0" align="center"
									cellpadding="0" cellspacing="0">
									<tr>
										<td width="121"><table width="100%" border="0"
												cellspacing="1" cellpadding="0" bgcolor="#cacaca">
												<tr>
													<td><img alt="사진1"
														src="http://file4.bobaedream.co.kr/public_sale_pic/2016/07/25/1469423023_1_s1.jpg"
														width="121" height="82" onclick="viewPop(1)"
														style='cursor: pointer'></td>
												</tr>
											</table></td>
										<td width="13">&nbsp;</td>
										<td width="121"><table width="100%" border="0"
												cellspacing="1" cellpadding="0" bgcolor="#cacaca">
												<tr>
													<td><img alt="사진2"
														src="http://file4.bobaedream.co.kr/public_sale_pic/2016/07/25/1469423023_2_s1.jpg"
														width="121" height="82" onclick="viewPop(2)"
														style='cursor: pointer'></td>
												</tr>
											</table></td>
										<td width="13">&nbsp;</td>
										<td width="121"><table width="100%" border="0"
												cellspacing="1" cellpadding="0" bgcolor="#cacaca">
												<tr>
													<td><img alt="사진3"
														src="http://file4.bobaedream.co.kr/public_sale_pic/2016/07/25/1469423023_3_s1.jpg"
														width="121" height="82" onclick="viewPop(3)"
														style='cursor: pointer'></td>
												</tr>
											</table></td>
										<td width="13">&nbsp;</td>
										<td width="121"><table width="100%" border="0"
												cellspacing="1" cellpadding="0" bgcolor="#cacaca">
												<tr>
													<td><img alt="사진4"
														src="http://file4.bobaedream.co.kr/public_sale_pic/2016/07/25/1469423023_4_s1.jpg"
														width="121" height="82" onclick="viewPop(4)"
														style='cursor: pointer'></td>
												</tr>
											</table></td>
										<td width="13">&nbsp;</td>
										<td width="121"><table width="100%" border="0"
												cellspacing="1" cellpadding="0" bgcolor="#cacaca">
												<tr>
													<td><img alt="사진5"
														src="http://file4.bobaedream.co.kr/public_sale_pic/2016/07/25/1469423023_5_s1.jpg"
														width="121" height="82" onclick="viewPop(5)"
														style='cursor: pointer'></td>
												</tr>
											</table></td>
										<td width="13">&nbsp;</td>
										<td width="121"><table width="100%" border="0"
												cellspacing="1" cellpadding="0" bgcolor="#cacaca">
												<tr>
													<td><img alt="사진6"
														src="http://image.bobaedream.co.kr/images/acution/noimg_01.gif"
														width="121" height="82"></td>
												</tr>
											</table></td>
										<td width="17">&nbsp;</td>
										<td width="121"><table width="100%" border="0"
												cellspacing="1" cellpadding="0" bgcolor="#cacaca">
												<tr>
													<td><img alt="사진7"
														src="http://image.bobaedream.co.kr/images/acution/noimg_01.gif"
														width="121" height="82"></td>
												</tr>
											</table></td>
									</tr>
									<tr align="center">
										<td height="21">사진1</td>
										<td width="13">&nbsp;</td>
										<td>사진2</td>
										<td width="13">&nbsp;</td>
										<td>사진3</td>
										<td width="13">&nbsp;</td>
										<td>사진4</td>
										<td width="13">&nbsp;</td>
										<td>사진5</td>
										<td width="13">&nbsp;</td>
										<td>사진6</td>
										<td width="17">&nbsp;</td>
										<td>사진7</td>
									</tr>
								</table></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><table width="932" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td width="932" height="28" class="gu_black_b1"><img alt=""
								src="http://image.bobaedream.co.kr/images/icon/bullet1.gif"
								alt=""> 물건기본정보</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><table width="960" border="0" cellspacing="1"
						cellpadding="0" bgcolor="#bebebe" class="ingTbl">
						<tr bgcolor="#FFFFFF">
							<td width="958"><table width="958" border="0"
									cellpadding="0" cellspacing="0">
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">매각물건</td>
										<td colspan="5" bgcolor="#ffffff" class="p_10"><table
												width="99%" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="756" class="gu_black_b1"><strong>자동차
															&gt; 버스/기타 &gt; 기아 기타 SD Ⅱ 38-5R-B </strong></td>
													<td width="77"><img alt="공고정보보기"
														src="http://image.bobaedream.co.kr/images/acution/short_btn01.gif"
														width="70" height="16" style="cursor: pointer"
														onclick="viewPop2(22218)"></td>
												</tr>
											</table></td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td width="210" height="1"></td>
										<td height="1"></td>
										<td width="220" height="1"></td>
										<td width="100" height="1"></td>
										<td width="213" height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">소재지</td>
										<td colspan="5" bgcolor="#ffffff" class="p_10"><table
												width="99%" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="756" class="gu_black_b1"><strong>대구광역시
															중구 동인동1가 2-1 대구광역시의회 </strong></td>
													<td width="77"><img alt="물건위치보기"
														src="http://image.bobaedream.co.kr/images/acution/short_btn02.gif"
														style="cursor: pointer;"
														onClick="fNewWin('locate_pop_public.php?idx=22218', '667', '739');"></td>
												</tr>
											</table></td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>

									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">보관장소</td>
										<td colspan="5" bgcolor="#ffffff" class="p_10">대구광역시 북구
											조야로2길 209 대구환경공단 신천사업소 주차장</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>

									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">기관/재산종류</td>
										<td colspan="5" bgcolor="#ffffff" style="padding-left: 10px;"><table
												width="99%" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="756">이용기관물건 / 불용품</td>
													<td width="77">
														<!--<img src="http://image.bobaedream.co.kr/images/auction_list02_07_00_15.gif" style="cursor:pointer" onClick="fNewWin('court_pop.php?idx=', '747', '296',1);">-->
													</td>
												</tr>
											</table></td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">집행기관</td>
										<td colspan="5" bgcolor="#ffffff" class="p_10_gu">대구광역시
											의회사무처 의정담당관실 (김현희) / 전화번호 : 053-803-5143</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">입찰기간</td>
										<td colspan="5" bgcolor="#ffffff" class="p_10_gu">2016년
											09월 01일 17:00 ~ 2016년 09월 08일 16:00 (개찰일시 : 2016년 09월 09일
											10:00)</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">공매관련자료</td>
										<td colspan="5" bgcolor="#ffffff" class="p_10"><span
											class="gu_blue_4" style="cursor: pointer"
											onclick="viewPop2(22218)">공고정보보기</span><span
											class="do_gray_s4">ㅣ</span><span class="gu_blue_4"
											style="cursor: pointer;"
											onClick="fNewWin('locate_pop_public.php?idx=22218', '667', '739');">물건위치보기</span><span
											class="do_gray_s4">ㅣ</span><span class="gu_blue_4"
											style="cursor: pointer;"
											onClick="fNewWin('/mycar/popup/popMarketPrice.php?maker_no=3&model_no=613&method=수동&buy_year=2005', '900', '670');">중고차시세</span><span
											class="do_gray_s4">ㅣ</span><span class="gu_blue_4"
											style="cursor: pointer;" onClick="samecar_pop();">동급중고차매물</span><span
											class="do_gray_s4">ㅣ</span><a href="#a07"><span
												class="gu_blue_4">사고이력조회</span></a><span class="do_gray_s4">ㅣ</span><a
											href="#a08"><span class="gu_blue_4" onclick="tab(1)"
												style="cursor: pointer">인근낙찰물건</span></a><span
											class="do_gray_s4">ㅣ</span></span><a href="#a08"><span
												class="gu_blue_4" onclick="tab(2)" style="cursor: pointer">인근낙찰통계</span></a>
										</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>

									<tr>
										<td width="112" height="29" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">물건관리번호</td>
										<td width="210" bgcolor="#ffffff" class="gu_b_r1">2016-0700-010571&nbsp;</td>
										<td width="103" align="left" bgcolor="#eeeeee" class="gu_b_r1">
											입찰번호</td>
										<td width="220" bgcolor="#ffffff" class="gu_b_r1">
											<!-- 0001--> <span id='bNo'></span>&nbsp;
										</td>
										<td width="100" bgcolor="#eeeeee" class="gu_b_r1">물건상태</td>
										<td width="213" bgcolor="#ffffff" class="p_10_gu">입찰중&nbsp;(유찰<span
											class="do_red_b1">4</span>회)
										</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr>
										<!-- td width="112" height="32" align="left" bgcolor="#eeeeee" class="gu_b_r1" >취득금액</td>
            <td width="210"  align="right" bgcolor="#ffffff" class="gu_b_r1" ><span class="p_r10_gu">0 원</span></td>
            <td width="103" align="left" bgcolor="#eeeeee" class="gu_b_r1" >취득일자</td>
            <td width="220" bgcolor="#ffffff" class="gu_b_r1">&nbsp;</td -->
										<td width="112" height="32" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">입찰시작</td>
										<td width="213" bgcolor="#ffffff" class="p_10_gu">2016.09.01
											17:00:00&nbsp;</td>
										<td width="100" class="gu_b_r1" bgcolor="#eeeeee">입찰마감</td>
										<td width="213" bgcolor="#ffffff" class="p_10_gu">2016.09.08
											16:00:00&nbsp;</td>
										<td width="100" class="gu_b_r1" bgcolor="#eeeeee">개찰일자</td>
										<td width="213" bgcolor="#ffffff" class="p_10_gu">
											2016.09.09 10:00:00&nbsp;</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">감정평가액</td>
										<td width="210" align="right" bgcolor="#ffffff"
											class="gu_b_r1"><strong class="p_r10_gu">14,000,000
												원</strong></td>
										<td width="103" align="left" bgcolor="#eeeeee" class="gu_b_r1">감정평가일자</td>
										<td width="220" bgcolor="#ffffff" class="gu_b_r1" colspan="4">2016.07.13&nbsp;</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">최저입찰가</td>
										<td width="210" align="right" bgcolor="#ffffff"
											class="gu_b_r1"><strong class="p_r10_gu_orange">9,800,000
												원</strong></td>
										<td width="103" align="left" bgcolor="#eeeeee" class="gu_b_r1">이전책임</td>
										<td width="220" bgcolor="#ffffff" class="gu_b_r1">매수자
											&nbsp;</td>
									</tr>

								</table></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>


			<tr>
				<td height="28"><table width="960" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td class="gu_black_b1"><img alt=""
								src="http://image.bobaedream.co.kr/images/icon/bullet1.gif">
								차량상세정보</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><table width="960" border="0" cellspacing="1"
						cellpadding="0" bgcolor="#bebebe" class="ingTbl">
						<tr bgcolor="#FFFFFF">
							<td width="958"><table width="958" border="0"
									cellpadding="0" cellspacing="0">
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">차량명</td>
										<td colspan="5" bgcolor="#ffffff" class="p_10_gu"><strong>기아
												기타 SD Ⅱ 38-5R-B</strong></td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td width="211" height="1"></td>
										<td width="103" height="1"></td>
										<td width="220" height="1"></td>
										<td width="99" height="1"></td>
										<td width="213" height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">차량번호</td>
										<td width="211" bgcolor="#ffffff" class="gu_b_r1">73러1597&nbsp;</td>
										<td width="103" align="left" bgcolor="#eeeeee" class="gu_b_r1">
											연식</td>
										<td width="220" bgcolor="#ffffff" class="gu_b_r1">2005년
											&nbsp;</td>
										<td width="99" bgcolor="#eeeeee" class="gu_b_r1">연료</td>
										<td width="213" bgcolor="#ffffff" class="p_10_gu">디젤&nbsp;</td>
									</tr>
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">기어</td>
										<td bgcolor="#ffffff" class="gu_b_r1">수동&nbsp;</td>
										<td align="left" bgcolor="#eeeeee" class="gu_b_r1">주행거리</td>
										<td bgcolor="#ffffff" class="gu_b_r1">86,578km&nbsp;</td>
										<td bgcolor="#eeeeee" class="gu_b_r1">배기량</td>
										<td bgcolor="#ffffff" class="gu_b_r1">12,344cc&nbsp;</td>
									</tr>
									<!-- tr bgcolor="#d4d4d4">
            <td  height="1"></td>
            <td height="1"></td>
            <td height="1"></td>
            <td height="1" ></td>
            <td height="1"></td>
            <td height="1"></td>
          </tr>
          <tr>
            <td width="112" height="30"  align="left" bgcolor="#eeeeee" class="gu_b_r1" >배기량</td>
            <td bgcolor="#ffffff" class="gu_b_r1">12,344cc&nbsp;</td>
            <td align="left"  bgcolor="#eeeeee" class="gu_b_r1" > 옵션</td>
            <td bgcolor="#ffffff" class="gu_b_r1" >-&nbsp;</td>
            <td width="99" bgcolor="#eeeeee" class="gu_b_r1" >상태</td>
            <td bgcolor="#ffffff" class="p_10_gu" >-&nbsp;</td>
          </tr -->
									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr>
										<td width="112" height="30" align="left" bgcolor="#eeeeee"
											class="gu_b_r1">세부내역</td>
										<td colspan="5" bgcolor="#ffffff" class="gu_b_r1">차량내부에
											약간의 누수현상 및 차량외부 표면에 일부 부식현상있습니다.<br /> 그 밖 현상 및 관리상태는
											보통입니다.&nbsp;
										</td>
									</tr>
								</table></td>
						</tr>
					</table></td>
			</tr>

			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td height="28"><table width="960" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td class="gu_black_b1"><img alt=""
								src="http://image.bobaedream.co.kr/images/icon/bullet1.gif">
								입찰진행내용</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><table width="960" border="0" cellspacing="1"
						cellpadding="0" bgcolor="#bebebe">
						<tr bgcolor="#FFFFFF">
							<td><table width="958" border="0" cellpadding="0"
									cellspacing="0">
									<tr bgcolor="#eeeeee" align="center">
										<td width="116" height="30" class="gu_r1">입찰번호</td>
										<td width="89" height="32" class="gu_r1">처분방식</td>
										<!-- td width="128" height="32" class="gu_r1" >물건관리번호</td -->
										<td width="146" height="32" class="gu_r1">개찰일시</td>
										<td width="140" height="32" class="gu_r1">최저입찰가</td>
										<td width="140" class="gu_r1">낙찰가</td>
										<td width="81" class="gu_r1">낙찰율</td>
										<td width="118" height="32">입찰결과</td>
									</tr>

									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<!-- td height="1"></td -->
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr bgcolor="#ffffff" align="center">
										<td height="30" class="gu_r1">0001&nbsp;</td>
										<td class="bor_r1">매각&nbsp;</td>
										<!-- td class="bor_r1">2016-0700-010571&nbsp;</td -->
										<td class="bor_r1"><span class="gu_black">2016-08-03
												10:00:00</span>&nbsp;</td>
										<td class="bor_r1">14,000,000원&nbsp;</td>
										<td class="bor_r1">&nbsp;</td>
										<td class="bor_r1">&nbsp;</td>
										<td>유찰&nbsp;</td>
									</tr>

									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<!-- td height="1"></td -->
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr bgcolor="#ffffff" align="center">
										<td height="30" class="gu_r1">0001&nbsp;</td>
										<td class="bor_r1">매각&nbsp;</td>
										<!-- td class="bor_r1">2016-0700-010571&nbsp;</td -->
										<td class="bor_r1"><span class="gu_black">2016-08-11
												10:00:00</span>&nbsp;</td>
										<td class="bor_r1">14,000,000원&nbsp;</td>
										<td class="bor_r1">&nbsp;</td>
										<td class="bor_r1">&nbsp;</td>
										<td>유찰&nbsp;</td>
									</tr>

									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<!-- td height="1"></td -->
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr bgcolor="#ffffff" align="center">
										<td height="30" class="gu_r1">0001&nbsp;</td>
										<td class="bor_r1">매각&nbsp;</td>
										<!-- td class="bor_r1">2016-0700-010571&nbsp;</td -->
										<td class="bor_r1"><span class="gu_black">2016-08-19
												10:00:00</span>&nbsp;</td>
										<td class="bor_r1">12,600,000원&nbsp;</td>
										<td class="bor_r1">&nbsp;</td>
										<td class="bor_r1">&nbsp;</td>
										<td>유찰&nbsp;</td>
									</tr>

									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<!-- td height="1"></td -->
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
									</tr>
									<tr bgcolor="#ffffff" align="center">
										<td height="30" class="gu_r1">0001&nbsp;</td>
										<td class="bor_r1">매각&nbsp;</td>
										<!-- td class="bor_r1">2016-0700-010571&nbsp;</td -->
										<td class="bor_r1"><span class="gu_black">2016-08-31
												10:00:00</span>&nbsp;</td>
										<td class="bor_r1">11,200,000원&nbsp;</td>
										<td class="bor_r1">&nbsp;</td>
										<td class="bor_r1">&nbsp;</td>
										<td>유찰&nbsp;</td>
									</tr>
								</table></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td height="28" colspan="2"><table width="960" border="0"
						cellspacing="0" cellpadding="0">
						<tr>
							<td class="gu_black_b1"><img alt=""
								src="http://image.bobaedream.co.kr/images/icon/bullet1.gif">
								입찰정보</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td colspan="2"><table width="960" border="0" cellspacing="1"
						cellpadding="0" bgcolor="#bebebe">
						<tr bgcolor="#FFFFFF">
							<td><table width="958" border="0" cellpadding="0"
									cellspacing="0">
									<tr bgcolor="#eeeeee" align="center">
										<td width="74" height="30" class="gu_r1">입찰번호</td>
										<td width="85" height="32" class="gu_r1">회차/차수</td>
										<!-- td width="88" height="32" class="gu_r1" >공고일</td -->
										<td width="83" height="32" class="gu_r1">대금납부</td>
										<td width="171" height="32" class="gu_r1">납부기한</td>
										<td width="236" height="32" class="gu_r1">입찰기간</td>
										<td width="111" class="gu_r1">개찰일시</td>
										<td width="110" height="32">최저입찰가</td>
									</tr>

									<tr bgcolor="#d4d4d4">
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1"></td>
										<td height="1" colspan="2"></td>
										<td height="1"></td>
									</tr>
									<tr bgcolor="#ffffff" align="center">
										<td height="30" class="gu_r1">0001&nbsp;</td>
										<td class="bor_r1">001/002&nbsp;</td>
										<!-- td class="bor_r1">2016.09.01&nbsp;</td -->
										<td class="bor_r1">일시불&nbsp;</td>
										<td class="bor_r1">계약체결동시 납부&nbsp;</td>
										<td class="bor_r1">2016.09.01 17:00 ~ 2016.09.08
											16:00&nbsp;</td>
										<td class="bor_r1">2016.09.09 10:00&nbsp;</td>
										<td class="do_orange">9,800,000원</td>
									</tr>

								</table></td>
						</tr>
					</table></td>
			</tr>

			<script>
				document.getElementById('bNo').innerHTML = '0001';
			</script>

			<!--  
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="28"><table width="960" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td class="gu_black_b1"><img src="http://image.bobaedream.co.kr/images/icon/bullet1.gif"> 사고이력정보 무료서비스</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><iframe src="http://test.bobaedream.co.kr/sian/03/caraccidentinfo.html" frameborder="0" width="100%" height="470" marginwidth="0" marginheight="0" scrolling="auto" style="border:1 solid #d2d2d2"></iframe></td>
  </tr>
  <tr>
    <td height="25"><table width="66%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="49%"><span class="do_gray_s3">* 사고이력조회 내용을 한번에 확인하려면 버튼을 클릭하세요.</span></td>
        <td width="51%"><span class="text_31"><img src="http://image.bobaedream.co.kr/usedcar/btn/detail_bt_accidlist.gif"  align="absmiddle" style="cursor:pointer"></span></td>
      </tr>
    </table></td>
  </tr>
-->
			<tr>
				<td height="18">&nbsp;</td>
			</tr>
			<tr>
				<td height="28">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="100" class="txt_black bo"><img alt=""
								src="http://image.bobaedream.co.kr/images/icon/bullet1.gif"><a
								name="a07"></a> <strong>사고이력조회</strong></td>
							<td class="text_28">(해당 차량의 사고이력, 소유자변경, 침수 및 도난, 보험처리 내역을
								확인할 수 있습니다.)&nbsp; <a
								href="http://www.carhistory.or.kr/main/main.asp?realm=bobae"
								target="_blank"><img alt="사고이력조회하기"
									src="http://image.bobaedream.co.kr/usedcar/btn/performance_all.gif"
									style="vertical-align: bottom; margin-bottom: 2px"></a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td style="width: 960px; height: 100px; border: 1 solid #d2d2d2;"
					align="center" valign="middle"><img alt="사고이력조회비공개"
					src="http://image.bobaedream.co.kr/usedcar/etc/accident_no.jpg">
				</td>
			</tr>

			<tr>
				<td>&nbsp;</td>
			</tr>

			<tr>
				<td height="28"><table width="960" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td class="gu_black_b1"><img alt=""
								src="http://image.bobaedream.co.kr/images/icon/bullet1.gif">
								<a name="a08"></a>부가정보</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td height="9"><table width="960" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td height="32"
								background="http://image.bobaedream.co.kr/usedcar/etc/tab_back01.gif"><table
									border="0" cellspacing="0" cellpadding="0">
									<tr align="center">
										<td width="117" height="32"
											background="http://image.bobaedream.co.kr/usedcar/etc/tab_ov01.gif"
											class="gu_blue_b2" id=tab1 onclick="tab(1)"
											style="cursor: pointer">인근낙찰물건</td>
										<td width="4"></td>
										<td width="117" height="32"
											background="http://image.bobaedream.co.kr/usedcar/etc/tab_off01.gif"
											class="gu_blue_3" id=tab2 onclick="tab(2)"
											style="cursor: pointer">인근낙찰통계</td>
										<td width="18"></td>
										<td width="29" height="32" class="gu_blue_3">&nbsp;</td>
									</tr>
								</table></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td height="10"></td>
			</tr>
			<tr>
				<td height="28"><table width="960" border="0" cellspacing="1"
						cellpadding="0" bgcolor="#bebebe">
						<tr bgcolor="#FFFFFF">
							<td><div id="divs1"></div>
								<div id="divs2"></div></td>
						</tr>
					</table></td>
			</tr>



			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td height="28"><table width="960" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td class="gu_black_b1"><img alt=""
								src="http://image.bobaedream.co.kr/images/icon/bullet1.gif">
								공매정보참고사항</td>
						</tr>
					</table></td>
			</tr>


			<tr>
				<td height="28"><table width="960" border="0" cellspacing="1"
						cellpadding="0" bgcolor="#bebebe">
						<tr bgcolor="#FFFFFF">
							<td height="80" style="line-height: 160%"><p class="p_20">
									- 제공된 정보가 실제 매각물건의 정보와 일치하지 않거나 정보의 제공 이후 중요한 변동사항이 생길 수 있습니다.<br>
									- 물건의 내용은 온비드, 입찰 집행기관 등에서 반드시 재확인 하시기 바랍니다.<br> <span
										class="do_red">* 본 정보와 관련하여 발생하는 모든 문제에 대해 어떠한 책임도 지지
										않습니다.</span>
								</p></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>


		</table>
	</form>
</body>
</html>