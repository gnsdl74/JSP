<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Forward</title>
</head>
<body>
	<%--
	 JSP : forward
	 - 현재 페이지를 forward 페이지로 덮어씀
	 --%>
	 <h2>현재 페이지는 07_action_forward.jsp 입니다.</h2>
	 <jsp:forward page="date.jsp"></jsp:forward>
</body>
</html>