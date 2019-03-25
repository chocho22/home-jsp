<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String birth = request.getParameter("birth");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
%>
name : <%=name %><br>
birth : <%=birth %><br>
id : <%=id %><br>
pwd : <%=pwd %><br>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form action="/jsp-home/user/join_ok.jsp" method="post">
	이름 : <input type="text" name="name"><br>
	생년월일 : <input type="date" name="birth"><br>
	아이디 : <input type="text" name="id"><br>
	비밀번호 : <input type="password" name="pwd"><br>
	<button>회원 가입</button>
</form>
</body>
</html>