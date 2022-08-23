<!-- jsp: java server  page의 약자, 서버에서 실행할 코드는java로 설정된다는 설정 내용 -->
<%@page import="day1.vo.MyUser"%>
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
	/* 자바코드 작성(스크립트 릿) -> 톰캣 서버가 컴파일합니다. */
	String[] names = {"사나","나연","다현","쯔위"};
	MyUser user= new MyUser("세리박",34,true);
%>
<h3>첫번째 JSP</h3>
<hr>
<ul>
	<!-- 자바 변수값을 출력하기 위해서 표현식 기호 사용  -->
	<li>리스트1:<%= names[0] %></li>
	<li>리스트1:<%= names[1] %></li>
	<li>리스트1:<%= names[2] %></li>
	<li>리스트1:<%= names[3] %></li>
</ul>
<ul>
	<li>리스트2:<%= user.getName() %></li>
	<li>리스트2:<%= user.getAge() %></li>
	<li>리스트2:<%= user.isEtc() %></li>
</ul>
</body>
</html>