<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과 페이지</title>
<%
 String isAgreed = request.getParameter("isSaveAgreed");
 // checkbox가 선택될 경우 Agree가 저장
 System.out.println(isAgreed);
 
 if(isAgreed != null) { // checkbox가 선택될 경우 실행
	Cookie id = new Cookie("id", request.getParameter("id"));
	Cookie pw = new Cookie("pw", request.getParameter("pw"));
	
	// 쿠키 만료 시간 : 60초
	id.setMaxAge(60);
	pw.setMaxAge(60);
	
	// 쿠키를 브라우저로 전송
	response.addCookie(id);
	response.addCookie(pw);
 }
%>
</head>
<body>
	<h1>로그인 결과 화면</h1>
	<p><%= request.getParameter("id") %>님 환영합니다.</p>
</body>
</html>