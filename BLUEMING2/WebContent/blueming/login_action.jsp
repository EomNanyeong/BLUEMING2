<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
String pw = request.getParameter("password");
//pw = DigestUtils.sha512Hex(pw);
String user_name = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function popupClose(form) {
		form.target = opener.name;

		form.submit();
		if (opener != null) {
			opener.login = null;
			self.close();
		}
	}
</script>
<title>LoginPro</title>
</head>
<body>
<<<<<<< HEAD
	<form method="post" name="writeform" action="index.jsp"
		target="MemberServlet.do">
		<%
			Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		StringBuffer sql = new StringBuffer();
		sql.append(" select u_id, u_name");
		sql.append(" from user_info");
		sql.append(" where  u_id=? and u_pw=?");
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "km", "km");
			stmt = conn.prepareStatement(sql.toString());
			stmt.setString(1, id);
			stmt.setString(2, pw);
			rs = stmt.executeQuery();

			if (id.equals("next") && pw.equals("1111")) {
				session.setMaxInactiveInterval(60*60);
				session.setAttribute("id", id);
		%>
		<script type="text/javascript">
			alert('환영합니다.');
			window.close();
			opener.document.location.reload();
		</script>
		<%
			} else {
			out.println("<script>alert('아이디혹은 비밀번호가 틀렸습니다.'); history.back();</script>");
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	System.out.println("1");
	StringBuffer sql = new StringBuffer();
	sql.append(" select u_id, u_name");
	sql.append(" from user_info");
	sql.append(" where  u_id=? and u_pw=?");
	try {
		System.out.println("2");
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "blueming", "blueming");
		stmt = conn.prepareStatement(sql.toString());
		stmt.setString(1, id);
		stmt.setString(2, pw);
		rs = stmt.executeQuery();
		System.out.println("1");
		if(id.equals("next") && pw.equals("1111")){
			session.setAttribute("id",id);
			response.sendRedirect("login_action.jsp");
			%>
			<script type="text/javascript">
				location.href='index.jsp';
			</script>
			<%
		}else{
			System.out.println("3");
			out.println("<script>alert('아이디혹은 비밀번호가 틀렸습니다.'); location=history.back();</script>");
>>>>>>> branch 'master' of https://github.com/EomNanyeong/BLUEMING2.git
		}
<<<<<<< HEAD
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
			rs.close();
				} catch (Exception e) {
				}
			if (stmt != null)
				try {
			stmt.close();
				} catch (Exception e) {
				}
			if (conn != null)
				try {
			conn.close();
				} catch (Exception e) {
				}
		}
		%>
	</form>
=======
%>
<%
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		if(rs!=null)  try{rs.close();  }catch(Exception e){}
		if(stmt!=null)try{stmt.close();}catch(Exception e){}
		if(conn!=null)try{conn.close();}catch(Exception e){}
	}
%>
>>>>>>> branch 'master' of https://github.com/EomNanyeong/BLUEMING2.git
</body>
</html>