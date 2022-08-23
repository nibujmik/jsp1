<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day2</title>
</head>
<body>
<h3>요청 URL의 입력 파라미터 가져오기 (쿼리스트링 URL 직접 입력)</h3>
<hr>
<p>쿼리 스트링: 요청 URL?이름1=값&이름2=값2... 에서 ?뒤의 입력 파라미터들이 연결된 문자열 <br>
	서버가 처리할 입력파라미터 값들은 request 객체에 저장되어 전달됩니다. <br>
	파라미터를 가져오는 메소드는 getParameter("파라미터이름")<br>
 	예시: http://localhost:8082/jsp1/day2/4parameter.jsp?data1=나나&data2=123&data3=hong
 </p>
 <ul>
 	<li>data1 파라미터: <%= request.getParameter("data1") %></li>
 	<li>data2 파라미터: <%= request.getParameter("data2") %></li>
 	<li>data3 파라미터: <%= request.getParameter("data3") %></li>
 </ul>
 <p>예시: http://localhost:8082/jsp1/day2/4parameter.jsp?name=나나&age=23&country=korea</p>
 <ul>
 	<li>name: <%= request.getParameter("name") %></li>
 	<li>age: <%= request.getParameter("age") %></li>
 	<li>country: <%= request.getParameter("country") %></li>
 </ul>
 <!-- 특수문자코드: &nbsp; &lt; &gt; &amp; %quot; -->
 <p><a href="index.jsp">인덱스Go</a></p>
</body>
</html>