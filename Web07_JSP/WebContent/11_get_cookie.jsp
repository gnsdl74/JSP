<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Cookie</title>
</head>
<body>
	<h1>쿠키 가져오기(Get)</h1>
	<%
		Cookie cookie = null;
		Cookie[] cookies = null;

		// 이 도메인(어플리케이션)과 관련있는 쿠키의 값들(배열) 가져오기
		cookies = request.getCookies();

		// 특정 쿠키를 가져오기 위한 if문
		/*
			해당 jsp페이지를 실행할 경우에는 JSESSIONID가 생성되지 않음. 
			(JSESSIONID도 request에 의해 생성되는 것이기 때문에 - 다른 페이지에서 넘어오면 생성)
			그러므로 cookies != null 인 if문을 사용하는 것.
		*/
		if (cookies != null) { // 쿠키가 존재하는 경우
			out.println("<h2>모든 쿠키의 이름과 값 찾기</h2>");

			for (int i = 0; i < cookies.length; i++) {
				cookie = cookies[i];
				out.println(i + 1 + "번째 쿠키<br>");
				out.println("Name : " + cookie.getName() + ", ");
				out.println("Value : " + cookie.getValue());
				out.println("<br>");
			}
		} else { // 쿠키가 존재하지 않는 경우
			out.println("<h2>쿠키를 찾지 못했습니다.</h2>");
		}
	%>
</body>
</html>
