<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="day1.vo.MyUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day1</title>
</head>
<body>
<%
	/* 자바코드 작성(스크립트 릿) -> 톰캣 서버가 컴파일합니다. */
	String[] names = {"사나","나연","다현","모모","쯔위"};
	MyUser user= new MyUser("세리박",34,true);
	List<String> list = new ArrayList<>();
	list.add("사나");list.add("나연");list.add("다현");list.add("모모");list.add("쯔위");
	
	List<MyUser> users = new ArrayList<>();
	users.add(user); users.add(new MyUser("손흥민",25,false)); users.add(new MyUser("김병헌",39,true));
	users.add(new MyUser("박지성",33,false));
	
%>
	<h4>for 로 만드는 배열리스트 1</h4>	
	<ul>
		<%
			for(int i=0; i<names.length; i++){		//이 for문은 태그로 대체될 수 있습니다. (라이브러리 추가로 사용해야함)
		%>
		<li>name : <%= names[i] %></li>
		<%
			}
		%>
	</ul>
	<h4>for로 만드는 ArrayList 리스트2</h4>
	<ul>
		<%
		 for(String temp : list) {
		%>
		
		<li>name: <%=temp%> </li>
		<%
			}
		%>
	</ul>
	<h4>for문으로 만드는 users 리스트3</h4>
		<%
			for(int i=0; i<users.size(); i++){		//이 for문은 태그로 대체될 수 있습니다. (라이브러리 추가로 사용해야함)
		%>
		<li><%= users.get(i).getName() %>(<%= users.get(i).getAge() %>),<%=users.get(i).isEtc() %></li>
		<%
			}
		%>
	
	<h4>향상된 for문으로 만드는 users 리스트4</h4>
	<%
		 for(MyUser temp : users) {
		%>
		
		<li><%=temp.getName()%>(<%=temp.getAge() %>),<%= temp.isEtc() %> </li>
		<%
			}
		%>

</body>
</html>