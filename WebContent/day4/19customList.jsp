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
</head>
<body>
<% 
CustomDao dao= CustomDao.getInstance();
List<CustomVo> list=dao.getList();

request.setAttribute("list", list);
pageContext.forward("20select.jsp");
%>
</body>
</html>