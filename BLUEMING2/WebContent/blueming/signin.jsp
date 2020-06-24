<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="favicon.png">
<title>Insert title here</title>
<style>
        #wrap{
            width:530px;
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
        }
        table{
        	width:60%;
        	margin:auto;
        	text-align:center;
            border:3px solid skyblue;
        }
        td{
            border:1px solid skyblue;
        }
        #title{
            background-color:skyblue;
        }
    </style>
</head>
<body>
<div id="wrap">
        <br><br>
        <b><font size="6" color="gray">회원가입</font></b>
        <br><br><br>
        
        <form action="signin-action.jsp" method="get">
            <table style = "width:auto;">
                <tr>
                    <td id="title">아이디</td>
                    <td>
                        <input type="text" name="id" autofocus="autofocus" maxlength="20"> 
                    </td>
                </tr>
                        
                <tr>
                    <td id="title">비밀번호</td>
                    <td>
                        <input type="password" name="pw" maxlength="15">
                    </td>
                </tr>
                <tr>
                    <td id="title">이름</td>
                    <td>
                        <input type="text" name="name" maxlength="40">
                    </td>
                </tr>
                <tr>
                    <td id="title">휴대전화</td>
                    <td>
                        <input type="text" name="hp" />
                    </td>
                </tr>
            </table>
            <br>
            <input type="submit" value="가입">  <input type="button" value="취소">
        </form>
    </div>
</body>
</html>