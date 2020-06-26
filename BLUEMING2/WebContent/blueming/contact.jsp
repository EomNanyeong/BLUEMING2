<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="favicon.png">
<title>Blueming 오시는 길</title>
<link type="text/css" rel="stylesheet" href="styles/style.css" />
<script type="text/javascript" src="js/jquery-1.3.2.js"></script>
<!--[if IE 6]>
<script src="js/ie6-transparency.js"></script>
<script>DD_belatedPNG.fix('#header .logo img, .subtitle img, .slideshow-container, .navigation-container #thumbs .thumbs li .thumb img, .navigation a.next, .footer-line, #sidebar .author-photo, .line, .commentlist .comment-reply-link, #contact-page #contact .submit, #contact-page #contact-form .submit');</script>
<link type="text/css" rel="stylesheet" type="text/css" href="styles/ie6.css" />
<![endif]-->
<!--[if IE 7]><link type="text/css" rel="stylesheet" type="text/css" href="styles/ie7.css" /><![endif]-->

<link
   href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
   rel="stylesheet">
<style type="text/css">
body {
   font-family: 'Do Hyeon', sans-serif;
   font-size: 20px
}

login {
   text-align: right;
   margin-right: -4px;
}

join {
   text-align: right;
   margin-left: -3px;
}

#btn_group button {
   border: 2px solid skyblue;
   background-color: rgba(0, 0, 0, 0);
   color: skyblue;
   padding: 6px;
}

#btn_group button:hover {
   color: white;
   background-color: skyblue;
}

#info {
   width: 80%;
   margin: 0 auto;
}

#info div {
   display: inline-block;
   height: auto;
}

#info div:first-child {
   background: #F6F6F6;
   width: 100%;
   text-align: center;
   margin-top: 30px;
}

#info div:nth-child(2) {
   background: #F6F6F6;
   width: 100%;
   text-align: center;
   margin-top: 18px;
   margin-bottom: 25px;
}
</style>
</head>
<body>
   <%
      String u_name = (String) session.getAttribute("user_name");
   if (session.getAttribute("u_id") == null) {
   %>
   <div id="btn_group">
      <button type="button" id="login"
         onclick="window.open('login.jsp', 'login',  'width = 600, height = 450', 'resizeable= no', 'scrollbars = no', 'status = no')">로그인</button>
      <button type="button" id="join"
         onclick="window.open('signin.jsp', 'width = 600', 'height = 100')">회원가입</button>
   </div>
   <%
      } else {
   %>

   <div id="btn_group">
      <%=session.getAttribute("u_name")%>님 환영합니다.
      <button type="button" style="WIDTH: 55pt; HEIGHT: 23pt" id="mypage"
         onclick="location.href='mypage.jsp'">My Page</button>
      <button type="button" style="WIDTH: 55pt; HEIGHT: 23pt" id="logout"
         onclick="location.href='logout.jsp'">로그아웃</button>

   </div>
   <%
      }
   %>
   <div id="wrap">
      <div id="header">
         <div class="logo">
            <a href="#"><img src="images/name.png" alt="" /></a>
         </div>
         <!--end logo-->
         <div class="subtitle">
            <img src="images/subtitle.png" alt="" />
         </div>
         <!--end subtitle-->
         <div id="nav">
            <ul id="nav-pages">
               <li><a href="index.jsp" >Home</a><span></span></li>
               <li><a href="short-bio.jsp">이용 수칙</a><span></span></li>
               <li><a href="room.jsp">객실 정보</a><span></span></li>
               <li><a href="articles.jsp">시설 안내</a><span></span></li>
               <li><a href="contact.jsp" class="current">오시는 길</a></li>
            </ul>
            <!--end nav-pages-->
         </div>
         <!--end nav-->
      </div>
      <!--end header-->
      <div id="map"
         style="width: 70%%; height: 350px; margin-left: 10%; margin-right: 10%; margin-top: 99px;"></div>
      <script type="text/javascript"
         src="//dapi.kakao.com/v2/maps/sdk.js?appkey=47b19895a71fd79880bb96ccc3694237"></script>
      <script>
         var container = document.getElementById('map');
         var options = {
            center : new kakao.maps.LatLng(34.706090, 127.757435),
            level : 2
         };

         var map = new kakao.maps.Map(container, options);

         var marker = new kakao.maps.Marker({
            position : map.getCenter()
         });

         marker.setMap(map);
      </script>

      <div id="info">
         <div>
            <table
               style='color: #4C4C4C; margin-left: 20px; margin-top: 20px; margin-bottom: 20px'>
               <tr>
                  <th style='font-size: 23px'>자가용 이용시</th>
               </tr>
               <tr>
                  <td><br>전라남도 여수시 돌산읍 진모1길 29-37주소 검색 후 찾아오시길바랍니다.</td>
               </tr>
            </table>
         </div>
         <!-- 위치 -->

         <div>
            <table
               style='color: #4C4C4C; margin-left: 20px; margin-top: 20px; margin-bottom: 20px'>
               <tr>
                  <th style='font-size: 23px'>대중교통 이용시</th>
               </tr>
               <tr>
                  <td>※펜션픽업안내(농협하나로마트차량이용)</td>
               </tr>
               <tr>
                  <td>먹거리쇼핑을 미리하지마시고, 펜션5분 거리에있는 농협하나로마트를 이용하시면 무료픽업서비스와 함께
                     편리하게 이동하실 수 있습니다. 터미널하차후 터미널내 8,9번승강장에서 안면도행버스를 타시고 반드시 농협하나로마트에서
                     하차하세요. 마트에서 쇼핑을 하시고 카운터에서 계산전에 꼭 블루밍펜션 고객임을 카운터에 말씀하시면서 픽업요청을 하시면
                     바로 펜션앞까지 편리하게 이용하실 수 있습니다. 메모하셨다가 꼭 위의 방법으로 픽업받으시기 바랍니다.</td>
               </tr>
               <tr>
                  <td>&nbsp;</td>
               </tr>
               <tr>
                  <td>
                     <table style='border: 1px solid #444444;'>
                        <tr style='border: 1px solid #444444; height: 30px;'>
                           <th style='border: 1px solid #444444;' >운행정보</th>
                           <th style='border: 1px solid #444444;'>배차시간</th>
                           <th style='border: 1px solid #444444;'>소요시간</th>
                           <th style='border: 1px solid #444444;'>운행시간</th>
                        </tr>
                        <tr style='border: 1px solid #444444; height: 30px;'>
                           <td style='border: 1px solid #444444;'>남부터미널 > 여수&nbsp;</td>
                           <td style='border: 1px solid #444444;'>당일 18회 운행&nbsp;</td>
                           <td style='border: 1px solid #444444;'>2시간 20분&nbsp;</td>
                           <td style='border: 1px solid #444444;'>06:40 ~ 20:00&nbsp;</td>
                        </tr>
                        <tr style='border: 1px solid #444444; height: 30px;'>
                           <td style='border: 1px solid #444444;'>센트럴시티터미널 > 여수&nbsp;</td>
                           <td style='border: 1px solid #444444;'>당일 6회 운행&nbsp;</td>
                           <td style='border: 1px solid #444444;'>2시간 10분&nbsp;</td>
                           <td style='border: 1px solid #444444;'>07:10 ~ 20:10&nbsp;</td>
                        </tr>
                        <tr style='border: 1px solid #444444; height: 30px;'>
                           <td style='border: 1px solid #444444;'>동서울터미널 > 여수&nbsp;</td>
                           <td style='border: 1px solid #444444;'>당일 4회 운행&nbsp;</td>
                           <td style='border: 1px solid #444444;'>2시간 50분&nbsp;</td>
                           <td style='border: 1px solid #444444;'>07:20 ~ 18:10&nbsp;</td>
                        </tr>
                     </table>
                  </td>
               </tr>
            </table>
         </div>
         <!-- 편의시설 -->

      </div>


      <div id="footer">
         <div class="footer-line"></div>
         <%@ include file="footer.jsp"%>
      </div>
      <!--end footer-->
   </div>
   <!--end wrap-->
   <div class="cache-images">
      <img src="images/submit-button-blue-hover.png" width="0" height="0"
         alt="" />
   </div>
   <!--end cache-images-->
</body>
</html>