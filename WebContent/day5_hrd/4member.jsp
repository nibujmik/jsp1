<%@page import="vo.HrdVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
    width: 100%;

}

.main{
    background-color: rgba(220, 218, 218, 0.418);
    padding: 20px;
    height: 500px;
    margin-left: -10px;
}
th,td{
    border: 1px double gray;
    
}
table{
    border: 1px solid gray;
    width: 100%;
}
h3{
 
    text-align: center;
}
footer{
    background-color: cornflowerblue;
    color: white;
    padding: 20px;
    text-align: center;
    margin-left: -10px;
}
</style>
<body>
<%@ include file = "header.jsp" %>
    <div class="main">
    <h3>회원 목록 조회/ 수정</h3>
    <table style="width: 80%;margin:auto ;">
        <tr>
            <th style="width: 10%;">회원번호</th>
            <th style="width: 10%;">회원성명</th>
            <th style="width: 15%;">전화번호</th>
            <th style="width: 30%;">주소</th>
            <th style="width: 10%;">가입일자</th>
            <th style="width: 10%;">고객등급</th>
            <th style="width: 10%;">거주지역</th>
        </tr>
        <%
		@SuppressWarnings("unchecked")
		List<HrdVo> list = (List<HrdVo>)request.getAttribute("list");
      
		for(HrdVo vo : list) {
	%>
		<tr>
			<td><a href="5memberupdate.jsp?id=<%= vo.getCustno() %>"><%= vo.getCustno() %></a></td>
			<td><%= vo.getCustname()%></td>
			<td><%= vo.getPhone()%></td>
			<td><%= vo.getAddress()%></td>
			<td><%= vo.getJoindate()%></td>
			<td><%= vo.getGrade()%></td>
			<td><%= vo.getCity()%></td>
		</tr>
	<%
		}
	%>
    </table>
    </div>
   
 <footer>
        HRDKOREA Copyright&copy;2022 All rights reserved. Human Resources Development Service of Korea.
</footer>   
</body>
</html>