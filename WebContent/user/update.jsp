<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업데이트</title>
</head>
<body>
<%
String url = "jdbc:oracle:thin:@localhost:1521:TestDB";
String user = "CHORONG";
String password = "12345";
Connection con = DriverManager.getConnection(url,user,password);
String name = "이시리";
String id = "siri";
String sql = "update users set id=? where name=? ";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2,name);
int cnt = ps.executeUpdate();
String result = "수정 실패";
if(cnt==1) {
	result = "수정 성공";
}

con.close();
%>

결과 : <%=result%><br>
</body>
</html>