<!-- 작성자: 김주빈 -->
<%@page import="dao.CustomDao"%>
<%@page import="vo.CustomVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>18save</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
 
	String customid = request.getParameter("customid");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String temp =request.getParameter("age"); 
	
	String msg="";
	int age = 0;
	CustomDao cdao = CustomDao.getInstance();

	try {
		
		if (cdao.selectById(customid)!=null)
			 throw new Exception("이미 등록된 회원입니다.");	
		
		age = Integer.parseInt(temp);
		int cnt = cdao.insert(new CustomVo(customid,name,email,age,null));
		if(cnt==1)
			msg="등록 완료!";
		else 
			msg="등록실패!";
	}catch(NumberFormatException e){
		msg="나이를 숫자로 입력 하세요.";
	}catch(Exception e){
		msg="오류 : " + e.getMessage();
				
	}
	out.print("alert('"+ msg +"');");
	out.print("</script>");
%>
</body>
</html>