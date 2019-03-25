<%@page import="test.jsp.pb.db.DBCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="oracle.jdbc.driver.DBConversion"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음식 리스트</title>
</head>
<body>
<%
String foodName = request.getParameter("food_name");
String foodPrice = request.getParameter("food_price");

if(foodName!=null) {
%>
검색한 음식 이름 : <%=foodName %><br>
검색한 음식 가격 : <%=foodPrice %><br>
<%
}
%>

<form>
<input type="text" name="food_name"><br>
<input type="text" name="food_price"><br>
<button>검색</button>
</form>
<%
String sql = "select food_num,food_name,food_price from food";
sql += " where 1=1";
if(foodName!=null && !"".equals(foodName)) {
	sql += " and food_name like '%' || ? || '%' ";
}
if(foodPrice!=null && !"".equals(foodPrice)) {
	sql += " and food_price=? ";
}
sql += "order by food_num ";
try {
PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
int cnt = 1;
if(foodName!=null && !"".equals(foodName)) {
	ps.setString(cnt++,foodName);
}
if(foodName!=null && !"".equals(foodPrice)) {
	ps.setString(cnt++,foodPrice);
}
ResultSet rs = ps.executeQuery();
out.write("<table border=\"1\">");
while(rs.next()) {
	out.write("<tr>");
	out.write("<td>"+rs.getInt("food_num")+"</td>");
	out.write("<td>");
	out.write("<a href=\"/jsp-home/food/view.jsp?foodNum="
	+rs.getInt("food_num")+"\">");
	out.write(rs.getString("food_name")+"</a></td>");
	out.write("<td>"+rs.getInt("food_price")+"</td>");
	out.write("<td><button onclick=\"foodDelete("
			+rs.getInt("food_num")+")\">삭제</button></td>");
	out.write("</tr>");
	}
	out.write("</table>");
} catch(Exception e) {
	out.println(e);
} finally {
	DBCon.close();
}
%>
<a href="/jsp-home/food/insert.jsp">메뉴등록</a>

<script>
function foodDelete(foodNum) {
	var isDelete = confirm("정말 삭제하시겠습니까?");
	if(isDelete) {
		locaion.href="/jsp-home/food/delete_ok.jsp?foodNum="+foodNum;
	}
}
</script>
</body>
</html>