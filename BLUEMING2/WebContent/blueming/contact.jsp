<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="favicon.png">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="styles/style.css" />
<script type="text/javascript" src="js/jquery-1.3.2.js"></script>
<!--[if IE 6]>
<script src="js/ie6-transparency.js"></script>
<script>DD_belatedPNG.fix('#header .logo img, .subtitle img, .slideshow-container, .navigation-container #thumbs .thumbs li .thumb img, .navigation a.next, .footer-line, #sidebar .author-photo, .line, .commentlist .comment-reply-link, #contact-page #contact .submit, #contact-page #contact-form .submit');</script>
<link type="text/css" rel="stylesheet" type="text/css" href="styles/ie6.css" />
<![endif]-->
<!--[if IE 7]><link type="text/css" rel="stylesheet" type="text/css" href="styles/ie7.css" /><![endif]-->
</head>
<body>
<div id="wrap">
  <div id="header">
    <div class="logo"><a href="#"><img src="images/name.png" alt="" /></a></div>
    <!--end logo-->
    <div class="subtitle"><img src="images/subtitle.png" alt="" /></div>
    <!--end subtitle-->
    <div id="nav">
      <ul id="nav-pages">
        <li><a href="index.html">Home</a><span>~</span></li>
        <li><a href="short-bio.html">Short Bio</a><span>~</span></li>
        <li><a href="articles.html">Articles</a><span>~</span></li>
        <li><a href="contact.html" class="current">Contact Me</a></li>
      </ul>
      <!--end nav-pages-->
    </div>
    <!--end nav-->
  </div>
  <!--end header-->
    	<div id="map"  style="width:60%;height:350px;align:center;margin-left:20%;margin-right:20%;margin-top:99px;"></div>
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




  <div id="footer">
  <div class="footer-line"></div>
			<%@ include file="footer.jsp"%>
  </div>
  <!--end footer-->
</div>
<!--end wrap-->
<div class="cache-images"><img src="images/submit-button-blue-hover.png" width="0" height="0" alt="" /></div>
<!--end cache-images--></body>
</html>