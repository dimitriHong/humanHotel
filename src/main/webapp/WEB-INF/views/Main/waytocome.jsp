<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>휴먼호텔 - 오시는길</title>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  	<!--2. 설치 스크립트 * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.-->
  	<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
<style>
        * {margin: 0; padding: 0; list-style: none; text-decoration: none; font-family: 'Noto Sans KR', sans-serif;} 
        header {height: 15vh;  background-color: wheat; font-weight: bold;}
        body { background: url("${pageContext.request.contextPath}/resources/mainimg/intro-back.jpg") no-repeat center; background-size: cover;}
        body::before {content:""; position: absolute; z-index: -1; top: 0; bottom: 0; right: 0; left: 0; background: rgba(0,0,0,0.6);}
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
        #center a {font-size: 45px; color: #8B4513}
        #center h2 {color : #8B5927}
        #right {width: 40%;  display: flex; justify-content: center; align-items: center;}
        #right ul li {float: left; padding: 0 45px; font-size: 20px; margin-top: 30px;}
        #right ul li a {color: #A4814F}
        #right ul li:hover {background-color: rgb(238, 198, 146);}
        section {height: 75vh;}
        #sectionlist {width: 70vw; height: inherit; margin: 0 auto; display: flex; justify-content: flex-start; align-items: center;}
        #sidemenu {width: 20%; height: inherit; display: flex; justify-content: center; align-items: center; }
        #sidemenu1 {width: 100%; height: 60%; background-color: wheat; padding: 30px;}
        #sidemenu1 h2 {text-align: center; color: #311806;}
        #sidemenu1 ul li {margin-top: 30px; font-size: larger;}
        #sidemenu1 ul li a {color: #311806; font-weight: bold; padding: 5px;}
        #sidemenu1 ul li:hover {background-color: rgb(238, 198, 146);}   
        #mainarticle {width: 80%; height: inherit; display:flex; justify-content: center; align-items: center; flex-wrap:wrap }
        #mainarticle-1 {width:90%; height:60%; margin-top:100px;}
        #mainarticle-1 h2 {color: #DCAD67; padding: 0 10px;}
        #mainarticle-2 {width:90%; height:20%;}
        #mainarticle-2 table {border-collapse:collapse;}
        #mainarticle-2 table th {width:300px; padding:10px; border:2px solid white; color:#333; background-color:#DCAD67;}
        #mainarticle-2 table td {width:700px; padding:10px; border:2px solid white; text-align:center; color:#333; background-color:wheat;}
        footer {height: 10vh; background-color: wheat; }
        #footerlist {width: 80vw; margin: 0 auto; height: inherit;  display: flex; justify-content: center; align-items: center;}
        #footerP1 {width: 20%; text-align: center;}
        #footerP2 {width: 30%; display: flex; justify-content: center; align-items: center;}
        #footerP2 ul li {font-size: 13px;}
        #footerP3 {width: 30%; display: flex; justify-content: center; align-items: center;}
        #footerP3 ul li {font-size: 13px;}
        #footerP4 {width: 20%; display: flex; justify-content: center; align-items: center;}
        #footerP4 ul li {float: left;}
        #daumRoughmapContainer1611364759504 {margin-top:20px;  }
    </style>
</head>
<body>
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
            <div id="sectionlist">
                <article id="sidemenu">
                    <div id="sidemenu1">
	                	<h2>휴먼호텔 소개</h2>
	                    <hr style="border: solid 3px #311806;">
	                    <ul>
	                        <li><a href="${pageContext.request.contextPath}/introduce">개요</a></li>
	                        <li><a href="${pageContext.request.contextPath}/roomlist">객실 소개</a></li>
	                        <li><a href="#">주변 관광지</a></li>
	                        <li><a href="${pageContext.request.contextPath}/waytocome">찾아오시는 길</a></li>
	                    </ul>
                </div>
                </article>
            <article id="mainarticle">
               	<div id="mainarticle-1">
	               	<h2>오시는 길</h2>
	                <hr style="border: solid 3px #DCAD67;">
	                <!-- * 카카오맵 - 지도퍼가기 -->
					<!-- 1. 지도 노드 -->
					<div id="daumRoughmapContainer1611364759504" class="root_daum_roughmap root_daum_roughmap_landing"></div>
               	</div>
               	<div id="mainarticle-2">
	               <table>
               		<tr>
               			<th>버스 이용시</th>
               			<td>3, 30, 31, 11, 830, 840, 850, 860, 870, 910, 911, 920, 921, 92, 94, 97</td>
               		</tr>
               		<tr>
               			<th>도보 이용시</th>
               			<td>1호선 두정역 1번 출구이용 도보 15분</td>
               		</tr>
               	</table>         
               	</div>
               	   
            </article>
        </div>
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
</body>
<script>
$(document)
.on('click','#sidemenu1 ul li:nth-child(3) a', function(){
		event.preventDefault();
		swal("다양한 관광지를 안내해드리기 위해 \n 네이버지도로 연결합니다.", {
			  buttons: ["아니오", "예"],icon: "info"
			}).then((willDelete)=>{
				if (willDelete) {
					  var url = "http://naver.me/5L3P9pF1";  
			          window.open(url, "_blank");  
				 }
			}) 
	})
</script>
<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1611364759504",
		"key" : "243iw",
		"mapWidth" : "965",
		"mapHeight" : "300"
	}).render();
</script>
</html>