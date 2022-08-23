<%@page import="vo.Product"%>
<%@page import="java.util.List"%>
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
<%@ include file="header.jsp" %>
<hr>
<h3>상품 목록</h3> <!-- 외래키 참조 무결성 오류 해결: 상품 목록 중 하나를 클릭하면 해당 pcode값을 아래 input의 value값으로 하기 -->
<ul>
	<%
		ProductDao dao= ProductDao.getInstance();
		List<Product> list=dao.getProduct();
		for(Product vo : list){
	%>
	<li><%= vo.getPname() %>&nbsp;:<a href="javascript:select('<%= vo.getPcode() %>')"><%= vo.getPcode() %> </a>:
	(<%= vo.getPrice() %>원)</li>
	<%
		}
	%>
</ul>
<hr>
<h3>상품 구매</h3>
	<form action="9save.jsp" method="post">
	<h5>고객ID는 참조 무결성</h5>
		<input name="custom" placeholder="고객ID를 입력하세요.">
		<input name="pcode" placeholder="상품목록에서 선택하세요." readonly>
		<input name="quantity" type="number" placeholder="수량을 입력하세요.">
		<button>구매</button>
	</form>
	<script type="text/javascript">
	function select(v_pcode) {
		console.log(v_pcode)
		document.forms[0].pcode.value = v_pcode
		
	}
	</script>
</body>
</html>