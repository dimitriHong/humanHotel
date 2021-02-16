<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>휴먼호텔 - 호텔소개</title>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
        * {margin: 0; padding: 0; list-style: none; text-decoration: none; font-family: 'Noto Sans KR', sans-serif;}       
        section {height: 75vh; }
        #sectionlist {width: 70vw; height: inherit; margin: 0 auto; display: flex; justify-content: flex-start; align-items: center;}
        #sidemenu {width: 20%; height: inherit; display: flex; justify-content: center; align-items: center; }
        #sidemenu1 {width: 100%; height: 60%; background-color: wheat; padding: 30px;}
        #sidemenu1 h2 {text-align: center; color: #311806;}
        #sidemenu1 ul li {margin-top: 30px; font-size: larger;}
        #sidemenu1 ul li a {color: #311806; font-weight: bold; padding: 5px;}
        #sidemenu1 ul li:hover {background-color: rgb(238, 198, 146);}   
        #mainarticle {width: 80%; height: inherit; display:flex; justify-content: center; align-items: center; }
        #mainarticle-1 {width:90%; height:80%; margin-top:100px;}
        #mainarticle-1 h2 {color: #DCAD67; padding: 0 10px;}
        #mainarticle-1 img {padding: 10px; width:98%}
        #mainarticle-1 h1 {color: #DCAD67; padding: 0 20px;}
        #mainarticle-1 p {color: wheat; padding: 0 20px;}
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
               	<div id="mainarticle-1">
	               	<h2>개요</h2>
	                <hr style="border: solid 3px #DCAD67;">
	                <img src="${pageContext.request.contextPath}/resources/mainimg/intro_img1.PNG">
	                <h1>The Best Hospitality Company</h1>
	                <br>
	                <p>휴먼호텔은 ‘최고의 호스피탈리티 기업’을 목표로 오랜 세월 동안 품위와 전통을 유지하며 고객들의 마음을 사로잡아 왔습니다.
	                    LHW 가입을 통해 세계 최고의 럭셔리 호텔들과 어깨를 나란히 하는가 하면 전통이라는 지붕 위에 
	                    모더니즘적 디자인 요소를 가미, 삶의 여유와 품격을 한층 높여 주는 프리미엄 라이프 스타일 공간으로
	                    변화를 거듭해 왔습니다.
	                    휴먼호텔는 앞으로도 끊임없는 창조적 혁신과 도전을 바탕으로 차별화된 최상의 가치를 글로벌 호스피탈리티 명문 기업으로 성장할 것을 약속드립니다.
	                </p>
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