<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
    .header{
    background-color: rgba(26, 109, 251, 0.827);
    color: white;
    padding: 40px 20px;
    margin-left: -10px;
    margin-top: -20px;
}
ul{
    list-style: none;
    background-color: rgba(177, 113, 241, 0.896);
    overflow: hidden;
    margin: auto;
    margin-left: -10px;
    
    /* border: 1px solid blue; */
}
ul>li{
    float: left;
    color: aliceblue;
    /* border: 1px solid black; */
}
/* 위의 border로 영역확인 : ul 영역이 li 영역보다 작음 */
ul > li  a{
    display: block;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    color: aliceblue;

}
ul > li a:hover{
    background-color: black;
    color: white;
}



    </style>
<div style=" margin:auto;">
        <div class="header">
            <!-- header -->
            <h3 style="text-align: center;">쇼핑몰 회원관리 v1.0</h3>
        </div>
        <div class="nav">
            <!-- nav -->
            <ul>
                <li><a href="2inputform.jsp">회원등록</a></li>
                <li><a href="3memberlist.jsp">회원목록조회/수정</a></li>
                <li><a href="">회원매출조회</a></li>
                <li><a href="1main.jsp">홈으로</a></li>
            </ul>
        </div>