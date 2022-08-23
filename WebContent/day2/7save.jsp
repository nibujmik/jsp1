<%@page import="dao.ProductDao"%>
<%@page import="vo.Product"%>
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
	//method post일 때는 요청파라미터 인코딩 직접 설정.
	request.setCharacterEncoding("UTF-8");
%>
<% 
	/* String pcode = request.getParameter("pcode");
	String category = request.getParameter("category");
	String pname = request.getParameter("pname");
	int price1 =Integer.parseInt(request.getParameter("price")); */
	
	String temp = request.getParameter("price");
	int price= 0; Product vo= null;
	try{
		price=Integer.parseInt(temp);
		vo = new Product(request.getParameter("pcode"),request.getParameter("category"),request.getParameter("pname"),price);
	
		ProductDao dao = ProductDao.getInstance();
		int cnt= dao.insert(vo);
		if(cnt==1) out.print("상품등록 완료!!");
		else out.print("상품등록 실패!!!-입력값 확인하세요.");
		
	}catch(NumberFormatException e){
		out.print("잘못된 가격 입니다.");
		out.print("<br> 상품등록 실패");
		
	}
	
	
	//Product vo = new Product(pcode, category, pname, price);
	
	
	
	/* out.print("pcode: "+ vo.getPcode()); 
	out.print("<br>"); 
	out.print("categry: "+vo.getCategory());
	out.print("<br>"); 
	out.print("pname: "+vo.getPname());
	out.print("<br>"); 
	out.print("price: "+vo.getPrice()); */
	%>
	<p><a href="6product.jsp">돌아가기</a>
</body>
</html>