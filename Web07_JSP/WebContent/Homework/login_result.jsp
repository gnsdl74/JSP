<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 페이지</title>
<style type="text/css">
div {
	text-align: center;
	background-color: lightgrey;
	border: 2px solid black;
}
</style>
<%
	request.setCharacterEncoding("UTF-8");

	String id = (String) session.getAttribute("idKey");
	String pw = (String) session.getAttribute("pwKey");

	if (id == null || pw == null) {
		out.print("<script>location.href='HW4.jsp'</script>");
	}
%>
</head>
<body>
	<div>
		<h1>회원 정보</h1>
		<h2>
			<span style="color: green;"><%=id%></span> 님 환영합니다 !
		</h2>
		<h3>
			비밀번호 :
			<%=pw%></h3>
		<p>
			<button type="button" onclick="logout()">Logout</button>
		</p>

	<script type="text/javascript">
      function logout() {
        <%session.invalidate();%>
        alert("로그아웃되었습니다.");
        location.href = "HW4.jsp";
      }
    </script>
	</div>
</body>
</html>