<%@page import="dao.CustomDao"%>
<%@page import="dao.BuyDao"%>
<%@page import="vo.Buy"%>
<%@page import="dao.ProductDao"%>
<%@page import="vo.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day2</title>
</head>
<body>
<%
String id = request.getParameter("custom");
String pcode = request.getParameter("pcode");
String temp = request.getParameter("quantity");
int quantity= 0; Buy vo= null;
	BuyDao dao = BuyDao.getInstance();
	CustomDao cdao = CustomDao.getInstance();
try{
	/* if(id.equals("viviz"))
		throw new Exception("고객이 아니십니다."); */
		if(cdao.selectById(id)==null)
			throw new Exception("고객이 아니십니다.");
	
	quantity=Integer.parseInt(temp);
	int cnt= dao.insert(new Buy(0,id,pcode,quantity,null));
	if(cnt==1) out.print("구매완료!!");
	
}catch(NumberFormatException e){
	out.print("수량은 숫자로 하세요.");
	out.print("<br> 구매실패");
	
}catch(Exception e){
	out.print("오류: "+e.getMessage());
}



%>

</body>
</html>