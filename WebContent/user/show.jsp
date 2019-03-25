<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지</title>
</head>
<body>
<%
String path = request.getContextPath();
out.println(path);
%>
<img src="../img/a.jpg">
<img src="/jsp-home/img/a.jpg">
</body>
</html>