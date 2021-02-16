<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>header</title>
<style>
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
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
 <header>
        <div id="menulist">
            <div id="rightsidemenu">
                <ul>
                    <li>
                     <sec:authorize access="isAnonymous()">
						<a href="/member/mem_login" class="_loginBtn"><span
							class="ico"> </span>멤버스 로그인 </a>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<a href="#" onclick="" id="logout">로그아웃</a>
							<form id="logout-form" action='<c:url value='/member_mypage/mem_logout'/>'
								method="POST">
								<input name="${_csrf.parameterName}" type="hidden"
									value="${_csrf.token}" />
							</form>
						</sec:authorize></li>
                    <li><sec:authorize access="isAnonymous()">
						<a href="/member/memberjoin" class="_loginBtn"><span
							class="ico"> </span> 멤버스 가입 </a>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<a href="/member/mypage/myinfo" class="_loginBtn"><span
							class="ico"> </span> 마이페이지 </a>
					</sec:authorize></li>
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
                        <li><a href="${pageContext.request.contextPath}/notice/review">후기 게시판</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
</body>
</html>