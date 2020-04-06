<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Request</title>
</head>
<body>
	<h2>GET/POST 방식</h2>
	
	<!-- get 방식 -->
	<form action="08_request.jsp" method="get">
		성<br><input type="text" name="firstName"/><br>
		이름<br><input type="text" name="lastName"/><br>
		<br><input type="submit" value="전송"/>
	</form>
	<hr>
	
	<!-- post 방식 -->
	<form action="08_request.jsp" method="post">
		성<br><input type="text" name="firstName"/><br>
		이름<br><input type="text" name="lastName"/><br>
		<br><input type="submit" value="전송"/>
	</form>
</body>
</html>