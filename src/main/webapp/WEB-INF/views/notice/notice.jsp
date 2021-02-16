<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="../css/bootstrap.css">
<title>Human Hotel_notice_page</title>
	<style>
        * {margin: 0; padding: 0; list-style: none; text-decoration: none; font-family: 'Noto Sans KR', sans-serif;} 
        header {height: 15vh;  background-color: wheat; font-weight: bold;}
        #menulist {height: inherit; width: 80vw; margin: 0 auto;}
        #rightsidemenu {float: right; height: 20%; }
        #rightsidemenu ul li {float: left; font-size: 12px; padding: 10px;}
        #rightsidemenu ul li a {color:#C29F6D; list-style: none; text-decoration: none;}
        #mainmenu {clear: both; display: flex; justify-content: center; align-items: center; height: 80%;}
        #left {width: 40%;  display: flex; justify-content: center; align-items: center;}
        #left ul li {float: left; padding: 0 45px; font-size: 20px; margin-top: 30px;}
        #left ul li a {color: #A4814F; list-style: none; text-decoration: none;}
        #left ul li:hover {background-color: rgb(238, 198, 146);}
        #center {width: 20%;  text-align: center;}
        #center a {font-size: 45px; color: #8B4513; list-style: none; text-decoration: none; margin: 0; padding: 0;}
        #center h2 {font-size: 23px; color : #8B5927; margin: 0; padding: 0;}
        #right {width: 40%;  display: flex; justify-content: center; align-items: center;}
        #right ul li {float: left; padding: 0 45px; font-size: 20px; margin-top: 30px;}
        #right ul li a {color: #A4814F; list-style: none; text-decoration: none;}
        #right ul li:hover {background-color: rgb(238, 198, 146);}
        section {height: 75vh; width: 70%; padding-left: 15%; padding-top: 20px;}
        #main h2 {text-align: center; color: #311806; padding-bottom: 10px;}
        footer {height: 10vh; background-color: wheat;}
        #footerlist {width: 80vw; margin: 0 auto; height: inherit;  display: flex; justify-content: center; align-items: center;}
        #footerP1 {width: 20%; text-align: center;}
        #footerP2 {width: 30%; display: flex; justify-content: center; align-items: center;}
        #footerP2 ul li {font-size: 13px;}
        #footerP3 {width: 30%; display: flex; justify-content: center; align-items: center;}
        #footerP3 ul li {font-size: 13px;}
        #footerP4 {width: 20%; display: flex; justify-content: center; align-items: center;}
        #footerP4 ul li {float: left;}
        .container {height: 75vh;}
    </style>
</head>
<body>
	<header>
        <div id="menulist">
            <div id="rightsidemenu">
                <ul>
                    <li><a href="#">멤버스 로그인</a></li>
                    <li><a href="#">멤버스 가입</a></li>
                    <li><a href="#">객실예약 확인</a></li>
                </ul>
            </div>
            <div id="mainmenu">
                <div id="left">
                    <ul>
                        <li><a href="introduce">호텔소개</a></li>
                        <li><a href="#">객실예약</a></li>
                        <li><a href="#">휴먼멤버스</a></li>
                    </ul>
                </div>
                <div id="center">
                    <a href="main.jsp">Human Hotel</a>
                    <h2><strong>5 STAR Luxury hotel</strong></h2>
                </div>
                <div id="right">
                    <ul>
                        <li><a href="notice">공지 게시판</a></li>
                        <li><a href="#">1:1 문의</a></li>
                        <li><a href="#">후기 게시판</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
	<div class="container">
		<h2>공지게시판</h2>
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #ddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>안녕하세요</td>
						<td>홍길동</td>
						<td>2020-12-31</td>
					</tr>
				</tbody>
			</table>
			<a href="notice/notice_write" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	<footer>
        <div id="footerlist">
            <div id="footerP1">
                <p id="p1">Human Hotel</p>
                <p id="p2">5 STAR Luxury hotel</p>
            </div>
            <div id="footerP2">
                <ul>
                    <li>휴먼호텔 두정점 Tel : 000 - 0000 - 0000</li>
                    <li>대표이사 : 이성규 | usa3100@naver.com</li>
                </ul>
            </div>
            <div id="footerP3">
                <ul>
                    <li>사업자등록번호 : 123-45-67890</li>
                    <li>이 사이트 들은 모두 포트폴리오 제작을 위해 만들어진 사이트입니다.</li>
                </ul>
            </div>
            <div id="footerP4">
                <ul>
                    <li><img src="facebook.svg" width="50" height="50"></li>
                    <li><img src="twitter.svg" width="50" height="50"></li>
                    <li><img src="instagram.svg" width="50" height="50"></li>
                </ul>
            </div>
        </div>  
    </footer>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>