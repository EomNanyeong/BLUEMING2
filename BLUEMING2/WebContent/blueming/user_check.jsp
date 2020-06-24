<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String u_id = request.getParameter("u_id");
String u_pw = request.getParameter("u_pw");

if (u_id.equals("fozoa") && u_pw.equals("1234")) {
	session.setAttribute("u_id", u_id);
	response.sendRedirect("index.jsp");
} else if (!u_id.equals("fozoa") || !u_pw.equals("1234")) {
	out.println("<script>alert('아이디 혹은 비밀번호가 틀렸습니다.')");
}
%>
