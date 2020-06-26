<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>객실정보-8인실</title>
<meta charset="utf-8">
<link type="text/css" rel="stylesheet" href="styles/galleriffic.css" />
<link type="text/css" rel="stylesheet" href="styles/style.css" />
<link rel="icon" type="image/png" href="favicon.png">
<script type="text/javascript" src="js/jquery-1.3.2.js"></script>
<script type="text/javascript" src="js/jquery.opacityrollover.js"></script>
<script type="text/javascript" src="js/jquery.galleriffic.js"></script>
<script type="text/javascript" src="js/gallery-settings.js"></script>

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
#btn_book button {
   border: 3px solid #FA754F;
   background-color: rgba(0,0,0,0);
   color: #FA754F;
   margin : 0 auto;
}
#btn_group button:hover {
   color: white;
   background-color: skyblue;
}
#btn_book button:hover {
   color: white;
   background-color: #FA754F;
}

.parent {
   display: flex;
   padding: 6px;
}

.parent .child {
   flex: 1;
   text-align: center;
}

.left {
   text-align: center;
   padding: 0.5em
}

.center {
   text-align: center;
   border-left: 0.1em solid #000000;
   padding: 0.5em;
}

.right {
   text-align: center;
   border-left: 0.1em solid #000000;
   padding: 0.5em;
}

.padding {
   display: flex;
}

.top {
   flex: 1;
   padding-top: 10px;
}

.my-hr1 {
   border: 0;
   height: 1px;
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
               <li><a style="font-size: 25px" href="index.jsp">Home</a><span></span></li>
               <li><a style="font-size: 25px" href="short-bio.jsp">이용 수칙</a><span></span></li>
               <li><a style="font-size: 25px" href="room.jsp" class="current">객실 정보</a><span></span></li>
               <li><a style="font-size: 25px" href="articles.jsp">시설 안내</a><span></span></li>
               <li><a style="font-size: 25px" href="contact.jsp">오시는 길</a></li>
            </ul>
            <!--end nav-pages-->
         </div>
         <!--end nav-->
      </div><br />
      <!--end header-->
      <div class="main">
         <p style="font-size: 36px; margin:80px 0px 10px 0px;" class="sectionTitle">8인실</p>

         <div class="main-body">
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
                     <li><a class="thumb" href="images/photos/room1_1.gif"><img
                           src="images/photos/room1_1_s.gif" /></a></li>
                     <li><a class="thumb" href="images/photos/room1_2.gif"><img
                           src="images/photos/room1_2_s.gif" /></a></li>
                     <li><a class="thumb" href="images/photos/room1_3.gif"><img
                           src="images/photos/room1_3_s.gif" /></a></li>
                     <li><a class="thumb" href="images/photos/room1_4.gif"><img
                           src="images/photos/room1_4_s.gif" /></a></li>
                     <li><a class="thumb" href="images/photos/room5.gif"><img
                           src="images/photos/room5_s.gif" /></a></li>
                  </ul>
                  <a class="pageLink next" style="visibility: hidden;" href="#"></a>
               </div>
               <br />
               
               <!--end thumbs-->
               

            </div>
      <div id="btn_book">
         <button type="button" style="WIDTH: 140pt; HEIGHT: 55pt;font-size:26px";
               onclick="location.href='book.jsp'">예약하기</button>
      
         
         </div>
            <br />
            
            <!--end navigation-containter-->
         </div>
         
         <br clear=left />
         <div class="parent">
            <div class='child left'>
               <img src="images/photos/human.png" width="20%" alt="" /><br /> <br />
               <p style='font-size: 22px'>최대 투숙 인원</p>
               <p>8</p>
               <br />
            </div>
            <div class='child center'>
               <img src="images/photos/bed.png" width="20%" alt="" /><br /> <br />
               <p style='font-size: 22px'>침구 개수</p>
               <p>8</p>
               <br />
            </div>
            <div class='child right'>
               <img src="images/photos/house.png" width="20%" alt="" /><br /> <br />
               <p style='font-size: 22px'>객실 사이즈</p>
               <p>70 평방미터</p>
               <br />
            </div>
         </div>
      </div>
      <br />
      <div class="content-body">
         <div class="content-body-inner">
            <!-- Amenities -->
            <p style="font-size: 36px" class="sectionTitle">편의시설</p>
            <br />
            <div class='parent'>
               <div class='child left'>

                  <p>주방</p>
                  <p>전자레인지</p>
                  <p>테라스</p>
                  <p>에어컨</p>
                  <p>타월</p>
                  <p>TV</p>
                  <p>식탁</p>
                  <p>냉장고</p>
               </div>
               <div class='child center'>
                  <p>전기포트</p>
                  <p>주방식기</p>
                  <p>건조기</p>
                  <p>세탁기</p>
                  <p>옷장</p>
                  <p>화장지</p>
                  <p>화장실</p>
                  <p>쿡탑</p>
               </div>
               <div class='child right'>
                  <p>토스터</p>
                  <p>비데</p>
                  <p>난방시설</p>
                  <p>침대 옆 콘센트</p>
                  <p>청소도구</p>
                  <p>와이파이</p>
                  <p>위성채널</p>
                  <p>스트리밍 서비스(Netflix)</p>
               </div>
            </div>
            <br />
            <br />
         </div>
         <div>
            <a>
               <p style="text-align: left">
                  입실시간 : 오후 15시 ~ 19시 (※ 입실 외 시간에 입실 시 사전 연락바랍니다.) <br /> 퇴실시간 : 오전
                  11시 <br /> ※ 펜션의 상세이용수칙은 이용수칙을 참고해주세요. <br /> <br /> <br />
               </p>
            </a>
         </div>
         <!--end main-->
         <div id="footer">
            <div class="footer-line"></div>
            <%@ include file="footer.jsp"%>
         </div>
         <!--end footer-->
      </div>
   </div>
</body>
</html>