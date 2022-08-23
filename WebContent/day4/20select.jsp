<%@page import="vo.CustomVo"%>
<%@page import="java.util.List"%>
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
<hr>
<h3>회원목록</h3>
<% @SuppressWarnings("unchecked")
		List<CustomVo> list= (List<CustomVo>)request.getAttribute("list");


%>
<table>
	<tr>
		<td>고객ID</td>
		<td>이름</td>
		<td>이메일</td>
		<td>나이</td>
		<td>가입날짜</td>
	</tr>
	<%
	
	for(CustomVo vo : list){			
	%>
	<tr>
		<td><%=vo.getCustom_id() %></td>
		<td><%=vo.getName() %></td>
		<td><%=vo.getEmail() %></td>
		<td><%=vo.getAge() %></td>
		<td><%=vo.getReg_date() %></td>
	</tr>
	
	<%
		}
	%>
</table>
</body>
</html>