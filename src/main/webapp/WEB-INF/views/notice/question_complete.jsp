<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
section {height: 75vh; display: flex; justify-content: center; align-items: center;}
#sectionlist {width: 70vw; height: inherit; margin: 0 auto; display: flex; justify-content: flex-start; align-items: center;}
#sidemenu {width: 20%; height: inherit; }
#sidemenu1 {width: 100%; height: 60%; background-color: wheat}
#mainarticle {width: 80%; height: inherit; display: flex; justify-content: center; align-items: center; }
footer {height: 10vh; background-color: wheat;}
#footerlist {width: 80vw; margin: 0 auto; height: inherit;  display: flex; justify-content: center; align-items: center;}
#footerP1 {width: 20%; text-align: center;}
#footerP2 {width: 30%; display: flex; justify-content: center; align-items: center;}
#footerP2 ul li {font-size: 13px;}
#footerP3 {width: 30%; display: flex; justify-content: center; align-items: center;}
#footerP3 ul li {font-size: 13px;}
#footerP4 {width: 20%; display: flex; justify-content: center; align-items: center;}
#footerP4 ul li {float: left;}
/* by hong */
/* 1:1 문의 게시판 */
/* 1:1문의 section 전체 크기 */
#client_question{width: 900px;height: 640px; margin: 30px auto;background-color: #fff9ef;}
/* 1:1문의 제목 */
.main_title>h1{margin-left:20px;padding-top: 10px; padding-bottom:10px;width:850px; font-size: 25px;border-bottom: 3px solid  #696060;}
/* table CSS */
/* 전체 테이블 사이즈 */
#que_info{margin-left: 20px;margin-top:  20px; width: 850px;border-top: 1px solid black; border-spacing: 0;}
/* textarea 고정 */
#que_ct{width: 750px;height: 100px;resize: none;}
/* table 밑줄/간격 */
#que_info td{border-bottom: 1px solid black;padding: 3px;}
/* 테이블 왼쪽 style */
.que_left{background-color: #faf9f4;width: 150px;text-align: left;}
/* (*)색깔 */
span{color: red;}
.red_color{color: red;font-size: 9px;width: 850px;margin-left: 20px;}

/* 약관 */
.sign_total_box{width: 850px;margin-top: 30px; margin-left: 20px;}
.sign_total_box h4{font-size: 12px;}
.sign{width: 850px;height: 50px;overflow: auto;border: 1px solid black;font-size: 12px;background-color: #fff;}
.sign b{font-size: 13px;}
.agree_box{width: 850px;text-align: right;font-size: 12px;}
.sign_confirm{display: block;float: right;margin-top: 3px;margin-left: 3px;}
.text{margin-left: 10px;}

/* 등록 버튼 */
#btn_submit{display: block;margin:30px auto;width: 50px;cursor: pointer;}
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
                        <li><a href="#">객실예약 확인</a></li>
                    </ul>
                </div>
                <div id="mainmenu">
                    <div id="left">
                        <ul>
                            <li><a href="#">호텔소개</a></li>
                            <li><a href="#">객실예약</a></li>
                            <li><a href="#">휴먼멤버스</a></li>
                        </ul>
                    </div>
                    <div id="center">
                        <h1>Human Hotel</h1>
                        <h2>5 STAR Luxury hotel</h2>
                    </div>
                    <div id="right">
                        <ul>
                            <li><a href="#">공지 게시판</a></li>
                            <li><a href="#">1:1 문의</a></li>
                            <li><a href="#">후기 게시판</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <section>
        <!--by hong -->
                <article id="mainarticle">
                   <div id="complete_text">
                      <h1>1:1문의가 등록 되었습니다. <br>
                         문의해주신 내용의 답변은 접수하신 E-Mail 또는 문자로 안내드리겠습니다. <br>
                         3초뒤 메인페이지로 이동합니다.
                      </h1>
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
						<li><img
							src="${pageContext.request.contextPath}/resources/mainimg/facebook.svg"
							width=50px height=50px></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/mainimg/twitter.svg"
							width=50px height=50px></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/mainimg/instagram.svg"
							width=50px height=50px></li>
					</ul>
				</div>
			</div>
		</footer>
	</div>
    </body>
<script>
$(document).ready(function(){
	setTimeout(function(){
		location.href = '${pageContext.request.contextPath}/';
	},3000)	
})
</script>    
</html>