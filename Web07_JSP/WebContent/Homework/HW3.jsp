<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<%--
  1. HW3.jsp파일
  - 회원 가입 form 만들기
  - post 방식
  - action="member_info.jsp"
  - 아이디, 패스워드, 이메일, 수신여부(radio 버튼), 관심사항(checkbox, 관심사항 4개)
       핸드폰(010은 고정, 나머지 입력받기), 자기소개
       
  2. edu.web.homework 패키지에 MemberVO.java 클래스 생성(위의 아이디, 패스워드 등 변수를 갖는 클래스)
  - * MemberVO 기본 생성자는 무조건 생성
  
  3. member_info.jsp 파일
  - <jsp:useBean id="member", class="edu.web.homework.MemberVO" />
  - <jsp:setProperty property="*" name="member" />
  - 회원 정보 전체 출력하기
  --%>

	<h2>회원 가입하기</h2>
	<form action="member_info.jsp" method="post">
		<p>아이디</p>
		<input type="text" name="userId" placeholder="아이디 입력" />
		<p>패스워드</p>
		<input type="password" name="password" placeholder="비밀번호 입력" />
		<p>이메일</p>
		<input type="text" name="email" placeholder="이메일 입력" />
		<p>이메일 수신여부</p>
		<input type="radio" name="emailAgree" value="yes" />예 
		<input type="radio" name="emailAgree" value="no" checked="checked" />아니오
		
		<p>관심사항</p>
		<input type="checkbox" name="interest" value="IT" />IT/인터넷
		<input type="checkbox" name="interest" value="movie" />영화
		<input type="checkbox" name="interest" value="music" />음악
		<input type="checkbox" name="interest" value="book" />책
		<input type="checkbox" name="interest" value="food" />음식
		
		<p>핸드폰</p>
		<input type="text" value="010" readonly="readonly" />
		<input type="text" name="phone" placeholder="번호 입력" />
		
		<p>자기소개</p>
		<textarea rows="4" cols="30" name="introduce" placeholder="자기소개 입력"></textarea>
		<br>
		<input type="submit" value="전송" />
	</form>
</body>
</html>