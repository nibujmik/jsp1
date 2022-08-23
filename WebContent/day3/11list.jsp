<%@page import="java.util.List"%>
<%@page import="day1.vo.MyUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day3</title>
</head>
<body>
<%	//애트리뷰트 값 가져오기 : getAttribute 메소드 (리턴타입은 Object)-> ${} 표현식 기호로 대체
	String name= (String)request.getAttribute("attr1");// Object 타입을 String으로 변환
	MyUser vo= (MyUser)request.getAttribute("attr2");
	@SuppressWarnings("unchecked") //캐스팅할 때 제너릭타입 체크 경고 발생 안함
	List<String> list = (List<String>)request.getAttribute("attr3");
%>
	<ul>
		<li>name : <%= name %></li>
		<li>vo : <%= vo %></li>
		<li>list : <%= list %></li>
	</ul>
	<!-- 실행은 10read.jsp에서 하고 데이터가 11list.jsp로 전달되는지 확인
		실행된 url도 확인 실행 url은 http://localhost:8082/jsp1/day3/10read.jsp로 변화가 없습니다.
		 -->

</body>
</html>