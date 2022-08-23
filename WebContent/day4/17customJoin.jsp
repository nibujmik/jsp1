<!-- 작성자: 김주빈 -->
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
<h3>회원등록</h3>
<form action="18save.jsp" method="post">

	<input type="text" name="customid" placeholder="고객Id를 입력하세요." required> <br>
	<input type="text" name="name" placeholder="고객이름을 입력하세요." required><br>
	<input type="text" name="email" placeholder="이메일을 입력하세요." required><br>
	<input type="number" name="age" placeholder="나이를 입력하세요." required>
	<button>등록</button>			<button type="reset">다시쓰기</button>
</form>
</body>
</html>