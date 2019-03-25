<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제</title>
</head>
<body>
<%
String name = "이시우";
String url = "jdbc:oracle:thin:@localhost:1521:TestDB";
String user = "CHORONG";
String password = "12345";
Connection con = DriverManager.getConnection(url,user,password);
String sql = "delete from users where name=? ";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,name);
int cnt = ps.executeUpdate();

String result = "실패";
if(cnt==1) {
	result = "성공";
}
%>

삭제 결과 : <%=result %>
</body>
</html>