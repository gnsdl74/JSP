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
	 Request
	 - 요청한 HTTP의 객체(ip 주소, 파라미터 등)를 갖고 있는 객체(서블릿의 HttpServletRequest와 동일)
	 - 요청한 객체만 가지고 있음(요청 위치를 벗어나면 사라짐)
	 --%>
	<%
		out.println("당신의 IP 주소 : " + request.getRemoteAddr() + "<br>");
		out.println("당신의 Host Name : " + request.getHeader("host") + "<br>");
		out.println("당신의 쿠키 : " + request.getHeader("cookie") + "<br>");
		out.println("당신의 servlet 경로 : " + request.getServletPath() + "<br>");

		// Form에서 전송된 데이터들은 getParameter()로 받아옴
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		System.out.println("제 이름은 : " + firstName + lastName + "입니다.");
	%>
	
	<h1>결과 페이지</h1>
	<p>제 이름은 <%= firstName + lastName %></p>
</body>
</html>