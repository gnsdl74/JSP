<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>적금 계산기</title>
</head>
<body>
	<h1>적금 계산</h1>
	<!-- 
	 JSP 파일 생성(적금 계산 결과 페이지)
	 1. 월 적금액, 기간, 이자를 전송하는 form 만들기(HW1.jsp)
	 2. 월 적금액, 기간, 이자를 받아와서 계산하여 보여주는 jsp 파일 만들기(calc_money.jsp)
	-->
	<form action="calc_money.jsp" method="get">
		<p>
			<label>월 금액 : <input type="number" name="inputMoney" /></label>
		</p>
		<p>
			<label>적금 기간 : <input type="number" name="period" /></label>
		</p>
		<p>
			<label>연 이율 : <input type="text" name="interest" />%</label>
		</p>
		<hr>
		<input type="submit" value="계산하기" />
	</form>
</body>
</html>