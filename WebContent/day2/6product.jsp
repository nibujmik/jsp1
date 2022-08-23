<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<hr style=>
<form action="7save.jsp" method="post">
<!-- method="post": 입력 파라미터를 url과 함께 전송하지 않고 request 몸체에 저장
	지금처럼 insert,update에는 method를 post로 하기 (전송크기 제한 없음)
	기본값은 method="get" (조회) 이 때는 입력 파라미터는 url로 전송, url은 기본이 UTF-8로 인코딩(전송크기에 제한)
 -->
	<input type="text" name="pcode" placeholder="상품코드를 입력하세요."> <br>
	<input type="text" name="category" placeholder="카테고리를 입력하세요."><br>
	<input type="text" name="pname" placeholder="상품명을 입력하세요."><br>
	<input type="number" name="price" placeholder="가격을 입력하세요.">
	<button>제출</button>
</form>
</body>
</html>