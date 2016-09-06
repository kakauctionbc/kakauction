<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>상세검색 게시판</title>	
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="robots" content="ALL">
<meta name="robots" content="index,follow">
<!--link rel="stylesheet" type="text/css" href="http://image.bobaedream.co.kr/css/default.css" /  -->

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/searchSlide.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/carList.css"/>

<link rel="SHORTCUT ICON" HREF="http://image.bobaedream.co.kr/bobae.ico">
<script type="text/javascript" src="http://image.bobaedream.co.kr/renew/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://image.bobaedream.co.kr/renew/js/mycar_common.js"></script>
<!-- script type="text/javascript" src="http://image.bobaedream.co.kr/mycar/common/js/mycar_list_search.js"></script -->
<script type="text/javascript" src="/mycar/common/js/mycar_list_search_new.js?ver=2"></script>
<%@ include file="../inc/top.jsp"%>
<script language="javascript">  
	function openNav() {
		document.getElementById("mySidenav").style.width = "250px";
		document.getElementById("main").style.marginLeft = "250px";
	}

	function closeNav() {
		document.getElementById("mySidenav").style.width = "0";
		document.getElementById("main").style.marginLeft = "0";
	}
</script>

<!--contents-->
<div id="wrap">
	<div class="Used_car_section renew">
		<div id="body">
			<div id="mySidenav" class="sidenav">
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
				<a href="#">About</a> <a href="#">Services</a> <a href="#">Clients</a>
				<a href="#">Contact</a>
			</div>

			<div id="main">
				<span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;open</span>
			</div>
		</div>

		<!--특종차량-->
		<div class="Usedcar middlearea">
			<!--타이틀부분-->
			<div class="specialtitle">
				<h1>
					<img
						src="http://image.bobaedream.co.kr/image/usedcar/btn_cyberspecial.gif"
						alt="사이버매장 특종차량" class="fl" />
				</h1>
			</div>
			<div class="morearea">
				<a href="#" class="more">더보기</a>
			</div>
			<!--//타이틀부분-->
			<div class="special">
				<ul>
					<li class="first">
						<a href="">
							<div class="imgbox">
								<img src="http://file4.bobaedream.co.kr/direct/special/2016/09/03/1472883523_c.jpg"
										alt="자동차사진" />
							</div><span class="txt">기아 뉴 쏘렌토R 2013년형</span></a>
					</li>
					<li class="">
						<a href="">
							<div class="imgbox">
								<img src="http://file4.bobaedream.co.kr/direct/special/2016/09/03/1472883458_c.jpg"
											alt="자동차사진" />
							</div><span class="txt">쉐보레(국산) 캡티바 2012년식</span></a>
					</li>
					<li class="">
						<a href="">
							<div class="imgbox">
								<img src="http://file4.bobaedream.co.kr/direct/special/2016/09/03/1472883410_c.jpg"
									alt="자동차사진" />
							</div><span class="txt">현대 제네시스 2012년형</span></a>
					</li>
					<li class="">
						<a href="">
							<div class="imgbox">
								<img src="http://file4.bobaedream.co.kr/direct/special/2016/09/05/1473030886_c.jpg"
									alt="자동차사진" />
							</div><span class="txt">현대 제네시스 쿠페 2010년형</span></a>
					</li>
					<li class="last">
						<a href="">
							<div class="imgbox">
								<img src="http://file4.bobaedream.co.kr/direct/special/2016/09/05/1473030937_c.jpg"
									alt="자동차사진" />
							</div> <span class="txt">현대 아반떼MD 2011년형</span></a>
					</li>
				</ul>
			</div>
		</div>
		
		<div class="list_mycar_top">
			<span class="fl">
				<ul>
					<li><a href="javascript:order_toggle('S11')" class="on up">등록순</a></li>
					<li><a href="javascript:order_toggle('S22')" class="off">연식순</a></li>
					<li><a href="javascript:order_toggle('S41')" class="off">가격순</a></li>
					<li><a href="javascript:order_toggle('S51')" class="off">주행거리순</a></li>
					<li class="last"><a href="javascript:zzimSel()"
						id="icon_star" class="">찜한차량</a></li>
				</ul>
			</span> 
			<span class="fr">
				<ul>
					<li><a href="/mycar/mycar.php" class="link"><img
							src="http://image.bobaedream.co.kr/image/direct/btn_4.gif"
							alt="차량등록" /></a></li>
					<li><a href="/mycar/manage/mycar_car_manage_new.php?gubun=K"
						class="link"><img
							src="http://image.bobaedream.co.kr/image/direct/btn_3.gif"
							alt="매물관리" /></a></li>
					<li class="list1"><a
						href="javascript:albumSel('L', '/mycar/mycar_list.php?gubun=K&page=1')"
						class="on">직거래리스트</a></li>
					<li class="list2"><a
						href="javascript:albumSel('A', '/mycar/mycar_list.php?gubun=K&page=1')"
						class="off">직거래 앨범형리스트</a></li>
					<li class="last"><select title="정렬갯수" name="view_size"
						onchange="view_size_change(this.value);"
						style="width: 68px; height: 21px;">
							<option value="20" selected>20개씩</option>
							<option value="30">30개씩</option>
							<option value="40">40개씩</option>
					</select></li>
				</ul>
			</span>
		</div>

		<div class="usedcar_select">

			<!-- div class="tabletop_carlist carlist_close"  -->
			<ul>
				<li><a style="cursor: pointer;" class="on"
					onclick="search_car_bold('')"><span>전체</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M1_s1')">경차</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M1_s2')">소형</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M1_s3')">준중형</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M1_s4')">중형</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M1_s5')">대형</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M1_s6')">스포츠카</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M1_s7')">SUV</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M1_s8')">RV</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M1_s10')">승합차</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M1_s9')">밴</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M1_s11')">화물차</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M1_s12')">버스</a></li>
				<li><a style="cursor: pointer; display:" class="more">더보기</a>
					<a style="cursor: pointer; display: none;" id="closebt"
					title="닫기 버튼">닫기</a></li>
			</ul>
			<ul class="sub">
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M2_s10')">리무진</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M2_s3')">웨건/해치백</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M2_s2')">쿠페</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M2_s4')">컨버터블</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M2_s7')">슈퍼카</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M2_s9')">픽업</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M2_s12')">캠핑카</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M2_s6')">올드카</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M2_s8')">희귀차</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M2_s1')">세단</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M2_s5')">튜닝카</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M2_s11')">박스카</a></li>
				<li><a style="cursor: pointer;" class=""
					onclick="search_car_bold('M2_s13')">기타</a></li>
			</ul>
		</div>


		<div class="con1" style="display: block;">
			<table cellpadding="0" cellspacing="0" class="mycarlist"
				summary="국산차 리스트 리스트형">
				<caption>국산차 리스트</caption>
				<colgroup>
					<col width="34px" />
					<col width="116px" />
					<col width="*" />
					<col width="71px" />
					<col width="68px" />
					<col width="90px" />
					<col width="143px" />
				</colgroup>
				
				<tbody>
					<tr itemscope itemtype="http://schema.org/Article">
						<td class="input"><input type="checkbox"
							id="checklist_1497871" value="1497871" /></td>
						<td class="thumb"><a
							href="mycar_view.php?no=1497871&gubun=K"\> <img
								src="http://file4.bobaedream.co.kr/direct/2016/01/21/Bg13471453371483_1_s1.jpg"><span
								class="ico_cnt">+13</span>
						</a></td>

						</td>
						<td class="information">
							<p>
								<a href="mycar_view.php?no=1497871&gubun=K" class=""
									itemprop="name">쌍용 <span class='bold'>코란도 C 시크 4WD</span>
									비트
								</a> <a href="mycar_view.php?no=1497871&gubun=K" target="_blank"><img
									src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
							</p>
							<p>
								<span class="option">검정색</span> <span class="option">수동</span>
								<span class="option">디젤</span> <span class="option last"><a
									href="javascript:pop_accident_renew('25루5150', 'mycar', '1497871');">사고이력</a></span>
							</p>

							<p class="iconarea"></p>
						</td>
								<td>12/01</td>
								<td>97,000 km</td>

								<td class="centeralign"><span class="redbold02">980</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 문창순 <a
											href="javascript:info_toggle('0')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 부산 연제구<br />
										<span class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="color: #FF0000">2,917<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1497871" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://file4.bobaedream.co.kr/dealer/2011/01/26/Bg1295969837_3.jpg"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>문창순(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-2570-0387</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>mcs648888@yahoo.co.kr</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>부산 연제구 연산5동 1123번지<span class="popuplink"><a
																			href="javascript:size_maps_myinfo('1497871','mycar','mcs6488','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">11</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=mcs6488&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1497871','010-2570-0387','부산')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWxvcGhyMW9waHFmb3Boc2dvcGhzaW9waHNlb3Boc2U%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1604682" value="1604682" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1604682&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/09/01/Bg17931472700488_1_s1.jpg"><span
										class="ico_cnt">+14</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1604682&gubun=K" class=""
											itemprop="name">GM대우 <span class='bold'>All New
												마티즈 SE</span> 기본형
										</a> <a href="mycar_view.php?no=1604682&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">은색</span> <span class="option">자동</span>
										<span class="option">가솔린</span> <span class="option last"><a
											href="javascript:pop_accident_renew('47나4935', 'mycar', '1604682');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>06/04</td>
								<td>102,000 km</td>

								<td class="centeralign"><span class="redbold02">150</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 문창순 <a
											href="javascript:info_toggle('1')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 부산 연제구<br />
										<span class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="">287<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1604682" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://file4.bobaedream.co.kr/dealer/2011/01/26/Bg1295969837_3.jpg"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>문창순(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-2570-0387</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>mcs648888@yahoo.co.kr</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>부산 연제구 연산5동 1123번지<span class="popuplink"><a
																			href="javascript:size_maps_myinfo('1604682','mycar','mcs6488','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">11</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=mcs6488&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1604682','010-2570-0387','부산')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWxvcGhyMW9waHFmb3Boc2dvcGhzaW9waHNlb3Boc2U%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1581641" value="1581641" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1581641&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/07/14/Bg14601468471736_1_s1.jpg"><span
										class="ico_cnt">+9</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1581641&gubun=K" class=""
											itemprop="name">GM대우 <span class='bold'>뉴 라보 롱카고</span>
											슈퍼
										</a> <a href="mycar_view.php?no=1581641&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">흰색</span> <span class="option">수동</span>
										<span class="option">LPG</span> <span class="option last"><a
											href="javascript:pop_accident_renew('88고1583', 'mycar', '1581641');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>09/12<br>
								<font>(10년형)</font></td>
								<td>67,267 km</td>

								<td class="centeralign"><span class="redbold02">370</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 문창순 <a
											href="javascript:info_toggle('2')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 부산 연제구<br />
										<span class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="color: #FF0000">1,810<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1581641" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://file4.bobaedream.co.kr/dealer/2011/01/26/Bg1295969837_3.jpg"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>문창순(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-2570-0387</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>mcs648888@yahoo.co.kr</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>부산 연제구 연산5동 1123번지<span class="popuplink"><a
																			href="javascript:size_maps_myinfo('1581641','mycar','mcs6488','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">11</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=mcs6488&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1581641','010-2570-0387','부산')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWxvcGhyMW9waHFmb3Boc2dvcGhzaW9waHNlb3Boc2U%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1582675" value="1582675" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1582675&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/07/16/Bg17521468641183_1_s1.jpg"><span
										class="ico_cnt">+13</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1582675&gubun=K" class=""
											itemprop="name">현대 <span class='bold'>아이오닉 N</span>
										</a> <a href="mycar_view.php?no=1582675&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">흰색</span> <span class="option">자동</span>
										<span class="option">가솔린 하이브리드</span> <span
											class="option last"><a
											href="javascript:pop_accident_renew('59소0759', 'mycar', '1582675');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>16/04</td>
								<td>3,000 km</td>

								<td class="centeralign"><span class="redbold02">2,190</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 문창순 <a
											href="javascript:info_toggle('3')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 부산 연제구<br />
										<span class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="color: #FF0000">3,085<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1582675" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://file4.bobaedream.co.kr/dealer/2011/01/26/Bg1295969837_3.jpg"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>문창순(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-2570-0387</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>mcs648888@yahoo.co.kr</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>부산 연제구 연산5동 1123번지<span class="popuplink"><a
																			href="javascript:size_maps_myinfo('1582675','mycar','mcs6488','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">11</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=mcs6488&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1582675','010-2570-0387','부산')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWxvcGhyMW9waHFmb3Boc2dvcGhzaW9waHNlb3Boc2U%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1584312" value="1584312" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1584312&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/07/20/Bg14131468978558_1_s1.jpg"><span
										class="ico_cnt">+14</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1584312&gubun=K" class=""
											itemprop="name">쉐보레(국산) <span class='bold'>올란도 2.0
												LPI</span> LTZ 프리미엄
										</a> <a href="mycar_view.php?no=1584312&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">검정색</span> <span class="option">자동</span>
										<span class="option">LPG</span> <span class="option last"><a
											href="javascript:pop_accident_renew('53도5814', 'mycar', '1584312');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>11/10<br>
								<font>(12년형)</font></td>
								<td>92,000 km</td>

								<td class="centeralign"><span class="redbold02">1,299</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 문창순 <a
											href="javascript:info_toggle('4')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 부산 연제구<br />
										<span class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="color: #FF0000">2,170<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1584312" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://file4.bobaedream.co.kr/dealer/2011/01/26/Bg1295969837_3.jpg"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>문창순(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-2570-0387</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>mcs648888@yahoo.co.kr</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>부산 연제구 연산5동 1123번지<span class="popuplink"><a
																			href="javascript:size_maps_myinfo('1584312','mycar','mcs6488','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">11</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=mcs6488&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1584312','010-2570-0387','부산')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWxvcGhyMW9waHFmb3Boc2dvcGhzaW9waHNlb3Boc2U%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1587293" value="1587293" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1587293&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/07/26/Bg12981469507293_1_s1.jpg"><span
										class="ico_cnt">+14</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1587293&gubun=K" class=""
											itemprop="name">현대 <span class='bold'>더 뉴 아반떼 1.6
												VGT</span> 모던
										</a> <a href="mycar_view.php?no=1587293&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">흰색</span> <span class="option">자동</span>
										<span class="option">디젤</span> <span class="option last"><a
											href="javascript:pop_accident_renew('51소7260', 'mycar', '1587293');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>13/11<br>
								<font>(14년형)</font></td>
								<td>6,400 km</td>

								<td class="centeralign"><span class="redbold02">1,570</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 문창순 <a
											href="javascript:info_toggle('5')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 부산 연제구<br />
										<span class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="color: #FF0000">1,318<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1587293" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://file4.bobaedream.co.kr/dealer/2011/01/26/Bg1295969837_3.jpg"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>문창순(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-2570-0387</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>mcs648888@yahoo.co.kr</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>부산 연제구 연산5동 1123번지<span class="popuplink"><a
																			href="javascript:size_maps_myinfo('1587293','mycar','mcs6488','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">11</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=mcs6488&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1587293','010-2570-0387','부산')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWxvcGhyMW9waHFmb3Boc2dvcGhzaW9waHNlb3Boc2U%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1588081" value="1588081" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1588081&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/07/27/Bg13841469608795_1_s1.jpg"><span
										class="ico_cnt">+19</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1588081&gubun=K" class=""
											itemprop="name">현대 <span class='bold'>그랜져TG Q270</span>
											럭셔리
										</a> <a href="mycar_view.php?no=1588081&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">은색</span> <span class="option">자동</span>
										<span class="option">가솔린</span> <span class="option last"><a
											href="javascript:pop_accident_renew('69소9608', 'mycar', '1588081');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>07/04</td>
								<td>88,000 km</td>

								<td class="centeralign"><span class="redbold02">800</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 문창순 <a
											href="javascript:info_toggle('6')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 부산 연제구<br />
										<span class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="color: #FF0000">1,197<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1588081" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://file4.bobaedream.co.kr/dealer/2011/01/26/Bg1295969837_3.jpg"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>문창순(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-2570-0387</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>mcs648888@yahoo.co.kr</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>부산 연제구 연산5동 1123번지<span class="popuplink"><a
																			href="javascript:size_maps_myinfo('1588081','mycar','mcs6488','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">11</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=mcs6488&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1588081','010-2570-0387','부산')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWxvcGhyMW9waHFmb3Boc2dvcGhzaW9waHNlb3Boc2U%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1594461" value="1594461" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1594461&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/08/09/Bg14041470733042_1_s1.jpg"><span
										class="ico_cnt">+20</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1594461&gubun=K" class=""
											itemprop="name">GM대우 <span class='bold'>윈스톰 LT 7인승
												2WD</span> 익스트림
										</a> <a href="mycar_view.php?no=1594461&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">검정색</span> <span class="option">자동</span>
										<span class="option">디젤</span> <span class="option last"><a
											href="javascript:pop_accident_renew('30루1788', 'mycar', '1594461');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>10/08</td>
								<td>73,700 km</td>

								<td class="centeralign"><span class="redbold02">1,180</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 문창순 <a
											href="javascript:info_toggle('7')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 부산 연제구<br />
										<span class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="color: #FF0000">1,220<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1594461" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://file4.bobaedream.co.kr/dealer/2011/01/26/Bg1295969837_3.jpg"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>문창순(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-2570-0387</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>mcs648888@yahoo.co.kr</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>부산 연제구 연산5동 1123번지<span class="popuplink"><a
																			href="javascript:size_maps_myinfo('1594461','mycar','mcs6488','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">11</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=mcs6488&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1594461','010-2570-0387','부산')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWxvcGhyMW9waHFmb3Boc2dvcGhzaW9waHNlb3Boc2U%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1597439" value="1597439" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1597439&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/08/16/Bg17511471338681_1_s1.jpg"><span
										class="ico_cnt">+17</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1597439&gubun=K" class=""
											itemprop="name">기아 <span class='bold'>모닝 LX</span> 고급형
										</a> <a href="mycar_view.php?no=1597439&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">은하늘색</span> <span class="option">자동</span>
										<span class="option">가솔린</span> <span class="option last"><a
											href="javascript:pop_accident_renew('39머2043', 'mycar', '1597439');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>07/02</td>
								<td>114,000 km</td>

								<td class="centeralign"><span class="redbold02">290</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 문창순 <a
											href="javascript:info_toggle('8')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 부산 연제구<br />
										<span class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="color: #FF0000">729<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1597439" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://file4.bobaedream.co.kr/dealer/2011/01/26/Bg1295969837_3.jpg"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>문창순(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-2570-0387</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>mcs648888@yahoo.co.kr</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>부산 연제구 연산5동 1123번지<span class="popuplink"><a
																			href="javascript:size_maps_myinfo('1597439','mycar','mcs6488','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">11</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=mcs6488&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1597439','010-2570-0387','부산')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWxvcGhyMW9waHFmb3Boc2dvcGhzaW9waHNlb3Boc2U%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1600139" value="1600139" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1600139&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/08/22/Bg12261471838247_1_s1.jpg"><span
										class="ico_cnt">+17</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1600139&gubun=K" class=""
											itemprop="name">기아 <span class='bold'>카니발2 9인승 디젤</span>
											파크
										</a> <a href="mycar_view.php?no=1600139&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">진주투톤</span> <span class="option">자동</span>
										<span class="option">디젤</span> <span class="option last"><a
											href="javascript:pop_accident_renew('30로7452', 'mycar', '1600139');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>02/01</td>
								<td>243,000 km</td>

								<td class="centeralign"><span class="redbold02">150</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 문창순 <a
											href="javascript:info_toggle('9')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 부산 연제구<br />
										<span class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="color: #FF0000">686<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1600139" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://file4.bobaedream.co.kr/dealer/2011/01/26/Bg1295969837_3.jpg"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>문창순(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-2570-0387</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>mcs648888@yahoo.co.kr</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>부산 연제구 연산5동 1123번지<span class="popuplink"><a
																			href="javascript:size_maps_myinfo('1600139','mycar','mcs6488','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">11</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=mcs6488&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1600139','010-2570-0387','부산')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWxvcGhyMW9waHFmb3Boc2dvcGhzaW9waHNlb3Boc2U%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1602689" value="1602689" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1602689&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/08/27/Bg11541472264761_1_s1.jpg"><span
										class="ico_cnt">+15</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1602689&gubun=K" class=""
											itemprop="name">GM대우 <span class='bold'>All New
												마티즈 슈퍼</span> 일반형
										</a> <a href="mycar_view.php?no=1602689&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">흰색</span> <span class="option">자동</span>
										<span class="option">가솔린</span> <span class="option last"><a
											href="javascript:pop_accident_renew('17도3689', 'mycar', '1602689');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>05/06</td>
								<td>122,000 km</td>

								<td class="centeralign"><span class="redbold02">170</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 문창순 <a
											href="javascript:info_toggle('10')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 부산 연제구<br />
										<span class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="">453<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1602689" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://file4.bobaedream.co.kr/dealer/2011/01/26/Bg1295969837_3.jpg"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>문창순(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-2570-0387</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>mcs648888@yahoo.co.kr</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>부산 연제구 연산5동 1123번지<span class="popuplink"><a
																			href="javascript:size_maps_myinfo('1602689','mycar','mcs6488','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">11</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=mcs6488&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1602689','010-2570-0387','부산')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWxvcGhyMW9waHFmb3Boc2dvcGhzaW9waHNlb3Boc2U%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1605674" value="1605674" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1605674&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/09/03/BA19301472867078_1_s1.jpg"><span
										class="ico_cnt">+20</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1605674&gubun=K" class=""
											itemprop="name">현대 <span class='bold'>아반떼MD M16
												GDi</span> 럭셔리
										</a> <a href="mycar_view.php?no=1605674&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">흰색</span> <span class="option">자동</span>
										<span class="option">가솔린</span> <span class="option last"><a
											href="javascript:pop_accident_renew('46구4393', 'mycar', '1605674');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>11/09<br>
								<font>(12년형)</font></td>
								<td>84,077 km</td>

								<td class="centeralign"><span class="redbold02">640</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 김영준 <a
											href="javascript:info_toggle('11')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 인천 서구<br /> <span
											class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="">82<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1605674" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>김영준(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-9239-0194</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>01092390194@hanmail.net</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>인천 서구 염곡로 149 (가좌동, 엠파크랜드) 2층 A206호<span
																		class="popuplink"><a
																			href="javascript:size_maps_myinfo('1605674','mycar','oasdgk0102','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">28</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=oasdgk0102&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1605674','010-9239-0194','인천')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWpvcGhyM29waHFmb3BocjBvcGhxcm9waHFub3Boc21vcGhzbG9waHNtb3Boc2s%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1605186" value="1605186" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1605186&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/09/02/BA15061472782487_1_s1.jpg"><span
										class="ico_cnt">+18</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1605186&gubun=K" class=""
											itemprop="name">쉐보레(국산) <span class='bold'>말리부 2.0</span>
											LTZ 디럭스팩 l
										</a> <a href="mycar_view.php?no=1605186&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">검정색</span> <span class="option">자동</span>
										<span class="option">가솔린</span> <span class="option last"><a
											href="javascript:pop_accident_renew('54노9009', 'mycar', '1605186');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>14/05</td>
								<td>22,386 km</td>

								<td class="centeralign"><span class="redbold02">1,430</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 김영준 <a
											href="javascript:info_toggle('12')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 인천 서구<br /> <span
											class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="">130<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1605186" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>김영준(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-9239-0194</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>01092390194@hanmail.net</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>인천 서구 염곡로 149 (가좌동, 엠파크랜드) 2층 A206호<span
																		class="popuplink"><a
																			href="javascript:size_maps_myinfo('1605186','mycar','oasdgk0102','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">28</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=oasdgk0102&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1605186','010-9239-0194','인천')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWpvcGhyM29waHFmb3BocjBvcGhxcm9waHFub3Boc21vcGhzbG9waHNtb3Boc2s%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1605182" value="1605182" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1605182&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/09/02/BA16271472782403_1_s1.jpg"><span
										class="ico_cnt">+20</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1605182&gubun=K" class=""
											itemprop="name">현대 <span class='bold'>NF쏘나타 N20
												프리미어</span> 기본형
										</a> <a href="mycar_view.php?no=1605182&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">검정색</span> <span class="option">자동</span>
										<span class="option">가솔린</span> <span class="option last"><a
											href="javascript:pop_accident_renew('52더0861', 'mycar', '1605182');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>05/11<br>
								<font>(06년형)</font></td>
								<td>160,000 km</td>

								<td class="centeralign"><span class="redbold02">280</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 김영준 <a
											href="javascript:info_toggle('13')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 인천 서구<br /> <span
											class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="">73<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1605182" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>김영준(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-9239-0194</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>01092390194@hanmail.net</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>인천 서구 염곡로 149 (가좌동, 엠파크랜드) 2층 A206호<span
																		class="popuplink"><a
																			href="javascript:size_maps_myinfo('1605182','mycar','oasdgk0102','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">28</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=oasdgk0102&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1605182','010-9239-0194','인천')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWpvcGhyM29waHFmb3BocjBvcGhxcm9waHFub3Boc21vcGhzbG9waHNtb3Boc2s%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1605165" value="1605165" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1605165&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/09/02/BA10851472781181_1_s1.jpg"><span
										class="ico_cnt">+14</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1605165&gubun=K" class=""
											itemprop="name">현대 <span class='bold'>포터Ⅱ 내장탑차</span>
										</a> <a href="mycar_view.php?no=1605165&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">흰색</span> <span class="option">자동</span>
										<span class="option">디젤</span> <span class="option last"><a
											href="javascript:pop_accident_renew('95누8544', 'mycar', '1605165');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>09/08<br>
								<font>(10년형)</font></td>
								<td>81,701 km</td>

								<td class="centeralign"><span class="redbold02">760</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 김영준 <a
											href="javascript:info_toggle('14')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 인천 서구<br /> <span
											class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="">54<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1605165" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>김영준(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-9239-0194</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>01092390194@hanmail.net</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>인천 서구 염곡로 149 (가좌동, 엠파크랜드) 2층 A206호<span
																		class="popuplink"><a
																			href="javascript:size_maps_myinfo('1605165','mycar','oasdgk0102','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">28</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=oasdgk0102&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1605165','010-9239-0194','인천')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWpvcGhyM29waHFmb3BocjBvcGhxcm9waHFub3Boc21vcGhzbG9waHNtb3Boc2s%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1579623" value="1579623" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1579623&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/07/11/BA16631468201139_1_s1.jpg"><span
										class="ico_cnt">+19</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1579623&gubun=K" class=""
											itemprop="name">현대 <span class='bold'>아반떼MD M16
												GDi</span> 탑
										</a> <a href="mycar_view.php?no=1579623&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">흰색</span> <span class="option">자동</span>
										<span class="option">가솔린</span> <span class="option last"><a
											href="javascript:pop_accident_renew('19오3341', 'mycar', '1579623');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>11/05</td>
								<td>111,602 km</td>

								<td class="centeralign"><span class="redbold02">850</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 김영준 <a
											href="javascript:info_toggle('15')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 인천 서구<br /> <span
											class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="color: #FF0000">849<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1579623" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>김영준(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-9239-0194</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>01092390194@hanmail.net</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>인천 서구 염곡로 149 (가좌동, 엠파크랜드) 2층 A206호<span
																		class="popuplink"><a
																			href="javascript:size_maps_myinfo('1579623','mycar','oasdgk0102','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">28</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=oasdgk0102&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1579623','010-9239-0194','인천')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWpvcGhyM29waHFmb3BocjBvcGhxcm9waHFub3Boc21vcGhzbG9waHNtb3Boc2s%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1582942" value="1582942" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1582942&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/07/17/BA12161468724056_1_s1.jpg"><span
										class="ico_cnt">+12</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1582942&gubun=K" class=""
											itemprop="name">현대 <span class='bold'>포터Ⅱ 초장축 슈퍼캡
												CRDi</span> 기본형
										</a> <a href="mycar_view.php?no=1582942&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">청색</span> <span class="option">수동</span>
										<span class="option">디젤</span> <span class="option last"><a
											href="javascript:pop_accident_renew('86도3189', 'mycar', '1582942');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>10/03</td>
								<td>105,899 km</td>

								<td class="centeralign"><span class="redbold02">560</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 김영준 <a
											href="javascript:info_toggle('16')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 인천 서구<br /> <span
											class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="color: #FF0000">705<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1582942" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>김영준(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-9239-0194</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>01092390194@hanmail.net</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>인천 서구 염곡로 149 (가좌동, 엠파크랜드) 2층 A206호<span
																		class="popuplink"><a
																			href="javascript:size_maps_myinfo('1582942','mycar','oasdgk0102','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">28</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=oasdgk0102&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1582942','010-9239-0194','인천')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWpvcGhyM29waHFmb3BocjBvcGhxcm9waHFub3Boc21vcGhzbG9waHNtb3Boc2s%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1588278" value="1588278" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1588278&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/07/28/BA13431469672026_1_s1.jpg"><span
										class="ico_cnt">+20</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1588278&gubun=K" class=""
											itemprop="name">르노삼성 <span class='bold'>QM3 RE</span>
										</a> <a href="mycar_view.php?no=1588278&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">검정색</span> <span class="option">자동</span>
										<span class="option">디젤</span> <span class="option last"><a
											href="javascript:pop_accident_renew('61보8942', 'mycar', '1588278');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>13/12<br>
								<font>(14년형)</font></td>
								<td>75,341 km</td>

								<td class="centeralign"><span class="redbold02">1,460</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 김영준 <a
											href="javascript:info_toggle('17')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 인천 서구<br /> <span
											class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="color: #FF0000">709<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1588278" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>김영준(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-9239-0194</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>01092390194@hanmail.net</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>인천 서구 염곡로 149 (가좌동, 엠파크랜드) 2층 A206호<span
																		class="popuplink"><a
																			href="javascript:size_maps_myinfo('1588278','mycar','oasdgk0102','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">28</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=oasdgk0102&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1588278','010-9239-0194','인천')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWpvcGhyM29waHFmb3BocjBvcGhxcm9waHFub3Boc21vcGhzbG9waHNtb3Boc2s%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1588510" value="1588510" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1588510&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/07/28/BA12171469690401_1_s1.jpg"><span
										class="ico_cnt">+20</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1588510&gubun=K" class=""
											itemprop="name">현대 <span class='bold'>싼타페 더스타일 2.0
												e-VGT MLX 2WD</span> 프
										</a> <a href="mycar_view.php?no=1588510&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">은색</span> <span class="option">자동</span>
										<span class="option">디젤</span> <span class="option last"><a
											href="javascript:pop_accident_renew('15버0843', 'mycar', '1588510');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>12/03</td>
								<td>28,244 km</td>

								<td class="centeralign"><span class="redbold02">1,500</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 김영준 <a
											href="javascript:info_toggle('18')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 인천 서구<br /> <span
											class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="color: #FF0000">876<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1588510" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>김영준(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-9239-0194</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>01092390194@hanmail.net</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>인천 서구 염곡로 149 (가좌동, 엠파크랜드) 2층 A206호<span
																		class="popuplink"><a
																			href="javascript:size_maps_myinfo('1588510','mycar','oasdgk0102','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">28</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=oasdgk0102&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1588510','010-9239-0194','인천')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWpvcGhyM29waHFmb3BocjBvcGhxcm9waHFub3Boc21vcGhzbG9waHNtb3Boc2s%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>

							<tr itemscope itemtype="http://schema.org/Article">
								<td class="input"><input type="checkbox"
									id="checklist_1604675" value="1604675" /></td>
								<td class="thumb"><a
									href="mycar_view.php?no=1604675&gubun=K"\> <img
										src="http://file4.bobaedream.co.kr/direct/2016/09/01/BA16311472700208_1_s1.jpg"><span
										class="ico_cnt">+20</span>
								</a></td>

								</td>
								<td class="information">
									<p>
										<a href="mycar_view.php?no=1604675&gubun=K" class=""
											itemprop="name">기아 <span class='bold'>모하비 QV300
												2WD</span> 고급형
										</a> <a href="mycar_view.php?no=1604675&gubun=K" target="_blank"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/icon_winopen02.gif"></a>
									</p>
									<p>
										<span class="option">검정색</span> <span class="option">자동</span>
										<span class="option">디젤</span> <span class="option last"><a
											href="javascript:pop_accident_renew('41주3468', 'mycar', '1604675');">사고이력</a></span>
									</p>

									<p class="iconarea"></p>

								</td>
								<td>08/05</td>
								<td>157,513 km</td>

								<td class="centeralign"><span class="redbold02">1,800</span>만원</td>
								<td class="nonepd">
									<div class="dealerinfo">
										<span class="tt">이름</span> 김영준 <a
											href="javascript:info_toggle('19')" class="zoom"
											title="판매자정보 자세히보기"><img
											src="http://image.bobaedream.co.kr/renew/images/common_re/btn_arr.png"
											alt="" /></a><br> <span class="tt">주소</span> 인천 서구<br /> <span
											class="tt">등록</span> 09월 05일<br> <span class="tt">조회</span>
										<span style="">118<a
											href="javascript:wopen('https://security.bobaedream.co.kr/member/slogin_pop.php?pop=t_open&page=%2Fmycar%2Fmycar_list.php%3Fgubun%3DK','','400','290')"
											id="zzimClass1604675" class="sub_star_off">찜</a> <!--판매자정보레이어창-->
											<div class="layerwrap" style="display: none;">
												<div class="layerwraptopbox">
													<div class="layerwraptopcenter">
														<img
															src="http://image.bobaedream.co.kr/renew/images/common_re/pop_title09.png"
															alt="판매자정보" title="판매자정보" class="layerwraptitleimg" /> <a
															href="javascript:" onclick="$('.layerwrap').hide();"
															class="close">닫기</a>
													</div>
												</div>
												<div class="layerwrappopbody">
													<!--컨테이너-->
													<div class="layerwrapcontainer">
														<!--팝업레이어내용시작-->
														<div class="sellerimg">
															<img
																src="http://image.bobaedream.co.kr/renew/images/common_re/seller_profile.gif"
																alt="판매자이미지" title="판매자이미지" width="54" height="63" />
														</div>
														<table cellpadding="0" cellspacing="0" class="layerinfo">
															<caption>판매자정보</caption>
															<colgroup>
																<col width="64px">
																<col width="*" />
															</colgroup>
															<tbody>
																<tr>
																	<th>이름</th>
																	<td><strong>김영준(딜러)</strong></td>
																</tr>
																<tr>
																	<th>연락처</th>
																	<td><span class="redbold02">010-9239-0194</span></td>
																</tr>
																<tr>
																	<th>이메일</th>
																	<td>01092390194@hanmail.net</td>
																</tr>
																<tr>
																	<th>카카오톡</th>
																	<td></td>
																</tr>
																<tr>
																	<th>주소</th>
																	<td>인천 서구 염곡로 149 (가좌동, 엠파크랜드) 2층 A206호<span
																		class="popuplink"><a
																			href="javascript:size_maps_myinfo('1604675','mycar','oasdgk0102','B');">지도보기</a></span></td>
																</tr>
																<tr>
																	<th>보유차량</th>
																	<td>총<span class="redbold02">28</span>대 등록중<span
																		class="popuplink"><a
																			href="/mycar/mycar_holding_list.php?sellerID=oasdgk0102&mtype_gubun=MK"
																			target="_blank">매물보기</a></span></td>
																</tr>
																<tr>
																	<th>상담하기</th>
																	<td>
																		<ul>
																			<li><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_03.gif"
																				alt="무료문자보내기" title="무료문자보내기" class="pointer"
																				onClick="fOpenSms('M','1604675','010-9239-0194','인천')" /></li>
																			<li class="last"><img
																				src="http://image.bobaedream.co.kr/renew/images/common_re/detailbtn_04.gif"
																				alt="쪽지보내기" title="쪽지보내기" class="pointer"
																				onClick="memo_send('b3BocWpvcGhyM29waHFmb3BocjBvcGhxcm9waHFub3Boc21vcGhzbG9waHNtb3Boc2s%3D')" /></li>
																		</ul>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--//팝업레이어내용시작-->
													</div>
													<div class="clear"></div>
													<!--컨테이너-->
												</div>
												<div class="clear"></div>
											</div> <!--/판매자정보레이어창-->
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="select_option">
						<a href="javascript:zzim_ad('mycar');">선택찜</a> <a
							href="javascript:selectcar_ad('mycar');">차량비교</a>
					</div>
				</div>
				<div class="con2" style="display: none;">
					<ul class="mycarlist_album">
					</ul>
				</div>

				<!--페이징처리-->



				<div class="pageMove">
					<ul class="pageNumber">

						<li class="first"><a
							href="/mycar/mycar_list.php?gubun=K&page=1"><span
								class="current">1</span></a></li>
						<li class=""><a href="/mycar/mycar_list.php?gubun=K&page=2"><span
								class="link_page">2</span></a></li>
						<li class=""><a href="/mycar/mycar_list.php?gubun=K&page=3"><span
								class="link_page">3</span></a></li>
						<li class=""><a href="/mycar/mycar_list.php?gubun=K&page=4"><span
								class="link_page">4</span></a></li>
						<li class=""><a href="/mycar/mycar_list.php?gubun=K&page=5"><span
								class="link_page">5</span></a></li>
						<li class=""><a href="/mycar/mycar_list.php?gubun=K&page=6"><span
								class="link_page">6</span></a></li>
						<li class=""><a href="/mycar/mycar_list.php?gubun=K&page=7"><span
								class="link_page">7</span></a></li>
						<li class=""><a href="/mycar/mycar_list.php?gubun=K&page=8"><span
								class="link_page">8</span></a></li>
						<li class=""><a href="/mycar/mycar_list.php?gubun=K&page=9"><span
								class="link_page">9</span></a></li>
						<li class=""><a href="/mycar/mycar_list.php?gubun=K&page=10"><span
								class="link_page">10</span></a></li>
						<li class="btn_next"><a
							href="/mycar/mycar_list.php?gubun=K&page=11"><img
								src="http://image.bobaedream.co.kr/renew/images/common/btn_next3_00.jpg"
								alt="다음" title="다음" class="next" /></a></li>
						<li class="btn_next"><a
							href="/mycar/mycar_list.php?gubun=K&page=444"><img
								src="http://image.bobaedream.co.kr/renew/images/common/btn_next4.jpg"
								alt="다음" title="다음" class="next" /></a></li>
					</ul>
					<div class="gototop" title="맨위로버튼" onclick="location.href='#';"></div>


				</div>
				<!--//페이징처리-->


				<!--테이블바텀-->
				<div class="list_top">
					<a href="/mycar/manage/mycar_car_manage_new.php?gubun=K"><img
						src="http://image.bobaedream.co.kr/renew/images/common_re/btn_02n.gif"
						alt="" title="정보수정" class="btn" /></a> <a href="/mycar/mycar.php"><img
						src="http://image.bobaedream.co.kr/image/cyber/btn_01n.gif" alt=""
						title="차량등록" class="btn" /></a>
					<div>
						<div class="search">
							<img
								src="http://image.bobaedream.co.kr/renew/images/common_re/bg_searchleft.gif"
								alt="" />
							<div class="inputbox">
								<input onkeydown="if (event.keyCode == 13) field2_search('2')"
									type="text" name="s_str2" id="s_str2" value=""
									title="직거래 국산차매장 차량검색" />
							</div>
							<input type="image" id="btm_sbtn" onclick="field_search('2')"
								src="http://image.bobaedream.co.kr/renew/images/common_re/btn_03.gif"
								alt="" title="검색버튼" />
						</div>
						<div class="checkbox">
							<input type="radio" name="s_field2" id="sch_field5" title="휴대폰"
								value="cell" /> <label for="sch_field5" title="차량명">휴대폰</label>
						</div>
						<div class="checkbox">
							<input type="radio" name="s_field2" id="sch_field6" title="차량번호"
								value="car_number" /> <label for="sch_field6" title="차량명">차량번호</label>
						</div>
						<div class="checkbox">
							<input type="radio" name="s_field2" id="sch_field7" title="판매자"
								value="seller_name" /> <label for="sch_field7" title="판매자">판매자</label>
						</div>
						<div class="checkbox">
							<input type="radio" name="s_field2" id="sch_field8" title="차량명"
								value="car_name" /> <label for="sch_field8" title="차량명">차량명</label>
						</div>
					</div>
					<!--//테이블바텀-->
				</div>
				<div class="clear"></div>
				<!--//사이버매장등록차량-->
			</div>
			<!--//left-->

			<!--//right-->
			<div class="clear"></div>
		</div>








<script>
var fixPos = '11';
var maxTop = '155';

window.onscroll = function() {
    var adObj  = document.getElementById("QuickMenu");

    if (adObj) {
        var sct = (document.body.scrollTop) ? document.body.scrollTop : document.documentElement.scrollTop;

        if (sct <= 0) {
            adObj.style.top = maxTop + 'px';
        } else if (sct < maxTop) {
            adObj.style.top = (maxTop - sct) + 'px';
        } else if (sct > maxTop && adObj.style.top != fixPos + 'px') {
            adObj.style.top = fixPos + 'px';
        }
    }
}	
</script>

<script>	
var qPage    = 0;
var qEndPage = '1';


$(document).ready(function() {

$('#qNavi').html('<strong>1</strong>/' + qEndPage)
$('#recenct_Cnt').html('(1)')
qMenuAjax('P');
});


function qMenuAjax(con) {
		
		if(con == 'P') {
			qPage++;
			if(qPage > qEndPage) {
				qPage = qEndPage;
				return;
			}
		}
				
		if(con == 'M') {
			qPage--;
			if(qPage < 1) {
				qPage = 1;
				return;
			}
		}

		$.ajax({
  				type: 'POST'
  				, async: true
  				, url: '/mycar/proc/qMenuProc.php'
  				, data: "qPage=" + qPage
  				, dataType: 'json'
  				, beforeSend: function() {
  				  }
  				, success: function(data) {
  						$('#qImg').empty();
  		 		    
  		 		    var gQcnt = 0;
  		 		    $.each(data,  function(k, v) {
  		 		    		if(k == 'qStat') {

										$('#recenct_Cnt').html('(' + v[0] + ')');
										$('#qNavi').html('<strong>' + qPage + '</strong>/' + v[1]);
										qEndPage = v[1];
										
  		 		    		} else {
										$('#qImg').append('<a href="' + v[2] + '" class="car" title="' + v[1] + '" >' +
																		  '<span class="img">' + 
																		  '<img src="' + v[0] + '" alt="' + v[1] + '"></span>' + 
																		  '<span class="txt">' + v[1] + '</span></a>\n');
										gQcnt++;																		  
									}
							});
							
  		 		    if(gQcnt < 1) {
  		 		    	$('#qdl').hide();
  		 		    } else {
  		 		    	$('#qdl').show();
  		 		    }


 				  	}
  				, error: function(data, status, err) {
  				    //alert('서버와의 통신이 실패했습니다.' + err);
  				  }
  				, complete: function() {
  				  }
  		});
}  		
</script>
		<div class='Quick_layer'>
			<div class="Quick" id="QuickMenu"
				style="width: 120px; top: 155px; left: 515px">
				<!-- 우측 배너 -->
				<div id='div-gpt-ad-1398066581850-0'
					style='width: 120px; height: 225px;' tabindex="0">
					<script type='text/javascript'>
						googletag.cmd.push(function() {
							googletag.display('div-gpt-ad-1398066581850-0');
						});
					</script>
				</div>
		
		
				<dl id="qdl" class="ml" style="margin-left: 3.5px">
					<dt class="t">
						<a href="/mycar/manage/mycar_recent.php" id="f_jump"><img
							src="http://image.bobaedream.co.kr/image/quick/quick_view.png"
							alt="최근 본 차량"> <em id="recenct_Cnt">(0)</em></a>
					</dt>
					<dd id='qImg'></dd>
					<dd id='qImgPage' class="page">
						<a href="javascript:qMenuAjax('M');"><img
							src="http://image.bobaedream.co.kr/image/quick/icon_l.gif"
							alt="왼쪽이동"></a> <span id="qNavi"><strong>1</strong>/1</span> <a
							href="javascript:qMenuAjax('P');"><img
							src="http://image.bobaedream.co.kr/image/quick/icon_r.gif "
							alt="오른쪽이동"></a>
					</dd>
				</dl>
				<ul class="ml">
					<li><a href="/mycar/manage/mycar_select_list.php"><img
							src="http://image.bobaedream.co.kr/image/quick/quick_wish.png"
							alt="찜한차량"> <em id="zzim2">(0)</em></a></li>
					<li><a href="/dealguide/accident_search.php"><img
							src="http://image.bobaedream.co.kr/image/quick/q_s6.gif"
							alt="사고이력 조회" /></a></li>
					<li><a href="http://direct.samsungfire.com/CR_MyAnycarWeb/overture_index.jsp?OTK=A1410AF0019"
							target="_blank" title="새 창"><img
							src="http://image.bobaedream.co.kr/image/quick/quick_insurance.png"
							alt="보험료계산"></a></li>
					<li><a
						href="http://ad56.feeldmc.com/adv.dmc?m=bobaedream&c=3007&s=12053&a=87065&ac=1"
						target="_blank" title="새 창"><img
						src="http://image.bobaedream.co.kr/image/quick/quick_installment.png"
						alt="할부한도조회"></a></li>
					<li><a href="http://www.bobaedream.co.kr/mycar/mycar.php"
						target="_blank" title="새 창"><img
							src="http://image.bobaedream.co.kr/image/quick/quick_register.png"
							alt="내차팔기"></a></li>
					<li class="top"><a href="#"><img
							src="http://image.bobaedream.co.kr/image/quick/quick_top.png"
							alt="top"></a></li>
				</ul>
				<div class="sns_area">
					<a href="https://www.facebook.com/bobaedream"
						title="보배드림 페이스북 바로가기 새창" target="_blank"><img
						src="http://image.bobaedream.co.kr/image/quick/btn_sns1.gif"
						alt="페이스북" /></a> <a
						href="https://www.youtube.com/channel/UCLwH6qjWELskt7sGT2b3FOg"
						title="보배드림 유튜브 바로가기 새창" target="_blank"><img
						src="http://image.bobaedream.co.kr/image/quick/btn_sns4.gif"
						alt="유튜브" /></a> <a href="https://instagram.com/bobaedream"
						title="보배드림 인스타그램 바로가기 새창" target="_blank"><img
						src="http://image.bobaedream.co.kr/image/quick/btn_sns3.gif"
						alt="인스타그램" /></a>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../inc/bottom.jsp"%>