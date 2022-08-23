<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

body{
    width: 100%;

}

.main{
    background-color: rgba(220, 218, 218, 0.418);
    padding: 20px;
    height: 500px;
    margin-left: -10px;
}
footer{
    background-color: cornflowerblue;
    color: white;
    padding: 20px;
    text-align: center;
    margin-left: -10px;
}

</style>
</head>
<body>
<%@ include file = "header.jsp" %>
<div class="main">
<h4 style="text-align: center;">쇼핑몰 회원관리 프로그램</h4>
        <p>쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성합니다.<br>
            프로그램작성순서
            <ol>
                <li>회원정보 테이블을 생성한다.</li>
                <li>매출정보 테이블을 생성한다.</li>
                <li>회원정보,매출정보 테이블에 제시된 문제지의 참조데이터를 추가생성한다.</li>
                <li>회원정보 입력화면 프로그램을 작성한다.</li>
                <li>회원정보 조회 프로그램을 작성한다.</li>
                <li>회원 매출 정보 조회 프로그램을 작성한다.</li>
            </ol>
        </p>
        </div>
   <footer>
        HRDKOREA Copyright&copy;2022 All rights reserved. Human Resources Development Service of Korea.
</footer>     
</body>
</html>