<%@page import="vo.Product"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ProductDao dao= ProductDao.getInstance();
	List<Product> list=dao.getProduct();
	
	request.setAttribute("list", list);
	pageContext.forward("14buy.jsp");
	



%>
