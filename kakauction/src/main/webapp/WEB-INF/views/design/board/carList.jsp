<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/searchSlide.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/carList.css"/>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.1.0.min.js" ></script>
<%@ include file="../inc/top.jsp"%>
<script language="javascript">  
	function openNav() {
		document.getElementById("mySidenav").style.width = "450px";
		document.getElementById("main").style.marginLeft = "0";
	}

	function closeNav() {
		document.getElementById("mySidenav").style.width = "0";
		document.getElementById("main").style.marginLeft = "0";
	}
	

</script>

<script type="text/javascript">
$( document ).ready( function() {
  var Offset = $( '.offset' ).offset();
  $( window ).scroll( function() {
    if ( $( document ).scrollTop() > Offset.top ) {
      $( '.sidenav' ).addClass( 'searchFixed' );
    }
    else {
      $( '.sidenav' ).removeClass( 'searchFixed' );
    }
  });
});	


$(function(){
    $(".accordion").each(function (i) {
    	$(this).click(function(){
  			$(this).children().slideDown(200);
		});
	});
});
</script>

<!--contents-->
<div id="wrap">
	<div class="Used_car_section renew">
		<div id="body">
			<div id="mySidenav" class="sidenav">
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
				<p>차량 상세 검색</p>
				<button class="accordion">차종</button>
				<div class="panel">
					<p>
					</p>
				</div>
				
				<button class="accordion">제조사/모델/등급</button>
				<div class="panel">
					<p>
					</p>
				</div>
				
				<button class="accordion">연식</button>
				<div class="panel">
		                <select id="yyyy" >
							<option value="">년</option>
							<option value="2017">2017</option>
							<option value="2016">2016</option>
							<option value="2015">2015</option>
							<option value="2014">2014</option>
							<option value="2013">2013</option>
							<option value="2012">2012</option>
							<option value="2011">2011</option>
							<option value="2010">2010</option>
							<option value="2009">2009</option>
							<option value="2008">2008</option>
							<option value="2007">2007</option>
							<option value="2006">2006</option>
							<option value="2005">2005</option>
							<option value="2004">2004</option>
							<option value="2003">2003</option>
							<option value="2002">2002</option>
							<option value="2001">2001</option>
							<option value="2000">2000</option>
							<option value="1999">1999</option>
							<option value="1998">1998</option>
							<option value="1997">1997</option>
							<option value="1996">1996</option>
						</select>
						<P> ~ </P>
		                <select id="yyyy2" >
							<option value="">년</option>
							<option value="2017">2017</option>
							<option value="2016">2016</option>
							<option value="2015">2015</option>
							<option value="2014">2014</option>
							<option value="2013">2013</option>
							<option value="2012">2012</option>
							<option value="2011">2011</option>
							<option value="2010">2010</option>
							<option value="2009">2009</option>
							<option value="2008">2008</option>
							<option value="2007">2007</option>
							<option value="2006">2006</option>
							<option value="2005">2005</option>
							<option value="2004">2004</option>
							<option value="2003">2003</option>
							<option value="2002">2002</option>
							<option value="2001">2001</option>
							<option value="2000">2000</option>
							<option value="1999">1999</option>
							<option value="1998">1998</option>
							<option value="1997">1997</option>
							<option value="1996">1996</option>
						</select>
				</div>
				<button class="accordion">가격</button>
				<div class="panel">
					<p>Lorem ipsum...</p>
				</div>
				<button class="accordion">주행거리</button>
				<div class="panel">
					<p>Lorem ipsum...</p>
				</div>
				<button class="accordion">색상</button>
				<div class="panel">
					<p>Lorem ipsum...</p>
				</div>
				<button class="accordion">연료</button>
				<div class="panel">
					<select id="fuel">
						<option value="">선택</option>
						<option value="0101">가솔린</option>
						<option value="0201">디젤</option>
						<option value="0301">LPG</option>
						<option value="0302">LPG(일반인)</option>
						<option value="0401">가솔린+LPG</option>
						<option value="0501">가솔린+전기</option>
						<option value="0502">디젤+전기</option>
						<option value="0503">LPG+전기월</option>
						<option value="0601">전기</option>
						<option value="0402">가솔린+CNG</option>
						<option value="0701">LNG</option>
						<option value="9901">기타</option>
	                </select>
				</div>
				
			</div>

			<div id="main">
				<span style="font-size: 20px; cursor: pointer" onclick="openNav()">&#9776;상세검색</span>
			</div>
		</div>
		<div class="offset"></div>
		<!--특종차량-->
		<div class="middlearea">
			<!--타이틀부분-->
			<div class="specialtitle">
				<h1>
					<img
						src="http://image.bobaedream.co.kr/image/usedcar/btn_cyberspecial.gif"
						alt="특종차량" class="fl" />
				</h1>
			</div>

			<!--//타이틀부분-->
			<div class="special">
				<ul>
					<li class="first">
						<a href="">
							<div class="imgbox">
								<img src="${pageContext.request.contextPath }/img/test_img1.jpg"
										alt="자동차사진" />
							</div><span class="txt">기아 뉴 쏘렌토R 2013년형</span></a>
					</li>
					<li class="">
						<a href="">
							<div class="imgbox">
								<img src="${pageContext.request.contextPath }/img/test_img2.jpg"
											alt="자동차사진" />
							</div><span class="txt">쉐보레(국산) 캡티바 2012년식</span></a>
					</li>
					<li class="">
						<a href="">
							<div class="imgbox">
								<img src="${pageContext.request.contextPath }/img/test_img3.jpg"
									alt="자동차사진" />
							</div><span class="txt">현대 제네시스 2012년형</span></a>
					</li>
					<li class="">
						<a href="">
							<div class="imgbox">
								<img src="${pageContext.request.contextPath }/img/test_img4.jpg"
									alt="자동차사진" />
							</div><span class="txt">현대 제네시스 쿠페 2010년형</span></a>
					</li>
					<li class="last">
						<a href="">
							<div class="imgbox">
								<img src="${pageContext.request.contextPath }/img/test_img5.jpg"
									alt="자동차사진" />
							</div> <span class="txt">현대 아반떼MD 2011년형</span></a>
					</li>
				</ul>
			</div>
		</div>
		
		<div class="list_mycar_top">
			<span class="fl">
				<ul>
					<li><a href="javascript:order_toggle('S11')" class="on up">등록순&#9650;</a></li>
					<li><a href="javascript:order_toggle('S22')" class="off">연식순&#9650;</a></li>
					<li><a href="javascript:order_toggle('S41')" class="off">가격순&#9650;</a></li>
					<li><a href="javascript:order_toggle('S51')" class="off">주행거리순&#9650;</a></li>
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
				<li class="more_btn"><button class="more_btn"></button></li>
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
					<col width="100px" />
					<col width="110px" />
					<col width="120px" />
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
								<td>197,000 km</td>

								<td class="centeralign"><span class="redbold02">11,980</span>만원</td>
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
							id="checklist_1497871" value="1497871" /></td>
						<td class="thumb"><a
							href="mycar_view.php?no=1497871&gubun=K"\> <img
								src="http://file4.bobaedream.co.kr/direct/2016/01/21/Bg13471453371483_1_s1.jpg"><span
								class="ico_cnt">+13</span>
						</a></td>

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
						</tbody>
					</table>
				</div>
					<div class="select_option">
						<a href="javascript:zzim_ad('mycar');">&#9745;선택찜</a> <a
							href="javascript:selectcar_ad('mycar');">&#9745;차량비교</a>
						<div class="gototop" title="맨위로버튼" onclick="location.href='#';">맨위로&#9652;</div>
					</div>

				<!--페이징처리-->

				<div class="pageMove">
					<ul class="pagination">
						<li><a href="#">&laquo;</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">6</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
				</div>
				
				<!--//페이징처리-->
				
				<!--//테이블바텀-->
				<div class="list_top">
					<a href="/mycar/manage/mycar_car_manage_new.php?gubun=K">
						<img src="http://image.bobaedream.co.kr/renew/images/common_re/btn_02n.gif"	alt="" title="정보수정" class="btn" /></a> 
					<a href="/mycar/mycar.php">
						<img src="http://image.bobaedream.co.kr/image/cyber/btn_01n.gif" alt="" title="차량등록" class="btn" /></a>
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
					</div>
				</div>
				<!--테이블바텀-->
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
					style='width: 120px; height: 225px; border: 1px solid;' tabindex="0">
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