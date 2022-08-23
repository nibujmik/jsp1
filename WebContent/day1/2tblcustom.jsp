<%@page import="vo.CustomVo"%>
<%@page import="java.util.List"%>
<%@page import="dao.CustomDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
	table{
		border-collpage: collapse;
		width: 1px solid gray;
	}
	th{
		background-color: tomato;
		color: white;
	}
	td,th{
		padding: 7px 10px;
		border: 1px solid gray;
	}
</style>
</head>
<body>
<%
	CustomDao dao = CustomDao.getInstance();
	List<CustomVo> list = dao.getList();
%>
	<p><%= list%></p>
	<table>
	<tr>
		<th>custom_id</th>
		<th>name</th>
		<th>age</th>
		<th>email</th>
		<th>reg_date</th>
	</tr>
	<%
		for(CustomVo vo : list) {
	%>
		<tr>
			<td><%= vo.getCustom_id() %></td>
			<td><%= vo.getName() %></td>
			<td><%= vo.getAge() %></td>
			<td><%= vo.getEmail() %></td>
			<td><%= vo.getReg_date() %></td>
		</tr>
	<%
		}
	%>
	</table>
	<%
		out.print("<h3>The End</h3>");
		out.print("<scirpt>");
		out.print("document.querySelector('h3').style.color='blue'");
		//out.print("alert('out 객체 테스트중...')");
		out.print("</scirpt>");
		%>
</body>
</html>