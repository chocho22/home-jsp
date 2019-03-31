<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	var arr = [];
	/* var arr2 = new Array();
	arr[arr.length] = 1;
	arr[arr.length] = 1;
	arr.push(3);
	alert(arr[2]);
	
	var map = {};
	map.key = 'value';
	map['key'] = '난 다른 value';
	alert(map.key); */
	
	for(var i=0;i<10;i++) {
		arr[i] = i+1;
	}
	console.log(arr);
	
	/* var jsonStr = '{"key":1}'
	var m = JSON.parse(jsonStr);
	m.key2=2; */
	var m2 = {key1:1,key2:3,key3:4};
	console.log(m2);
</script>
</body>
</html>