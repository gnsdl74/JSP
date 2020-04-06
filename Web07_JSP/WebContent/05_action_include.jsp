<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
 <%--
  액션 태그(Action Tag)
  - JSP 내에서 특정 동작을 하도록 지시하는 태그
  - 기본 타입
    <jsp: action_name attribute="value" />
  - action_name의 종류
   jsp : include
   jsp : useBean
   jsp : setProperty
   jsp : getProperty
   jsp : forward
  - 공통 속성
    id, scope
  --%>
  
  <h2>include 액션 태그 예제</h2>
  <jsp:include page="date.jsp"></jsp:include>
  
  <!-- 
  	jsp : include
  	- 포함된 jsp 파일을 요청할 때마다 페이지를 수행(동적)
  	- 별도의 파일에 대한 요청을 처리할 때 사용(예시 - 로그인 했을 때 특정 레이아웃만 변경하도록)
  	- 레이아웃의 일부분을 모듈화할 때 사용(화면을 나누는 점에서 directive:include와 용도가 같음) 
  	- 중요) 포함된 jsp 파일의 변수를 사용할 수 없음
  	
  	// Ajax랑 차이 
  	// > Ajax는 '이벤트가 발생'했을 때 해당 공간을 새로고침.
  	// > 액션태그 include는 실시간으로 해당 공간을 새로고침.
  -->
  
</body>
</html>