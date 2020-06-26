<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Blueming 이용 수칙</title>
<meta charset="utf-8">
<link type="text/css" rel="stylesheet" href="styles/style.css" />
<script type="text/javascript" src="js/jquery-1.3.2.js"></script>
<!--[if IE 6]>
<script src="js/ie6-transparency.js"></script>
<script>DD_belatedPNG.fix('#header .logo img, .subtitle img, .slideshow-container, .navigation-container #thumbs .thumbs li .thumb img, .navigation a.next, .footer-line, #sidebar .author-photo, .line, .commentlist .comment-reply-link, #contact-page #contact .submit');</script>
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

#content {
margin : 10px 0px 0px 100px; padding :0px 0px 0px 3px}


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
         onclick="window.open('signin.jsp', 'width = 600', 'height = 100')">회원가입</button>
   </div>
   <%
      } else {
   %>
   
      <div id="btn_group">
      <%=session.getAttribute("u_name")%>님 환영합니다.
      <button type="button" id="mypage"
         onclick="location.href='mypage.jsp'">My Page</button>
      <button type="button" id="logout"
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
               <li><a href="short-bio.jsp" class="current">이용수칙</a><span></span></li>
               <li><a href="short-bio.jsp">객실 정보</a><span></span></li>
               <li><a href="articles.jsp">시설 안내</a><span></span></li>
               <li><a href="contact.jsp">오시는 길</a></li>
            </ul>
            <!--end nav-pages-->
         </div>
         <!--end nav-->
      </div>
      <!--end header-->
         <div id="content">
            <div class="article_page" style=width:800px;>
               <h2 class="title" ></h2>
               <p>-- 아래의 유의사항을 반드시 숙지하여 불이익이 발생하지 않도록 주의하시기 바랍니다 --<br />
               불이익이 발생할 시, 저희 펜션에서는 책임을 지지 않습니다. 즐거운 여행 되시기 바랍니다.</p>
               <br /><br />

               <h2 >[ 입실 및 퇴실 ]</h2>
               <p>※ 입실 : 3PM ~ 9PM<br />
               - 짐은 미리 맡기실 수 있습니다.<br />- 부득이하게 규정 시간 이후에 입실 하셔야 하는
               분은 꼭 미리 말씀해주세요.
               </p>
               <p>※ 퇴실 : 11AM<br />
               퇴실 시간이 지날시 추가 요금이 발생하오니 유념해주세요.
               </p>
               <br /><br />


               <h2 >[ 환불 규정 ]</h2>
               <p>
                  - 5일 전 취소 : 예약 금액의 100 % 환불 <br /> - 숙박 예정일로부터 4일전 ~ 당일까지는 환불이
                  불가합니다.
               </p>
               <br /><br />


               <h2>[ 시설 안내 ]</h2>
               <p>
                  1. 샴푸, 린스, 바디 워시, 비누, 타월, 헤어 드라이기 등이 구비되어 있습니다. <br />2. 1인당
                  생수 500ml가 하루에 1병씩 제공됩니다. <br />3. 와이파이 사용이 가능합니다. <br />
                  4. 바베큐 시설은 사전에 요청하신분에 한해서만 사용이 가능합니다. (예약시 요청 사항에 알려주시기 바랍니다.) 
                   <br />5. 사전에 요청하시면 위치로 픽업 가능합니다. <br />6.
                  수영장은 만 6세 미만의 아동은 보호자와 동반해도 사용이 불가능하며, 수영장은 7, 8월에만 운영됩니다.
                   <br /> &nbsp ※ 겨울에는 25˚C 이상의 온수의 노천탕으로 운영됩니다. 
                   <br /> &nbsp ※ 기상이 좋지 않을 경우 운영을 중지합니다.<br />
                   7. 사전에 동의받지 않은 추가 인원은 추가하실 수 없습니다.
               </p>
               <br /><br />


               <h2>[ 이용 시 유의 사항 ]</h2>
               <p>
                  1. 화재의 위험을 방지하기 위해 펜션 내에서는 흡연을 금하여 캔들이나 향 사용도 불가합니다. 
                  <br />&nbsp (전자담배 또한 사용이 불가합니다.) <br />2. 냄새가 심한 음식은 조리가 불가합니다. <br />
                  3. 사용하신 잔이나 도구 등은 다음 사용자를 위해서 세척 후 싱크대에 정리하여 주십시오. <br />&nbsp 기물이나 실내외
                  환경(벽체, 바닥제 등)을 파손/도난시에 배상하셔야 하오니 주의해 주십시오. <br />4. 침구나
                  커텐, 벽지 등에 낙서를 하거나 지워지지 않는 오물을 묻히지 않도록 주의하여 주십시오. <br />&nbsp (헤어 염색, 젖은
                  옷을 그대로 침구에 이염되지 않도록 해주십시오. 이염시 세탁 비용을 배상하셔야 합니다.) <br />5. 주위
                  주민들에게 피해가 가는 행동은 삼가하여 주십시오. <br />6. 애완동물 동반입실 금지입니다.
               </p>
               <br /> <br />
               
               <p>※ 위의 항목을 어길 시 환불없이 즉각 퇴실 조치 합니다. <br />
               <br /> ※이런 일이 발생하지 않도록 주의하여 주시기
                  바랍니다.</p>
                  
               <br /><br /><br />
               
      </div>
      </div>
      <!--end main-->
      <div id="footer" style = width:960px;>
         <div class="footer-line"></div>
         <%@ include file="footer.jsp"%>
      </div>
      <!--end footer-->
   </div>
   <!--end wrap-->
   
</body>
</html>