<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Human Hotel</title>
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
        #mainarticle {width: 80%; height: inherit; margin-left:50px;margin-bottom: 200px;}
        #sidemenu1{text-align: center;}
        #sidemenu1 h1 a {color: #A4814F;}
        .join1{width: 350px;height:60px; position: relative;top:60px;}
        .join2{width: 350px;height:60px; position: relative;top:60px;}
        .join3{width: 350px;height:60px; position: relative;top:60px;}
        a:visited{color:#8B4513;}

        footer {height: 10vh; background-color: wheat;}
        #footerlist {width: 80vw; margin: 0 auto; height: inherit;  display: flex; justify-content: center; align-items: center;}
        #footerP1 {width: 20%; text-align: center;}
        #footerP2 {width: 30%; display: flex; justify-content: center; align-items: center;}
        #footerP2 ul li {font-size: 13px;}
        #footerP3 {width: 30%; display: flex; justify-content: center; align-items: center;}
        #footerP3 ul li {font-size: 13px;}
        #footerP4 {width: 20%; display: flex; justify-content: center; align-items: center;}
        #footerP4 ul li {float: left;}
      
        .box1{width: 1000px;height:50px;position:absolute;right:600px;text-align:center;bottom: 1100px;background-color: wheat;padding-top:10px;}

        *{margin: 0;padding: 0;box-sizing: border-box}
        body{background-color: #f7f7f7;}
        ul>li{list-style: none}
        a{text-decoration: none;}
        .clearfix::after{content: "";display: block;clear: both;}
        #joinForm{width: 1160px;margin: 0 auto;position: relative; top:220px;border-style: solid;}
        ul.join_box{border: 1px solid #ddd;background-color: #fff;}
        .checkBox,.checkBox>ul{position: relative;}
        .checkBox>ul>li{float: left;}
        .checkBox>ul>li:first-child{width: 85%;padding: 15px;font-weight: 600;color: #888;}
        .checkBox>ul>li:nth-child(2){position: absolute;top: 50%;right: 30px;margin-top: -12px;}
        .checkBox textarea{width: 96%;height: 90px; margin: 0 2%;background-color: #f7f7f7;color: #888; border: none;}
        .footBtwrap{margin-top: 15px;}
        .footBtwrap>li{float: left;width: 50%;height: 60px;}
        .footBtwrap>li>button{display: block; width: 100%;height: 100%; font-size: 20px;text-align: center;line-height: 60px;}
        .fpmgBt1{background-color: #fff;color:#888}
        .fpmgBt2{background-color: lightsalmon;color: #fff}




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
        <div id="sectionlist">
            <article id="sidemenu">
                <div id="sidemenu1">
                    <!--이 안에 세부메뉴 목록 넣기-->
                    <h1 class="join1"><a href="#">회원가입</a></h1>
                    <h1 class="join2"><a href="#">회원정보 입력</a></h1>
                    <h1 class="join3"><a href="#">가입완료</a></h1>
                </div>
            </article>
            <article id="mainarticle">
                <!-- 이 안에 본문내용 넣기-->
                <div class="box1">회원가입 동의서 작성</div>
                <form action="" id="joinForm">
                    <ul class="join_box">
                        <li class="checkBox check01">
                            <ul class="clearfix">
                                <li>이용약관, 개인정보 수집 및 이용,
                                    위치정보 이용약관(선택), 프로모션 안내
                                    메일 수신(선택)에 모두 동의합니다.</li>
                                <li class="checkAllBtn">
                                    <input type="checkbox" name="chkAll" id="chk" class="chkAll">
                                </li>
                            </ul>
                        </li>
                        <li class="checkBox check02">
                            <ul class="clearfix">
                                <li>이용약관 동의(필수)</li>
                                <li class="checkBtn">
                                    <input type="checkbox" name="chk"> 
                                </li>
                            </ul>
                            <textarea name="" id="">여러분을 환영합니다.
        휴먼 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 휴먼 서비스의 이용과 관련하여 휴먼 서비스를 제공하는 휴먼 주식회사(이하 휴먼)와 이를 이용하는 휴먼 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 휴먼 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
               </textarea>
                        </li>
                        <li class="checkBox check03">
                            <ul class="clearfix">
                                <li>개인정보 수집 및 이용에 대한 안내(필수)</li>
                                <li class="checkBtn">
                                    <input type="checkbox" name="chk">
                                </li>
                            </ul>
         
                            <textarea name="" id="">여러분을 환영합니다.
        휴먼 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 휴먼 서비스의 이용과 관련하여 휴먼 서비스를 제공하는 휴먼 주식회사와 이를 이용하는 휴먼 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 휴먼 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
               </textarea>
                        </li>
                        <li class="checkBox check03">
                            <ul class="clearfix">
                                <li>위치정보 이용약관 동의(선택)</li>
                                <li class="checkBtn">
                                    <input type="checkbox" name="chk">
                                </li>
                            </ul>
         
                            <textarea name="" id="">여러분을 환영합니다.
       휴먼 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 휴먼 서비스의 이용과 관련하여 휴먼 서비스를 제공하는 휴먼 주식회사(이하 ‘휴먼’)와 이를 이용하는 휴먼 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 휴먼 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
               </textarea>
                        </li>
                        <li class="checkBox check04">
                            <ul class="clearfix">
                                <li>이벤트 등 프로모션 알림 메일 수신(선택</li>
                                <li class="checkBtn">
                                    <input type="checkbox" name="chk">
                                </li>
                            </ul>
         
                        </li>
                    </ul>
                    <ul class="footBtwrap clearfix">
                        <li><button class="fpmgBt1">비동의</button></li>
                        <li><button class="fpmgBt2">동의</button></li>
                    </ul>
                </form>
        
        

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
                    <li><img src="facebook.svg" width="50" height="50"></li>
                    <li><img src="twitter.svg" width="50" height="50"></li>
                    <li><img src="instagram.svg" width="50" height="50"></li>
                </ul>
            </div>
        </div>  
    </footer>
</body>
</html>