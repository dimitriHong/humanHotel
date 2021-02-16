<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>휴먼 호텔</title>
    <style>
        * {margin: 0; padding: 0; list-style: none; text-decoration: none; font-family: 'Noto Sans KR', sans-serif;}       
        section {height: 75vh;  display: flex; justify-content: flex-start; align-items: flex-start; position:relative;}
        
        .bxslider .saying {position:absolute; left:30px; bottom:50px; width:500px;}
        .saying::before {content:""; position: absolute; z-index: 1; top: 0; bottom: 0; right: 0; left: 0; background: rgba(0,0,0,0.2);}
        .saying h1 {font-size:40px; color:white;}
        .saying p {color:white;}
    </style>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  	<script>
    	$(document).ready(function(){
     	 $('.slider').bxSlider();
    	});
  	</script>
</head>
<body>
<header>
	<jsp:include page="../Main/header.jsp" />
</header>
    <section>
    	<ul class="bxslider"> 
    		<li>
    			<img src="${pageContext.request.contextPath}/resources/mainimg/mainimg1.jpg" height=710px width=1920px alt="" title="이미지1">
    			<div class="saying">
    				<h1>도심 속 나만의 휴식처</h1>
    				<p>휴먼호텔은 도심 속 나만의 휴식처를 지향합니다.</p>
    			</div>
    		</li> 
    		<li>
    			<img src="${pageContext.request.contextPath}/resources/mainimg/mainimg2.jpg" height=710px width=1920px alt="" title="이미지2">
    			<div class="saying">
    				<h1>도심 속 나만의 휴식처</h1>
    				<p>휴먼호텔은 도심 속 나만의 휴식처를 지향합니다.</p>
    			</div>
    		</li> 
    		<li>
    			<img src="${pageContext.request.contextPath}/resources/mainimg/mainimg3.jpg" height=710px width=1920px alt="" title="이미지2">
    			<div class="saying">
    				<h1>도심 속 나만의 휴식처</h1>
    				<p>휴먼호텔은 도심 속 나만의 휴식처를 지향합니다.</p>
    			</div>
    		</li> 
    	</ul>
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

</script>
</html>