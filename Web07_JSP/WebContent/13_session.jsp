<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
<%
  // session 객체 : session 범위에 존재하는 객체
  // 세션 생성 타입 가져오기
  Date createTime = new Date(session.getCreationTime());

  // 이 웹페이지의 마지막 접속 시간 가져오기
  Date lastAccessTime = new Date(session.getLastAccessedTime());
  
  String title = "재방문을 환영합니다!!";
  int visitCount = 0;
  String visitCountKey = "visitCount";
  String userIdKey = "testId";
  String userId = "test";
  
  // 세션이 새로 생성되었는지 확인
  if (session.isNew()){
   System.out.println("세션이 새로 생성됨"); 
   visitCount = 0;
   title = "환영합니다. 처음 방문하셨습니다!!"; 
   session.setAttribute(userIdKey, userId); 
   // 세션에 값을 저장하면 세션 정보는 새로 생성된 것이 아님
   session.setAttribute(visitCountKey, visitCount);
   
   // 세션 유지 시간 - 아무 동작이 없이 해당 시간이 지나면 삭제, 입력이나 동작이 있을 경우 다시 시작
   // 세션 유지 시간 설정 방법 1
   session.setMaxInactiveInterval(10); // 10초
   
   // 세션 유지 시간 설정 방법 2
   // web.xml 설정
   /*
   <session-config>
   <session-timeout>10</session-timeout> // 분단위
   </session-config>
   */
   
   // 세션 유지 시간 가져오기
   System.out.println(session.getMaxInactiveInterval());
  }
  
  visitCount = (Integer) session.getAttribute(visitCountKey); // 세션값 가져오기
  visitCount++;
  userId = (String) session.getAttribute(userIdKey);
  session.setAttribute(visitCountKey, visitCount);
  
%>
</head>
<body>
  <%--
    * HTTP 특성
    - connectionless : 클라이언트가 요청을 한 후 응답을 받으면 연결을 끊는 특성
    - stateless : 통신이 끝나면 상태를 유지하지 않는 특성
    - 쿠키와 세션은 위의 두 가지 특징을 해결하기 위해서 사용
    
    * 세션(session)
    - 쿠키를 기반으로 사용
    - 서버 측에서 데이터를 관리
    - 세션 ID를 부여하여 브라우저를 종료할 때 까지 데이터를 유지
    - 세션 객체 : 사용자를 식별할 수 있는 방법을 제공
      1) 한 페이지의 요청
      2) 웹사이트에 방문
      3) 사용자에 대한 정보 저장
    - 주의 사항 : 세션은 현재 프로젝트(클라이언트)에 올라와 있는 모든 웹페이지에 적용됨
    - 따라서, 하나의 클라이언트에 세션을 많이 사용하면 충돌이 날 수 있음
  --%>
  
  <h1><%=title %></h1>
  
  <table border="1" style="text-align: center;">
    <thead>
      <tr bgcolor="#949494">
        <th>세션 정보</th>
        <th>값</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>세션 아이디</td>
        <td><% out.print(session.getId()); %></td>
      </tr>
      <tr>
        <td>세션 생성 시간</td>
        <td><% out.print(createTime); %></td>
      </tr>
      <tr>
        <td>마지막 접속 시간</td>
        <td><% out.print(lastAccessTime); %></td>
      </tr>
      <tr>
        <td>사용자 아이디</td>
        <td><% out.print(userId); %></td>
      </tr>
      <tr>
        <td>방문 횟수</td>
        <td><% out.print(visitCount); %></td>
      </tr>
    </tbody>
  </table>

</body>
</html>