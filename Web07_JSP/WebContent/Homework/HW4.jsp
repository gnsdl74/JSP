<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<%
	String id = (String)session.getAttribute("idKey");
	if(id != null) {
%>
	<script type="text/javascript">
	alert("로그인 되었습니다.");
	location.href="login_result.jsp";
	</script>
<%		
	}
%>
</head>
<body>
	<!-- 
	 1. 로그인 정보 전송 페이지 생성(HW4.jsp)
	 - <form>태그 생성
	 - id, pw 전송(전송 경로 : login_auth.jsp)
	 
	 2. 로그인 인증 jsp 생성(login_auth.jsp)
	 - 전송받은 id, pw를 확인하여 id=="test", pw="1234"일 경우
	 - id, pw 세션을 생성
	 - 생성 이후에 login_result.jsp 페이지로 이동
	   -> out.print("<script>location.href="login_result.jsp"</script>);
	 - 전송받은 id, pw가 일치하지 않는 경우, HW4.jsp 페이지로 이동
	 
	 3. 로그인 결과 페이지(login_result.jsp) 페이지
	 - 세션에서 id값을 꺼내서 출력	 
	 -->
	 <h1>로그인 페이지</h1>
	 <form action="login_auth.jsp" method="post">
	 	<p>아이디<br><input type="text" name="id" placeholder="아이디 입력" required="required"/></p>
	 	<p>비밀번호<br><input type="password" name="pw" placeholder="비밀번호 입력" required="required"/></p>
	 	<input type="checkbox" name="isSaved" value="yes"/>아이디 저장<br>
	 	<input type="submit" value="Login" /><input type="reset" value="reset"/>
	 </form>
</body>
</html>