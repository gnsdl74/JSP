<%@page import="edu.web.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 결과 페이지</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		MemberVO vo = (MemberVO) request.getAttribute("vo");
	%>
	<h1><%=vo.getUserId() %>님, 환영합니다.</h1>

</body>
</html>