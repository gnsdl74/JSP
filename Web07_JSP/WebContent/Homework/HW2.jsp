<%@ page import="edu.web.homework.ContactVO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 구문 과제</title>
<style type="text/css">
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}
</style>
</head>
<body>
	<!-- 
	 1. 이름, 연락처, 이메일을 변수로 갖는 ContactVO.java 를 생성
  	 (위치 : src/edu.web.homework/ContactVO.java)
  	 2. HW2.jsp 파일
   	 - ArrayList<ContactVO>를 선언 및 객체 생성(지역변수)
   	 - 임의로 3 ~ 5개의 vo 데이터를 생성해서 ArrayList에 저장
   	 - ArrayList에 저장한 데이터를 반복문을 사용하여 테이블에 출력
  	-->

	<%
		@SuppressWarnings("unchecked")
		ArrayList<ContactVO> list = (ArrayList<ContactVO>) request.getAttribute("list");
	%>

	<table>
		<thead>
			<tr>
				<th>이름</th>
				<th>전화번호</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
			<%
				for (int i = 0; i < list.size(); i++) {
			%>
			<tr>
				<td><%=list.get(i).getName()%></td>
				<td><%=list.get(i).getPhone()%></td>
				<td><%=list.get(i).getEmail()%></td>
			</tr>
			<%
				}
			%>
		</tbody>

	</table>
</body>
</html>