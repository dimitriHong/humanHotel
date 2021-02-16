<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>휴먼호텔소개 - Royal Suite Room</title>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  	<script>
    	$(document).ready(function(){
     	 $('.slider').bxSlider();
    	});
  	</script>
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
        #sectionlist {width: 70vw; height: inherit; margin: 0 auto; display: flex; justify-content: center; align-items: center;}
        #sidemenu {width: 20%; height: inherit; display: flex; justify-content: center; align-items: center; }
        #sidemenu1 {width: 100%; height: 60%; background-color: wheat; padding: 30px;}
        #sidemenu1 h2 {text-align: center; color: #311806;}
        #sidemenu1 ul li {margin-top: 30px; font-size: larger;}
        #sidemenu1 ul li a {color: #311806; font-weight: bold; padding: 5px;}
        #sidemenu1 ul li:hover {background-color: rgb(238, 198, 146);}   
        #mainarticle {width: 80%; height: inherit; display:flex; justify-content: center; align-items: center; }
        #mainarticle-1{width:90%; height:90%;}
        footer {height: 10vh; background-color: wheat;}
        #footerlist {width: 80vw; margin: 0 auto; height: inherit;  display: flex; justify-content: center; align-items: center;}
        #footerP1 {width: 20%; text-align: center;}
        #footerP2 {width: 30%; display: flex; justify-content: center; align-items: center;}
        #footerP2 ul li {font-size: 13px;}
        #footerP3 {width: 30%; display: flex; justify-content: center; align-items: center;}
        #footerP3 ul li {font-size: 13px;}
        #footerP4 {width: 20%; display: flex; justify-content: center; align-items: center;}
        #footerP4 ul li {float: left;}
/* 메인글정보 */
		.main_head{width: 740px;margin-bottom: 15px; border-bottom: 1px solid  #DCAD67;}
		.mainarticle_wrap{width: 780px;height: 700px;padding: 10px;margin-left: 15px;margin-top: 30px;}
		#b_title{font-size: 25px; padding-bottom: 5px; border-bottom: 1px solid #DCAD67; color: #DCAD67;}
		#s_title{font-size: 10px; color: #DCAD67;}
		
		.section {width:725px; height:300px;}
		div.bx-wrapper {height: 300px;}
		/* 객실정보&상세정보 */
		.room_info_up{font-size: 12px;width: 725px;}
		.room_info_up p {color:wheat;}
		.room_info_down{height: 180px; display: flex; justify-content: space-around; align-items: center;}
		.info_box{width: 200px;height: 135px;font-size: 10px;padding: 10px; background-color: #f6f6f6;border-top: 2px solid  #524a28;}
		b{font-size: 13px;}
		#up_title{font-size: 23px;color: #DCAD67;}
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
	                    <div class="mainarticle_wrap">
	                        <div class="main_head">
	                            <p id="b_title">로얄 스위트룸
	                                <b id="s_title">(ROYAL SUITE ROOM)</b>
	                            </p>
	                        </div>
	                       	<div class="section">
	                       		<ul class="bxslider"> 
						    		<li>
						    			<img src="${pageContext.request.contextPath}/resources/room_img/royal01.jpg" height=300px width=740px; alt="">
						    		</li> 
						    		<li>
						    			<img src="${pageContext.request.contextPath}/resources/room_img/royal02.jpg" height=300px width=740px; alt="">
						    		</li> 
						    		<li>
						    			<img src="${pageContext.request.contextPath}/resources/room_img/royal03.jpg" height=300px width=740px; alt="">
						    		</li> 
						    		<li>
						    			<img src="${pageContext.request.contextPath}/resources/room_img/royal04.jpg" height=300px width=740px; alt="">
						    		</li> 
						    	</ul>
						  		<div class="room_info_up">
                            		<p><b id="up_title">객실 상세 정보</b><br>
                                	휴먼의 로얄 스위트룸은 VIP전용 객실로서 우아한 인테리어와 은은한 원목가구풍의 색으로 일관성있고 고급스러운 실내분위기를 자랑하며 또한 침실과 응접실이 분리가 되어 있어서 손님 초대 및 소규모 회의에도 손색이 없는 객실입니다.
                            		</p>                            
                        		</div>
                        		 <div class="room_info_down">
                            <div class="info_box">
                                <p><b>객실 서비스</b><br />
                                    &#8211; Auto Window 설치<br />
                                    &#8211; 개인 욕실 및 Miracle Window 설치<br />
                                    &#8211; 자동 냉난방 시설<br />
                                    &#8211; Whirlpoor 욕조 및 TV 설치<br />
                                    &#8211; 해외 방송 시청 및 무료 Wi-Fi 이용가능<br />
                                    &#8211; 초고속 인터넷<br />
                                    &#8211; 냉장고 겸용 미니바<br />
                                    &#8211; 미네럴워터 제공</p>
                            </div>
                            <div class="info_box">
                                <p>&#8211; 고급 카페트<br />
                                    &#8211; 드레스룸<br />
                                    &#8211; 업무용 책상<br />
                                    &#8211; 안전금고<br />
                                    &#8211; 비데 설치<br />
                                    &#8211; 위성채널<br />
                                    &#8211; 모닝콜서비스<br />
                                    &#8211; 비즈니스센터 이용가능<br />
                                    &#8211; 무료 주차장</p>
                            </div>
                            <div class="info_box">
                                <b>정상가</b><br>
                                 500,000 (봉사료, 세금포함)<br>
                                객실 예약전화 : 000-000-0080<br>
                                <br><br>
                                <b>체크인/체크아웃</b><br>
                                Check In 오후 2시<br>
                                Check Out 오후 12시(정오)
                            </div>
                        </div>
                    </div>
	                       	</div>
                        </div>
                 </article>
            </div>
        </section>
   <footer>
        <jsp:include page="../Main/footer.jsp" />
   </footer>
</body>
<script>
	$(document).ready(function () {
	    $('.bxslider').bxSlider({ // 클래스명 주의!
	        auto: true, // 자동으로 애니메이션 시작
	        speed: 1000,  // 애니메이션 속도
	        pause: 5000,  // 애니메이션 유지 시간 (1000은 1초)
	        mode: 'horizontal', // 슬라이드 모드 ('fade', 'horizontal', 'vertical' 이 있음)
	        autoControls: false, // 시작 및 중지버튼 보여짐
	        pager: false, // 페이지 표시 보여짐
	        captions: false, // 이미지 위에 텍스트를 넣을 수 있음
	    });
	})
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