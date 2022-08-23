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
ul{
    list-style: none;
    background-color: brown;
    overflow: hidden;       
    /* overflow: 넘치는 값 설정 */
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


.main{
    background-color: rgba(220, 218, 218, 0.418);
    padding: 20px;
    height: 500px;
    margin-left: -10px;
    width: 100%;

}


td{
    border: 1px double gray;
    
}
table{
    border: 1px solid gray;
    margin: auto;
    width: 650px
}
label.mpt{
cursor: pointer;

}
button{
padding: 1px 10px;
cursor: pointer;
text-align: center;
margin:auto;

/* display: block; */

}
label.title{
text-align: center;
display: inline-block;
font-weight: bold;

}

tr:last-child>td{
background-color: rgba(220, 218, 218, 0.418);
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
</head>
<body>
<%@ include file = "header.jsp" %>
        <div class="main">
        <div style="width: 70%; margin:auto; max-width: 600px;">
    <form action="">
        <table >
            <tr>
                <td><label for="lblc_id" class="title mpt" >회원번호(자동생성)</label></td>
                <td style="width:400px"><input type="text" name="c_id" id="lblc_id" style="width: 100px;"></td>
            </tr>
            <tr>
                <td><label for="lblname" class="title mpt">회원성명</label></td>
                <td><input type="text" name="name"id="lblname" style="width: 100px;"></td>
            </tr>
            <tr>
                <td><label for="lblphone" class="title mpt">회원전화</label></td>
                <td><input type="text" name="phone" id="lblphone" style="width: 150px;"></td>
            </tr>
            <tr>
                <td><label for="lbladdr" class="title mpt">회원주소</label></td>
                <td><input type="text" name="addr"  id="lbladdr"style="width: 200px;"></td>
            </tr>
            <tr>
                <td><label for="lbldate" class="title mpt">가입일자</label></td>
                <td><input type="text" name="date"  id="lbldate" style="width: 100px;"></td>
            </tr>
            <tr>
                <td><label for="lblgrade" class="title mpt">고객등급[A:VIP,B:일반,C:직원]</label></td>
                <td><input type="text" name="grade"  id="lblgrade" style="width: 100px;"></td>
            </tr>
            <tr>
                <td><label for="lblcity" class="title mpt">도시코드</label></td>
                <td><input type="text" name="city"  id="lblcity" style="width: 100px;"></td>
            </tr>
            
            <tr>
                <td colspan="2">
                    <button style=" display: inline-block;">등록</button>
                    <button style=" display: inline-block;">조회</button>
                </td>
            </tr>
       
        </table></div></div>
       <footer>
        HRDKOREA Copyright&copy;2022 All rights reserved. Human Resources Development Service of Korea.
</footer>
</body>
</html>