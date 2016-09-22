<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>지도 ver.9</title>
    <style type="text/css">
    	#map{
    	/* 	margin-left: 300px;
    		margin-top: 50px */
    	}
    </style>
</head>
<body>
<div id="map" style="width:800px;height:400px;"></div>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=a156154cfd8364efb32db71b6254e945&libraries=services"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new daum.maps.LatLng(37.496585982368316, 127.02476549938709), // 지도의 중심좌표
	        level: 4 // 지도의 확대 레벨
	    };  
	// 지도를 생성합니다    
	var map = new daum.maps.Map(mapContainer, mapOption); 
	
	var markerPosition  = new daum.maps.LatLng(37.496585982368316, 127.02476549938709); 
	
	var marker = new daum.maps.Marker({
	    position: markerPosition
	});

	marker.setMap(map);
	
	var iwContent = '<div style="height: 10px;color:blue; width:140px; text-align: center;">카카옥션 본사</div>',
    iwPosition = new daum.maps.LatLng(37.496585982368316, 127.02476549938709); //인포윈도우 표시 위치입니다

	var infowindow = new daum.maps.InfoWindow({
	    position : iwPosition, 
	    content : iwContent 
	});
	
    var onoff = null;
    
	infowindow.open(map, marker);
	
	daum.maps.event.addListener(map, 'click', function(mouseEvent) {
		if(!onoff){
			infowindow.close();
			onoff = 1;
		}else{
			infowindow.open(map,marker);
			onoff = null;
		}
	});
	
	daum.maps.event.addListener(marker, 'click', function() {
		if(!onoff){
			infowindow.close();
			onoff = 1;
		}else{
			infowindow.open(map,marker);
			onoff = null;
		}
	});
</script>
</body>
</html>