<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
<script type="text/javascript">
   function login() {
      window.open("login.jsp");
   }
</script>
<link
   href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
   rel="stylesheet">
<style type="text/css">
body {
   font-family: 'Do Hyeon', sans-serif;
   font-size: 20px
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

#btn_group_my button {
   margin-top: 30px;
   border: 2px solid skyblue;
   background-color: rgba(0, 0, 0, 0);
   color: skyblue;
   padding: 15px;
}

#btn_group_my button:hover {
   color: white;
   background-color: skyblue;
}

#a div:first-child {
   display: inline-block;
   width: 49.5%;
   background: green;
}

#a div:nth-child(2) {
   display: inline-block;
   width: 49.5%;
   background: red;
   
}
#a div:nth-child(3) {
   width:100%;
   background: blue;
   text-align:center;
}
</style>
</head>

<body>      
<script>
function openTab(evt, tabName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
}</script>
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
      <button type="button" id="mypage" onclick="location.href='mypage.jsp'">My
         Page</button>
      <button type="button" id="logout" onclick="location.href='logout.jsp'">로그아웃</button>

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
               <li><a href="index.jsp" class="current">Home</a><span></span></li>
               <li><a href="short-bio.jsp">이용 수칙</a><span></span></li>
               <li><a href="room.jsp">객실 정보</a><span></span></li>
               <li><a href="articles.jsp">시설 안내</a><span></span></li>
               <li><a href="contact.jsp">오시는 길</a></li>
            </ul>
            <!--end nav-pages-->
         </div>
         <!--end nav-->
      </div>
      <!--end header-->
      
 <%
   boolean result = false;
   Connection conn = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   
   String check_id = session.getAttribute("u_id");
   
   String user_id = null;
   String user_pw = null;
   String user_name = null;
   String user_hp = null;
   
   StringBuffer sql = new StringBuffer();
   sql.append(" select u_id, u_pw, u_name, u_hp");
   sql.append(" from user_info       ");
   sql.append(" where u_id = ?");
   try {
      Class.forName("oracle.jdbc.OracleDriver");
      conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "km", "km");
      pstmt = conn.prepareStatement(sql.toString());
      pstmt.setString(1, session.getAttribute("u_id"));
      rs = pstmt.executeQuery();
      if (rs.next()) {
         user_id = rs.getString("u_id");
         user_pw = rs.getString("u_pw");
         user_name = rs.getString("u_name");
         user_hp = rs.getString("u_hp");
      } else {
         %>
         <script type="text/javascript">
            alert('다시 로그인해주세요.');
            location.href = "index.jsp";
         </script>
         <%
      }
      }catch (Exception e) {
         e.printStackTrace();
      } finally {
         if (rs != null)
            try {
         rs.close();
            } catch (Exception e) {
            }
         if (pstmt != null)
            try {
         pstmt.close();
            } catch (Exception e) {
            }
         if (conn != null)
            try {
         conn.close();
            } catch (Exception e) {
            }
      }
%>
      <div id="a">
         <div id="btn_group_my">
            <button type="button" style="WIDTH: 100pt; HEIGHT: 40pt"
               onclick="openTab(event, 'tab2')">회원 정보</button>
         </div>
         <div id="btn_group_my">
         <button type="button" style="WIDTH: 100pt; HEIGHT: 40pt"
               onclick="openTab(event, 'tab3')">예약정보 조회</button>

         
         </div>
         <div id="btn_group_my">
         
         <div id="tab1" class="tabcontent" style="display: block; margin:0 auto;">
          <img src="images/photos/mypage_p.png" alt=""/>
       </div>
       
       <div id="tab2" class="tabcontent" style="display: none;">
         <%=user_id%>
         <%=user_pw%>
         <%=user_name%>
         <%=user_hp%>
       </div>
       
         <div id="tab3" class="tabcontent" style="display: none;"> 탭3 내용
         </div>
         
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