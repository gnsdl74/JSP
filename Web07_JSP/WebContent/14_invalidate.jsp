<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Invalidate</title>
</head>
<body>
	<h1>세션 속성(attribute) 값 제거/invalidate(무효화)</h1>
	<%
		// 세션 attribute에 데이터 저장
		session.setAttribute("userid", "admin");
		session.setAttribute("age", 16);
		
		// 세션 attribute들의 이름을 가져와서 열거형배열에 String형태로 저장
		Enumeration<String> attrNames = session.getAttributeNames();
		while(attrNames.hasMoreElements()) {
			String name = attrNames.nextElement();
			out.println(name + "<br>");
		}
		
		out.println("<hr>userid, age 속성 제거<br>");
		session.removeAttribute("userid");
		/* session.removeAttribute("age"); */
		
		attrNames = session.getAttributeNames();
		while(attrNames.hasMoreElements()) {
			String name = attrNames.nextElement();
			out.println(name + "<br>");
		}
		
		session.invalidate(); // 세션 무효화 : 모든 세션 속성 제거
		// 유효하지 않은 세션 : 세션 속성이 아무것도 없거나 세션이 invaildate된 경우
		
		// 현재 세션이 유호(valid)한 지 체크
		if(request.isRequestedSessionIdValid()) {
			out.println("유효한 세션<br>");
		} else {
			out.println("유효하지 않은 세션<br>");
		}
	%>
</body>
</html>