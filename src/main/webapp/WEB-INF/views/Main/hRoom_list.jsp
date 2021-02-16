<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>휴먼호텔 - 객실소개</title>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
        section {height: 75vh; }
        #sectionlist {width: 70vw; height: inherit; margin: 0 auto; display: flex; justify-content: flex-start; align-items: center;}
        #sidemenu {width: 20%; height: inherit; display: flex; justify-content: center; align-items: center; }
        #sidemenu1 {width: 100%; height: 60%; background-color: wheat; padding: 30px;}
        #sidemenu1 h2 {text-align: center; color: #311806;}
        #sidemenu1 ul li {margin-top: 30px; font-size: larger;}
        #sidemenu1 ul li a {color: #311806; font-weight: bold; padding: 5px;}
        #sidemenu1 ul li:hover {background-color: rgb(238, 198, 146);}   
        #mainarticle {width: 80%; height: inherit; display:flex; justify-content: center; align-items: center;}
        footer {height: 10vh; background-color: wheat;}
        #footerlist {width: 80vw; margin: 0 auto; height: inherit;  display: flex; justify-content: center; align-items: center;}
        #footerP1 {width: 20%; text-align: center;}
        #footerP2 {width: 30%; display: flex; justify-content: center; align-items: center;}
        #footerP2 ul li {font-size: 13px;}
        #footerP3 {width: 30%; display: flex; justify-content: center; align-items: center;}
        #footerP3 ul li {font-size: 13px;}
        #footerP4 {width: 20%; display: flex; justify-content: center; align-items: center;}
        #footerP4 ul li {float: left;}
		/* by hong 메뉴리스트/ Room_list */
		/* Room_list */
		#mainarticle p{font-size: 25px; padding-bottom: 5px; border-bottom: 1px solid #DCAD67; margin-bottom:10px; color:wheat;}
		#mainarticle b{font-size: 15px;}
		.room_list_wrap{max-width: 80%;width: 100%;margin: 0 auto;border-bottom: 1px solid wheat;}
		.room_list_wrap>ul{font-size: 0;}
		.room_list_wrap>ul>li{display: inline-block;vertical-align: top;width: 33.3%;}
		.room_list_wrap>ul>li>a{display: block;width: auto;text-decoration: none;margin: 5px;}
		.room_list_wrap>ul>li>a .screen{position: relative;overflow: hidden;}
		.room_list_wrap>ul>li>a .screen .top{position: absolute;bottom: 150%;left: 30px;z-index: 2;color: #fff;font-size: 26px;font-weight: 900;transition: all .35s;}
		.room_list_wrap>ul>li>a .screen .bottom{position: absolute;top: 150%;left: 30px;z-index: 2;color: #fff;font-size: 12px;transition: all .35s;}
		.room_list_wrap>ul>li>a .screen .img{width: 100%;}
		.room_list_wrap>ul>li>a:hover .top{bottom: 52%;}
		.room_list_wrap>ul>li>a:hover .bottom{top: 52%;}
		.room_list_wrap>ul>li>a .screen::after{content: '';display: block;position: absolute;top: 0;left: 0;width: 100%;height: 100%;background: rgba(0, 0, 0, .5);z-index: 1;opacity: 0;transition: all 0.35s;}
		.room_list_wrap>ul>li>a:hover .screen::after{opacity: 1;}
	</style>
</head>
<body>
 <header>
      <jsp:include page="../Main/header.jsp" />
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
                <div class="room_list_wrap">
                	<div class="main_head">
                    	<p>객실 소개 (Room List)</p>
                	</div>
                    <ul class="room_list">
                        <li>
                            <a href="royal">
                                <div class="screen">
                                    <div class="top">Royal Suite Room</div>
                                    <div class="bottom">로열 스위트 룸</div>
                                    <img src="resources/room_img/royal01-320x200.jpg">
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="junior">
                                <div class="screen">
                                    <div class="top">Royal Junior Room</div>
                                    <div class="bottom">로열 주니어 룸</div>
                                    <img src="resources/room_img/junior01-320x200.jpg">
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="deluxe">
                                <div class="screen">
                                    <div class="top">Deluxe double Room</div>
                                    <div class="bottom">디럭스 더블 룸</div>
                                    <img src="resources/room_img/deluxe_double05-320x200.jpg">
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="twin">
                                <div class="screen">
                                    <div class="top">Standard Twin Room</div>
                                    <div class="bottom">스탠다드 트윈 룸</div>
                                    <img src="resources/room_img/standard_twin01-320x200.jpg">
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="double">
                                <div class="screen">
                                    <div class="top">Standard Double Room</div>
                                    <div class="bottom">스탠다드 더블 룸</div>
                                    <img src="resources/room_img/standard_doble01-320x200.jpg">
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="residence">
                                <div class="screen">
                                    <div class="top">Residence Room</div>
                                    <div class="bottom">레지던스 룸</div>
                                    <img src="resources/room_img/residence01-320x200.jpg">
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </article>
        </div>
    </section>
   <footer>
      <jsp:include page="../Main/footer.jsp" />
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
</html>