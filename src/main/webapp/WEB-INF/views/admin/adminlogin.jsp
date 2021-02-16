<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% response.setHeader("Pragma", "no-cache"); response.setHeader("Cache-Control", "no-cache"); response.setHeader("Cache-Control", "no-store"); response.setDateHeader("Expires", 0L); %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>휴먼호텔 관리자 로그인</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
        * {margin:0; padding:0; box-sizing: border-box;}
        body{
            font-family: 'Noto Sans KR', sans-serif; 
            display: flex; 
            justify-content: center; 
            align-items: center;
            height: 100vh;
            background: url("../resources/adminimage/hotel_login.jpg") no-repeat center;
            background-size: cover;}
        /*배경화면 투명도 설정*/
        body::before {
            content:"";
            position: absolute; z-index: 1;
            top: 0; bottom: 0; right: 0; left: 0;
            background: rgba(0,0,0,0.6);
        }
        .loginForm {
            position: relative; z-index: 2;
        }
        .loginForm h1 {
            font-size: 32px; color:#fff;
            text-align: center;
        }
        .loginForm h2 {
            font-size: 27px; color:#fff	;
            text-align: center;
            margin-bottom: 60px;
        }
        .input_area {
            width: 400px; 
            position: relative; 
            margin-top: 20px;
        }
        .input_area:first-child {margin-top: 0;}
        .input_area input{
            width: 100%;
            padding: 20px 10px 10px;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #999;
            font-size: 18px; color: #fff;
            outline: none;
        }
        .input_area label {
            position: absolute; left: 10px; top: 0;
            font-size: 18px; color: #999;
            transition: all .5s ease;
        }
        .input_area input:focus + label,
        .input_area input:valid + label {
            top: -2px;
            font-size: 13px; color: #999;
        }
        .button_area {margin-top: 30px;}
        .button_area button {
            width: 100%; height: 50px;
            background:#E1B771;
            color: #fff;
            border: none;
            border-radius: 25px;
            outline: none;
        }
        .caption {
            margin-top: 20px;
            text-align: center;
        }
        .caption a {
            font-size: 15px; color: #999;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <section class="loginForm">
        <h1>HUMAN HOTEL</h1>
        <h2>MANAGENENT SYSTEM</h2>
        <form action="admincheck" method="POST">
            <div class="input_area">
                <!-- autocomplete : 자동완성기능 requuired : 필수입력체크-->
                <input type="text" name="id" id="id" autocomplete="off" required>
                <label for="id">ADMIN ID</label>
            </div>
            <div class="input_area">
                <input type="password" name="pw" id="pw" autocomplete="off" required>
                <label for="id">PASSWORD</label>
            </div>
            <div class="button_area">
                <button type="submit">LOGIN</button>
            </div>
            <div class="caption">
                <a href="" id="lost">계정을 분실한 경우</a>
            </div> 
        </form>
    </section>
</body>
<script>
var logfail = '${msg}';
$(document)
.ready(function(){
	if(logfail=='loginfail'){
		swal("관리자 계정이 아닙니다.","ID와 Password를 확인하십시오.","error")
	}else if(logfail=='nosession'){
		swal("휴먼호텔 관리자 외에는 접근하실 수 없습니다.","접근하시려면 관리자 계정으로 로그인하십시오.","error")
	}
})
.on('click',"#lost",function(){
    swal("계정 분실시 DB관리자에게 문의 하세요","관리자명 : 이성규 | 연락처 : 01072579077 \n testid: test1 testpw: test1","info")
    return false;
})
</script>
</html>