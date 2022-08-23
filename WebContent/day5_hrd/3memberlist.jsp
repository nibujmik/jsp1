<%@page import="vo.HrdVo"%>
<%@page import="java.util.List"%>
<%@page import="dao.HrdDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	HrdDao dao = HrdDao.getInstance();
	List<HrdVo> list = dao.getList();
	
	request.setAttribute("list", list);
	pageContext.forward("4member.jsp");
	%>
