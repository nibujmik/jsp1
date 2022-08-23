<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day2 미리 맛보기</title>
</head>
<body>
<h3>request 객체</h3>
<p>request 객체로 얻을 수 있는 정보는 무엇인지 확인합니다.</p>
<hr>
<ul>
	<!-- http://localhost:8082/는 URL루트 경로 -->
	<li>요청 URL  : <%= request.getRequestURL() %> </li>
					<!--Locater: http://localhost:8082/jsp1/day1/3request.jsp -->
	<li>요청 URI  : <%= request.getRequestURI() %> </li>
					<!--Identifier: /jsp1/day1/3request.jsp -->
	<li>컨텍스트(context)  : <%= request.getContextPath() %> </li>
						<!--컨텍스트(context) : /jsp1 -->
	<li><a href="1start.jsp">1start.jsp로 가기</a></li>
	<li><a href="http://localhost:8082/jsp1/day1/1start.jsp">1start.jsp로 가기</a></li>
			<!-- /day1 폴더는 컨텍스트의 하위폴더입니다.
				폴더가 동일하면  http://localhost:8082/jsp1/day1/는 생략하고 href를 작성합니다.-->
	<li><a href="../test.jsp">test.jsp로 가기</a></li>	<!-- 상대경로 -->
	<li><a href="http://localhost:8082/jsp1/test.jsp">test.jsp로 가기</a></li>	<!-- 절대경로 -->
	<li><a href="<%= request.getContextPath() %>/test.jsp">test.jsp로 가기</a></li>	<!-- 절대경로를 사용하는 방법-->
</ul>
</body>
</html>