<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산 결과 페이지</title>
</head>
<body>
	<%
		// form에서 전송된 parameter 값은 String(text, number 상관 없이)
		int inputMoney = Integer.parseInt(request.getParameter("inputMoney"));
		int period = Integer.parseInt(request.getParameter("period"));
		double interest = Double.parseDouble(request.getParameter("interest"));

		int totalInputMoney = inputMoney * period;
		double totalInterest = totalInputMoney * interest / 100;
		double totalReceiveMoney = totalInterest + totalInputMoney;

		DecimalFormat df = new DecimalFormat("￦ #,###,###");
	%>

	<h2>입력 정보[월 금액, 적금 기간, 연 이자]</h2>
	<p>월 금액 <%=df.format(inputMoney) %></p>
	<p>적금 기간 <%=period %></p>
	<p>연 이자 <%=interest %></p>
	<hr>
	<h2>적금 계산 결과</h2>
	<p>총 납인 금액 <%=df.format(totalInputMoney) %></p>
	<p>발생 이자 <%=df.format(totalInterest) %></p>
	<p>총 수령액 <%=df.format(totalReceiveMoney) %></p>
</body>
</html>