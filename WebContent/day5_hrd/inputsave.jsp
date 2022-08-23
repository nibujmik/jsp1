<%@page import="vo.HrdVo"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="dao.HrdDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	int custno =Integer.parseInt(request.getParameter("c_id")); 
 	String custname = request.getParameter("name");
 	String phone = request.getParameter("phone");
	String addr = request.getParameter("addr");
	String temp= request.getParameter("date") ;
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");
	
	
	String message="";
	HrdDao dao = HrdDao.getInstance();
	String target ="";
	try{
       
		int cnt = dao.insert(new HrdVo(custno,custname,phone,addr,null,grade,city));
		if (cnt==1) {
			message = "회원등록이 완료되었습니다.";
			target = "location.href = '17customJoin.jsp'";
		}
		else {
			message ="회원등록에 문제가 있습니다. 입력값을 확인하세요.";
			target = "history.back();";
		}
	}catch(Exception e) {		// Exception 모두 처리 -> 다양하게 분류하지 않고 catch 한번만 사용한 예시입니다.
		message = "오류 :" + e.getMessage();			
		target = "history.back();";
	}
	
	out.print("<script>");
	out.print("alert('"+ message + "');");		
	out.print(target);		//location.href = '17customJoin.jsp' ; 과 브라우저에서 뒤로가기 기능 "history.back();" 중 선택
							//history.back()으로 뒤로가기를 하면 입력값이 남아있어 확인할수 있습니다.(오류있는 경우 필요.)
	out.print("</script>");

	
	%>