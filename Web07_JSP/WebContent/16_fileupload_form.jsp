<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>
  <%--
    * 파일 업로드 구현 순서
    1. 입력 폼을 작성
    2. web.xml에 <context-param>을 설정
    3. commons-fileupload-x.x.jar을 다운로드 및 WEB-INF/lib 폴더에 저장
    4. commons-io-x.x.jar을 다운로드 및 WEB-INF/lib 폴더에 저장
    5. c:\temp와 c:\server\apache-tomcat-8.5.51\webapps\data 폴더를 생성
   --%>
   <h2>파일 업로드</h2>
   <p>파일 선택 : </p>
   <!-- 주의사항 : 파일전송 form은 다른 폼과 독립적으로 생성해주어야 함 -->
    <form action="16_uploadfile.jsp" method="post" enctype="multipart/form-data">      
      <input type="file" name="file" size="500"> <br>
      <input type="submit" value="파일 업로드">
    </form>
</body>
</html>