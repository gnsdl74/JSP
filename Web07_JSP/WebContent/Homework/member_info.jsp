<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환영합니다!</title>
</head>
<body>
 <%request.setCharacterEncoding("UTF-8"); // 한글 인코딩 %>
 <jsp:useBean id="member" class="edu.web.homework.MemberVO"></jsp:useBean>
 <jsp:setProperty property="*" name="member"/>
<%-- 원래는 해당 property 및 param을 모두 적어야함.   
 <jsp:setProperty property="userId" name="member" param="userId"/>
 <jsp:setProperty property="password" name="member" param="password"/>
 <jsp:setProperty property="email" name="member" param="email"/>
--%>
 <!-- 그러나 property="*"로 모든 parameter 값을 저장 -->
 
 <p>아이디 : <%=member.getUserId() %></p>
 <p>패스워드 : <%=member.getPassword() %></p>
 <p>이메일 : <%=member.getEmail() %></p>
 <p>이메일 수신여부 : <%=member.getEmailAgree() %></p>
 <p>관심사항 : </p>
 <!-- for문을 이용하여 관심사항 데이터 출력 -->
 <%--
 <% for(int i = 0 ; i < member.getInterest().length ; i++) { %>
 &nbsp;<%=i+1 %>번째 : <%=member.getInterest()[i] %><br>  
 <% } %>
 --%>
 <!-- join 메소드를 이용하여 데이터 출력 -->
 <!-- join(구분자, 배열) : 배열의 값들을 구분자로 나누어 반환 -->
 <p><%=String.join(", ", member.getInterest()) %></p>

 <p>핸드폰 : 010-<%=member.getPhone() %></p>
 <p>자기소개</p>
 &nbsp;<%=member.getIntroduce() %>

</body>
</html>