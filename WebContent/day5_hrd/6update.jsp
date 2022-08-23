<%@page import="vo.HrdVo"%>
<%@page import="dao.HrdDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
		int custno =Integer.parseInt(request.getParameter("c_id")); 
		String custname = request.getParameter("name");
		String phone = request.getParameter("phone");
		String addr = request.getParameter("addr");
		String temp= request.getParameter("date") ;
		String grade = request.getParameter("grade");
		String city = request.getParameter("city");
		
		 String message="";
		HrdDao dao = HrdDao.getInstance();
		String target="";
		try{
						
			
			int cnt = dao.insert(new HrdVo(custno,custname,phone,addr,null,grade,city));
			if (cnt==1) {
				message = "회원 정보 수정이 완료되었습니다.";
				target = "location.href = '21customUpdate.jsp?id="+custno +"';";
			}
			else{
				message ="회원정보 수정에 문제가 있습니다. 입력값을 확인하세요.";
				target = "history.back();";
			}
		}catch(Exception e) {		//SQL insert 문 외에 다른 Exception 모두 처리 
			message = "오류 :" + e.getMessage();		//NumberFormatException 을 비롯해서 모든 Exception 을 처리합니다.
			target = "history.back();";
		}
		
		out.print("<script>");
		out.print("alert('"+ message + "');");		
		out.print(target);		//location.href = '17customJoin.jsp' ; 대신에 사용. 브라우저에서 뒤로가기 기능
		out.print("</script>");




%>