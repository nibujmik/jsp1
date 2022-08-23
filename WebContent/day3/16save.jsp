<%@page import="dao.CustomDao"%>
<%@page import="dao.BuyDao"%>
<%@page import="vo.Buy"%>
<%@page import="vo.Product"%>
<%@page import="dao.ProductDao"%>
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
	//method post 로 전달된값 중에 한글 등 다국어문자는 꼭 set 인코딩하세요.
	String id = request.getParameter("custom");
	String pcode = request.getParameter("pcode");
	String temp = request.getParameter("quantity");
	int quantity = 0;
	BuyDao dao = BuyDao.getInstance();
	CustomDao cdao = CustomDao.getInstance();
	String msg="";
	out.print("<script>");
	try {
		//if(id.equals("viviz"))			
		//사용자 입력 id가 테이블에 있는지 확인해서 없으면  if (cdao.selectById(id)==null)
		
		if (cdao.selectById(id)==null)
			 throw new Exception("고객이 아니십니다.");	//임의로 Exception 오류 발생 - 문자열은 오류메시지 내용으로 설정
		
		quantity = Integer.parseInt(temp);
		int cnt = dao.insert(new Buy(0,id,pcode,quantity,null));
		if(cnt==1)
			//out.print("구매 완료!");  //alert 또는 다른 방법으로 화면에 표시로 변경
			msg="구매 완료!";
			else 
				msg="상품코드 입력하세요!";
	}catch(NumberFormatException e){
			//out.print("수량은 숫자로 하세요.");
			//out.print("구매 실패!");	//alert 또는 다른 방법으로 화면에 표시로 변경
			msg="수량을 숫자로 입력 하세요.";
	}catch(Exception e){
			//out.print("오류 : " + e.getMessage());
			//out.print("회원가입을 하세요.!!");
			msg="회원가입을 하세요.!!";
	}
	out.print("alert('"+ msg +"');");
	out.print("location.href='14start.jsp';");
	out.print("</script>");
%>
</body>
</html>