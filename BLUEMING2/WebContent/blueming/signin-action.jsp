<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="org.apache.commons.codec.digest.DigestUtils"%>


<%
	String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String hp = request.getParameter("hp");
pw = DigestUtils.sha512Hex(pw); //lib는 등록했으나 안됨 DB에서 pw용량을 늘려도 안되고
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="favicon.png">
<title>Insert title here</title>
</head>
<body>
	<%
		boolean result = false;
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	StringBuffer sql = new StringBuffer();
	sql.append(" select u_id          ");
	sql.append(" from user_info       ");
	sql.append(" where u_id = ?");
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "km", "km");
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		System.out.println("1");
		if (rs.next()) {
	%>
	<script type="text/javascript">
		alert('중복된 아이디 입니다.');
		location = history.back();
	</script>
	<%
		} else {
			System.out.println("2");
		sql.setLength(0);
		sql.append(" insert into user_info (u_id, u_pw, u_name, u_hp)");
		sql.append(" values (?, ?, ?, ?)");
		pstmt = null;
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		pstmt.setString(4, hp);
		System.out.println("3");
		if (pstmt.executeUpdate() > 0) {
			System.out.println("4");
			result = true;
		}
		System.out.println("5");
	%>
	<script type="text/javascript">
		alert('회원가입이 완료되었습니다.');
		window.close();
	</script>

	<%
	}
	} catch (Exception e) {
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
</body>
</html>