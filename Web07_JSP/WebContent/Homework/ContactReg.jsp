<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연락처 입력 페이지</title>
</head>
<body>
	<h1>연락처 입력</h1>
	<form action="../contact" method="post">
		<input type="text" name="name" placeholder="이름 입력"/><br>
		<input type="tel" name="phone" placeholder="전화번호 입력"/><br>
		<input type="email" name="email" placeholder="이메일 입력"/><br>
		<input type="submit" value="연락처 등록">
	</form>
</body>
</html>