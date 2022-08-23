<%@page import="vo.HrdVo"%>
<%@page import="dao.HrdDao"%>
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
	HrdDao dao = HrdDao.getInstance();
	HrdVo vo = dao.selectByNo(request.getParameter("custno"));
	if(vo != null ) {
%>
<%@ include file="header.jsp" %>
<h3>회원 정보 수정</h3>

<form action="6update.jsp" method="post">
	<input name="c_id" value="<%= vo.getCustno() %>" readonly>
	<input name="name" value="<%= vo.getCustname()  %>" readonly>
	<input name="phone" value="<%= vo.getPhone()   %>" type="email" >
	<input name="addr" value="<%= vo.getAddress()   %>"  type="number">  
	<input name="date" value="<%= vo.getJoindate()   %>"  type="number">  
	<input name="grade" value="<%= vo.getGrade()   %>"  type="number">  
	<input name="city" value="<%= vo.getCity()   %>"  type="number">  
	<button>수정</button>  	
	<button type="reset">다시쓰기</button>  
</form>
<%
	}else {
		out.print("<script>");
		out.print("alert('잘못된 아이디입니다.');");
		out.print("history.back();");
		out.print("</script>");
	}
%>
</body>
</html>