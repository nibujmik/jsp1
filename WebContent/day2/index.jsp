<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력파라미터 테스트 Index</title>
</head>
<body>
<h3>요청 URL의 입력 파라미터 가져오기 (쿼리스트링 URL 직접 입력)</h3>
<hr>
<p>쿼리 스트링을 URL에 직접입력 </p>
 <ul>
 	<li><a href="4parameter.jsp?data1=나나&data2=123&data3=hong">첫번째 예시</a></li>
 	<li><a href="4parameter.jsp?name=나나&age=23&country=korea">두번째 예시</a></li>
 	
 </ul>
 <p>사용자 form입력</p>
 <ul>
 	<li><a href="5form.jsp">입력GO</a></li>
 	<li><a href="6product.jsp">상품 입력GO</a></li>
	<li><a href="8buy.jsp">상품구매</a></li>
 </ul>
</body>
</html>