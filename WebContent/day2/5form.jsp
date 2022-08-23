<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day2</title>
</head>
<body>
<h3>사용자 입력 form으로 입력파라미터 보내기 </h3>
<hr>
<form action="4parameter.jsp"><!-- form의 action속성은 파라미터 전달받을 url -->
	<input type="text" name="data1" placeholder="data1 입력하세요">
	<input type="text" name="data2" placeholder="data2 입력하세요">
	<input type="text" name="data3" placeholder="data3 입력하세요">
	<button>제출</button>
</form>

<form action="4parameter.jsp">
	<input type="text" name="name" placeholder="이름을 입력하세요.">
	<input type="text" name="age" placeholder="나이를 입력하세요.">
	<input type="text" name="country" placeholder="나라를 입력하세요.">
	<button>제출</button>
</form>
 <p><a href="index.jsp">인덱스Go</a></p>
</body>
</html>