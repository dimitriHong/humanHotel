<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% response.setHeader("Pragma", "no-cache"); response.setHeader("Cache-Control", "no-cache"); response.setHeader("Cache-Control", "no-store"); response.setDateHeader("Expires", 0L); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>휴먼호텔 관리자 - 메인</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
        * {margin:0; padding:0; box-sizing: border-box; text-decoration: none; list-style: none;}
        body{ 
            font-family: 'Noto Sans KR', sans-serif; 
            height: 100vh;
            background: url("../resources/adminimage/admin_main.jpg") no-repeat center;
            background-size: cover;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        body::before {
            content:"";
            position: absolute; z-index: 1;
            top: 0; bottom: 0; right: 0; left: 0;
            background: rgba(0,0,0,0.6);
        }
        #wrap {
            position: relative; z-index: 2;
            width: 80vw;
            height: 100vh;
        }
        #room_header {
            width: inherit;
            height: 15vh;
            display: flex; 
            justify-content: flex-start; 
            align-items: flex-start;
        }
        .hed1{
            width: 30%;
            height: inherit;
        }
        .hed1-1 {
            text-align: center;
            margin-top: 3vh;
            font-size: 40px;
            color:rgba(240, 203, 133,0.9);
        }
        .hed1-2 {
            text-align: center;
            color: rgba(255, 228, 181,0.8);
        }
        .hed2{
            width: 17.5%;
            height: 100%;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        .hed2 a {
            font-size: 27px;
            color: wheat;
        }
        .hed2 a:hover {
            color: #DCAD67;
        }
  		#logout {
        	 position:absolute;
        	 top:20px;
        	 right:-110px;
        	 font-size: 20px;
             color:rgba(240, 203, 133,0.9);
        }
        #logout:hover {
            color: wheat;
        }
    </style>
</head>
<body>
    <div id="wrap">
       <header id="room_header">
            <div class="hed1">
                    <h1 class="hed1-1">HUMAN HOTEL</h1>
                    <h2 class="hed1-2">MANAGEMENT SYSTEM</h2>
            </div>
            <div class="hed2">
                <a href="${pageContext.request.contextPath}/admin/roommanage">객실정보관리</a>
            </div>
            <div class="hed2">
                <a href="${pageContext.request.contextPath}/admin/bookmanage">객실예약관리</a>
            </div>
            <div class="hed2">
                <a href="${pageContext.request.contextPath}/admin/adminmanage">직원계정관리</a>
            </div>
            <div class="hed2">
                <a href="${pageContext.request.contextPath}/admin/memebermanage">휴먼멤버스관리</a>
            </div>
            <p id="logout">로그아웃</p>
        </header>
    </div>
</body>
<script>
$(document)
.on('click','.hed1',function(){
	location.href = 'adminmain'
})
.on('click','#logout',function(){
	swal("휴먼호텔 관리시스템에서 로그아웃 하시겠습니까?", {
		  buttons: ["아니오", "예"],
		}).then((willDelete)=>{
			if (willDelete) {
				swal({
				    title: "로그아웃 되었습니다.",
				    timer: 2000,
				    icon: "success",
				    button:false
				  });
				setTimeout(function(){
					location.href = 'adminout';
				},2000)	
			 }
		}) 
})
</script>
</html>