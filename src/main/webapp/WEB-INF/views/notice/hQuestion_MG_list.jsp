<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
* {margin: 0; padding: 0; list-style: none; text-decoration: none; font-family: 'Noto Sans KR', sans-serif;}
header {height: 15vh;  background-color: wheat; font-weight: bold;}
#menulist {height: inherit; width: 80vw;margin: 0 auto;}
#rightsidemenu {float: right; height: 20%; }
#rightsidemenu ul li {float: left; font-size: 12px; padding: 10px;}
#rightsidemenu ul li a {color:#C29F6D}
#mainmenu {clear: both; display: flex; justify-content: center; align-items: center; height: 80%;}
#left {width: 40%;  display: flex; justify-content: center; align-items: center;}
#left ul li {float: left; padding: 0 45px; font-size: 20px; margin-top: 30px;}
#left ul li a {color: #A4814F}
#left ul li:hover {background-color: rgb(238, 198, 146);}
#center {width: 20%;  text-align: center;}
#center h1 {font-size: 45px; color: #8B4513}
#center h2 {color : #8B5927}
#right {width: 40%;  display: flex; justify-content: center; align-items: center;}
#right ul li {float: left; padding: 0 45px; font-size: 20px; margin-top: 30px;}
#right ul li a {color: #A4814F}
#right ul li:hover {background-color: rgb(238, 198, 146);}
section {height: 75vh; }
#sectionlist {width: 70vw; height: inherit; margin: 0 auto; display: flex; justify-content: flex-start; align-items: center;}
#sidemenu {width: 20%; height: inherit; display: flex; justify-content: center; align-items: center; }
#sidemenu1 {width: 100%; height: 60%; background-color: wheat}
#mainarticle {width: 80%; height: inherit;}
footer {height: 10vh; background-color: wheat;}
#footerlist {width: 80vw; margin: 0 auto; height: inherit;  display: flex; justify-content: center; align-items: center;}
#footerP1 {width: 20%; text-align: center;}
#footerP2 {width: 30%; display: flex; justify-content: center; align-items: center;}
#footerP2 ul li {font-size: 13px;}
#footerP3 {width: 30%; display: flex; justify-content: center; align-items: center;}
#footerP3 ul li {font-size: 13px;}
#footerP4 {width: 20%; display: flex; justify-content: center; align-items: center;}
#footerP4 ul li {float: left;}

/* 1:1 문의 list */
.que_list{width: 900px;height: 500px;border:1px solid black;margin: 50px auto;overflow: auto;padding: 0 30px;}
.table_list{margin: 30px auto;}
.table_list td{width: 100px;text-align: center;}
#title{width: 400px;}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
    <div class="allwraper">
            <header>
        <div id="menulist">
            <div id="rightsidemenu">
                <ul>
                    <li><a href="#">멤버스 로그인</a></li>
                    <li><a href="#">멤버스 가입</a></li>
                    <li><a href="${pageContext.request.contextPath}/reservateSearch">객실예약 확인</a></li>
                </ul>
            </div>
            <div id="mainmenu">
                <div id="left">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/introduce">호텔소개</a></li>
                        <li><a href="${pageContext.request.contextPath}/reservation">객실예약</a></li>
                        <li><a href="#">휴먼멤버스</a></li>
                    </ul>
                </div>
                <div id="center">
                    <a href="${pageContext.request.contextPath}/">Human Hotel</a>
                    <h2>5 STAR Luxury hotel</h2>
                </div>
                <div id="right">
                    <ul>
                        <li><a href="#">공지 게시판</a></li>
                        <li><a href="${pageContext.request.contextPath}/notice/hquestion_write_view">1:1 문의</a></li>
                        <li><a href="#">후기 게시판</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
        <section>
                <article id="mainarticle">
                    <div class="que_list">
                        <table border="1" class="table_list">
                            <tr>
                            	<td>번호</td>
                                <td>유형</td>
                                <td id="title">제목</td>
                                <td>작성자</td>
                                <td>날짜</td>
                            </tr>
                            <c:forEach var="que" items="${question}">
							<tr>
								<td>${que.question_id}</td>
								<td>${que.question_list}</td>
								<td><a href="hquestiondata?question_id=${que.question_id}">${que.question_title}</a></td>
								<td>${que.question_name}</td>
								<td>${que.question_date}</td>
							</tr>
							</c:forEach>
                        </table>
                    </div>
                    <div id="page_num">
                    
                    </div>
                </article>
        </section>
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
                    <li><img src="${pageContext.request.contextPath}/resources/mainimg/facebook.svg" width=50px height=50px></li>
                    <li><img src="${pageContext.request.contextPath}/resources/mainimg/twitter.svg" width=50px height=50px></li>
                    <li><img src="${pageContext.request.contextPath}/resources/mainimg/instagram.svg" width=50px height=50px></li>
                </ul>
            </div>
        </div>  
    </footer>
    </div>
</body>
</html>