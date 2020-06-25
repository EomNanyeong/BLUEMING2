<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Juma | Short Bio</title>
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
</style>
</head>
<body>
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
               <li><a href="index.jsp" class="current">Home</a><span></span></li>
               <li><a href="short-bio.jsp">이용 수칙</a><span></span></li>
               <li><a href="short-bio.jsp">객실 정보</a><span></span></li>
               <li><a href="articles.jsp">시설 안내</a><span></span></li>
               <li><a href="contact.jsp">오시는 길</a></li>
            </ul>
            <!--end nav-pages-->
         </div>
         <!--end nav-->
      </div>
      <!--end header-->
      <div id="main">
         <div id="content">
            <div class="article page">
               <h2 class="title">[ 이용 규칙 ]</h2>
               <p>1. 꼭 숙지해주세요.</p>
               <p>
                  2. 읽어보시지 않고 생기는 불이익은 예약자의 책임입니다.<br /> - 외출 시 귀중품은 불미스러운 일을 방지하기
                  위해 꼭, 소지하시기 바랍니다.
               </p>
               <p>3. 잠자리는 1개의 더블 매트리스 세팅 외에 추가 침구 제공은 하지 않습니다.</p>
               <br />

               <h2>[ 입실 및 퇴실 ]</h2>
               <p>※ 입실</p>
               - 오후 3시부터 9시까지 (짐은 미리 맡길 수 있습니다.)<br /> 부득이하게 규정 시간 이후에 입실 하셔야 하는
               분은 꼭 미리 말씀해주세요.
               </p>
               <p>※ 퇴실</p>
               <p>
                  오전 11시<br /> - 퇴실 시간이 지날시 추가 요금이 발생하오니 유념해주세요.
               </p>
               <br />


               <h2>[ 환불 규정 ]</h2>
               <p>
                  - 5일 전 취소 : 예약 금액의 100 % 환불 <br /> - 숙박 예정일로부터 4일전 ~ 당일까지는 환불이
                  불가합니다.
               </p>
               <br />


               <h2>[ 시설 안내 ]</h2>
               <p>
                  1. 샴푸, 린스, 바디 워시, 비누, 타월, 헤어 드라이기 등이 구비되어 있습니다. <br />2. 1일 1인당
                  생수 500ml 1병씩 제공됩니다. <br />3. 와이파이가 가능합니다. <br />4. 바베큐 시설이 구비되어
                  있습니다. 신청하실 때 요청 사항에 알려주세요. <br />5. 사전에 요청하시면 위치로 픽업 가능합니다. <br />6.
                  수영장은 만 6세 미만의 아동은 보호자와 동반해도 사용이 불가능하며, 수영장은 7, 8월에만 운영됩니다. (우천시 사용
                  불가능) <br /> ※ 수영장은 12, 1월에는 25˚C 이상의 온수의 노천탕으로 운영됩니다. (눈이 오거나 우천시
                  사용 불가능)
               </p>
               <br />


               <h2>[ 이용 시 유의 사항 ]</h2>
               <p>
                  1. 펜션 내에서는 절대 금연이며 캔들이나 향 사용도 불가능합니다. <br />전자 담배 포함이며, 화재의 위험이
                  있습니다. <br />2. 냄새가 심한 음식은 조리가 불가합니다. <br />필이 환기를 시켜주세요. <br />
                  3. 사용하신 잔이나 도구 등은 다음 사용자를 위해서 세척 후 싱크대에 정리하여 주십시오. <br />기물이나 실내외
                  환경(벽체, 바닥제 등)을 파손하신 경우, 도난시에 배상하셔야 하오니 주의하여 다뤄 주십시오. <br />4. 침구나
                  커텐, 벽지 등에 낙서를 하거나 지워지지 않는 오물을 묻히지 않도록 주의하여 주십시오. <br />(헤어 염색, 젖은
                  옷을 그대로 침구에 이염되지 않도록 해주십시오. 이염시 침구 세탁 비용을 배상하셔야 합니다.) <br />5. 주위
                  주민들에게 피해가 가는 행동은 삼가하여 주십시오. <br />6. 반려 동물은 함께 할 수 없습니다.
               </p>
               <br /> <br />
               
               <p>※ 위의 항목을 어길 시 환불없이 즉각 퇴실 조치 합니다. <br />
               <br /> ※이런 일이 발생하지 않도록 주의하여 주시기
                  바랍니다.</p>
                  
               <br />
               
                  
                  <!--end testimonial-->
               </div>
               <!--end testimonials-->
            </div>
            <!--end post-->
         </div>
         <!--end content-->
         <!--
         <div id="sidebar">
            <div class="author-photo">
               <img src="images/author-img.jpg" alt="" />
            </div>
            <!--end author-photo-->
            
            <!--end author-details-->
         </div>
         -->
         <!--end sidebar-->
      </div>
      <!--end main-->
      <div id="footer">
         <div class="footer-line"></div>
         <p class="copyright">
            Copyright &copy; <a href="#">Domain Name</a> - All Rights Reserved /
            Design By <a target="_blank" href="http://www.chris-creed.com/">Chris
               Creed</a>
         </p>
      </div>
      <!--end footer-->
   </div>
   <!--end wrap-->
   <div align=center>
      This template downloaded form <a
         href='http://all-free-download.com/free-website-templates/'>free
         website templates</a>
   </div>
</body>
</html>