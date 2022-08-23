<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("<script>");
		out.print("alert('자바스크립트 실행확인')");
		out.print("</script>");
	
	
		//1. 2,3번 아무것도 실행 안하는 경우
		//url:http://localhost:8082/jsp1/day3/12response.jsp
		//화면에 보이는 응답:12response.jsp
		
		//url:http://localhost:8082/jsp1/day3/12response.jsp
		//화면에 보이는 응답:13response.jsp
		pageContext.forward("13response.jsp");	//2번만 실행하는 경우
		
		//url: http://localhost:8082/jsp1/day3/13response.jsp
		//화면에 보이는 응답:13response.jsp
		//response.sendRedirect("13response.jsp");	//3번만 실행하는 경우
	
	%>
	<h3>12response.jsp에서 보내는 응답입니다.</h3>
</body>
</html>