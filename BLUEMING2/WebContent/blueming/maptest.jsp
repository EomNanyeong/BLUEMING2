<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="favicon.png">
<title>Insert title here</title>
</head>
<body>
	<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=47b19895a71fd79880bb96ccc3694237"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(34.706090, 127.757435),
			level: 2
		};

		var map = new kakao.maps.Map(container, options);
		
		var marker = new kakao.maps.Marker({
			position: map.getCenter()
		});
		
		marker.setMap(map);
		
	</script>
</body>
</html>