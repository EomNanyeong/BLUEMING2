<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Blueming</title>
<meta charset="utf-8">
<link type="text/css" rel="stylesheet" href="styles/galleriffic.css" />
<link type="text/css" rel="stylesheet" href="styles/style.css" />
<link rel="icon" type="image/png" href="favicon.png">
<script type="text/javascript" src="js/jquery-1.3.2.js"></script>
<script type="text/javascript" src="js/jquery.opacityrollover.js"></script>
<script type="text/javascript" src="js/jquery.galleriffic.js"></script>
<script type="text/javascript" src="js/gallery-settings.js"></script>
<script type = "text/javascript">

function login(){
   window.open("login.jsp");
}</script>
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

.padding {
	display: flex;
}
.top {
	flex:1;
	padding-top:10px;
}

.my-hr1 {
border: 0;
height: 1px;
}

</style>
</head>

<body>
   <%
      String u_name = (String)session.getAttribute("user_name");
      if (session.getAttribute("u_id") == null) {
   %>
      <div id="btn_group">
      <button type="button" id="login"
         onclick="window.open('login.jsp', 'login',  'width = 600, height = 450', 'resizeable= no', 'scrollbars = no', 'status = no')">로그인</button>
      <button type="button" id="join"
         onclick="window.open('signin.jsp', 'join', 'width = 600, height = 450', 'resizeable= no', 'scrollbars = no', 'status = no')">회원가입</button>
   </div>
   <%
      } else {
   %>
   
      <div id="btn_group">
      <%=session.getAttribute("u_name")%>님 환영합니다.
      <button type="button" style="WIDTH: 65pt; HEIGHT: 25pt" id="mypage"
         onclick="location.href='mypage.jsp'">마이페이지</button>
      <button type="button" style="WIDTH: 55pt; HEIGHT: 25pt" id="logout"
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
               <li><a style="font-size:25px" href="index.jsp" class="current">Home</a><span></span></li>
               <li><a style="font-size:25px" href="short-bio.jsp">이용 수칙</a><span></span></li>
               <li><a style="font-size:25px" href="room.jsp">객실 정보</a><span></span></li>
               <li><a style="font-size:25px" href="articles.jsp">시설 안내</a><span></span></li>
               <li><a style="font-size:25px" href="contact.jsp">오시는 길</a></li>
            </ul>
            <!--end nav-pages-->
         </div>
         <!--end nav-->
      </div>
      <!--end header-->
      <div id="frontpage-content">
         <div id="container">
            <div class="gallery-content">
               <div class="slideshow-container">
                  <div id="slideshow" class="slideshow"></div>
               </div>
               <!--end slideshow-container-->
            </div>
            <!--end gallery-content-->
         </div>
         <!--end container-->
         <div class="navigation-container">
            <div id="thumbs" class="navigation">
               <a class="pageLink prev" style="visibility: hidden;" href="#"></a>
               <ul class="thumbs noscript">
                  <li><a class="thumb" href="images/photos/main_first.gif"><img
                        src="images/photos/main_first_s.gif" /></a></li>
                  <li><a class="thumb" href="images/photos/main_second.gif"><img
                        src="images/photos/main_second_s.gif" /></a></li>
                  <li><a class="thumb" href="images/photos/main_third.gif"><img
                        src="images/photos/main_third_s.gif" /></a></li>
                  <li><a class="thumb" href="images/photos/main_4.gif"><img
                        src="images/photos/main_4_s.gif" /></a></li>
                  <li><a class="thumb" href="images/photos/main_5.gif"><img
                        src="images/photos/main_5_s.gif" /></a></li>
                  <li><a class="thumb" href="images/photos/main_6.gif"><img
                        src="images/photos/main_6_s.gif" /></a></li>
                  <li><a class="thumb" href="images/photos/main_last.gif"><img
                        src="images/photos/main_last_s.gif" /></a></li>
               </ul>
               <a class="pageLink next" style="visibility: hidden;" href="#"></a>
            </div>
            <!--end thumbs-->
         </div>
         <!--end navigation-containter-->
      </div>
      <!--end frontpage-content-->
      <div id="footer">
         <div class="footer-line"></div>
         <%@ include file="footer.jsp"%>
      </div>
      <!--end footer-->
   </div>
   <!--end wrap-->
</body>
</html>
<!--  -->
