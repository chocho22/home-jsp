<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String birth = request.getParameter("birth");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

String url = "jdbc:oracle:thin:@localhost:1521:TestDB";
String user = "CHORONG";
String password = "12345";
Class.forName("oracle.jdbc.OracleDriver");

Connection con = DriverManager.getConnection(url,user,password);
String sql = "select name, birth, id, pwd from users";
PreparedStatement ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery();
while(rs.next()) {
	out.println(rs.getString("name"));
	out.println(", " + rs.getString("birth"));
	out.println(", " + rs.getString("id"));
	out.println(", " + rs.getString("pwd"));
	out.println("<br>");
}
%>

<!-- name : <%=name %><br>
birth : <%=birth %><br>
id : <%=id %><br>
pwd : <%=pwd %><br> -->

