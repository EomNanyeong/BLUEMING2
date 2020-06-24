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
<title>LoginPro</title>
</head>
<body>
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
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "mini", "mini");
		stmt = conn.prepareStatement(sql.toString());
		stmt.setString(1, id);
		stmt.setString(2, pw);
		rs = stmt.executeQuery();
		
		if(id.equals("admin") && pw.equals("1234")){
			session.setAttribute("id",id);
			response.sendRedirect("login_action.jsp");
		}else{
			out.println("<script>alert('아이디혹은 비밀번호가 틀렸습니다.'); history.back();</script>");
		}
%>
<script type="text/javascript">
	alert('아이디 혹은 비밀번호가 틀립니다.');
	location=history.back();
</script>
<%
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		if(rs!=null)  try{rs.close();  }catch(Exception e){}
		if(stmt!=null)try{stmt.close();}catch(Exception e){}
		if(conn!=null)try{conn.close();}catch(Exception e){}
	}
%>
</body>
</html>