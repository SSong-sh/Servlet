<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>

	#map{ 
		width: 770px; 
		height: 400px;
	}
</style>
</head>
<body>
	<!---->

	<h1>지도 <small>자표 이동 + 레벨 변경</small> </h1>

	<div>
	<div id="map"></div>
	</div>
	
	<hr />
	
	<div>
		<input type="button" value="한독빌딩으로 이동하기" id="btn1" />
		<input type="button" value="상암경기장으로 이동하기" id="btn2" />
		<input type="button" value="역삼역으로 이동하기" id="btn3" />
	</div>
	
	<hr />
	
	<div>
		<input type="button" value="확대" id="btn4" />
		<input type="button" value="축소" id="btn5" />
	</div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d02aa54170aa9fe2b80ece1ca4433ae2"></script>
	<script src=https://code.jquery.com/jquery-3.7.1.js></script>
	<script>
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng( 37.49930942404527,127.03331872237), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};

	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	
	//var mapTypeControl = new kakao.maps.MapTypeControl();
	//map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
	
	
	map.setDraggable(false);
	map.setZoomable(false);
	
	
	$('#btn1').click(()=> {
		const pos = new kakao.maps.LatLng( 37.49930942404527,127.03331872237);
		//map.setCenter(pos);
		map.panTo(pos);
	});
	
	$('#btn2').click(()=> {
		// 위도는 37.49930942404527, 경도는 127.03331872237 
		const pos = new kakao.maps.LatLng(37.56826581191203,126.89725212491432 );
		map.setCenter(pos);
	});
	
	$('#btn3').click(()=> {
		// 위도는 37.49930942404527, 경도는 127.03331872237 
		const pos = new kakao.maps.LatLng(37.50068477597618,127.0364830443852 );
		//map.setCenter(pos);
		map.panTo(pos);
	});
	
	$('#btn4').click(()=> {
		map.setLevel(map.getLevel()-1);
	});
	
	$('#btn5').click(()=> {
		map.setLevel(map.getLevel()+1);
	});
	
	
	
	</script>
</body>
</html>