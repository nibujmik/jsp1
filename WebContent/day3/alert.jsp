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
	String msg= request.getParameter("msg");
	if(msg!=null)
	if(msg.equals("yes"))
		pageContext.setAttribute("msg", "구매가 완료되었습니다.");
	else if(msg.equals("no"))
		pageContext.setAttribute("msg", "회원가입하셔야 구매할 수 있습니다.");
	else if(msg.equals("zero"))
		pageContext.setAttribute("msg", "수량을 입력하세요.");
	else 
		pageContext.setAttribute("msg", "알 수 없는 오류입니다.");

%>
<script type="text/javascript">
	alert('${msg}')	
	location.href = '14buy.jsp'//자바스크립트에서 url 설정하여 새로운 요청 변경
</script>
</body>
</html>