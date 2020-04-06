<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 보기</title>
</head>
<body>
	<%
		String fileName = (String) session.getAttribute("fileName");
	%>
	<img alt="아바타2" src="images/<%=fileName %>" width="500" height="300">
</body>
</html>