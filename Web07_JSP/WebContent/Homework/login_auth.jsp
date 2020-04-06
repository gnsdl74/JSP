<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 확인 페이지</title>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	if (id == null || pw == null) { // 입력값이 없으면
		out.print("<script>location.href='HW4.jsp'</script>");
	
	} else { // 입력값이 있으면
		if (!id.equals("test") || !pw.equals("1234")) { // id, pw 불일치
			out.print("<script>alert('아이디 또는 비밀번호를 확인하세요.')</script>");
			out.print("<script>location.href='HW4.jsp'</script>");
			
		} else { // id, pw 일치
			session.setAttribute("idKey", id);
			session.setAttribute("pwKey", pw);

			out.print("<script>location.href='login_result.jsp'</script>");
		}
	}
%>
</head>
</html>