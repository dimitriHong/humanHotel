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
        section {height: 75vh;background-image:url("manuel-moreno-DGa0LQ0yDPc-unsplash (1).jpg");background-position:center;background-repeat: no-repeat;    opacity: 0.8; }
        #sectionlist {width: 70vw; height: inherit; margin: 0 auto; display: flex; justify-content: flex-start; align-items: center;}
        #sidemenu {width: 20%; height: inherit; display: flex; justify-content: center; align-items: center; }
        #sidemenu1 {width: 100%; height: 60%; background-color: wheat}
    
        footer {height: 10vh; background-color: wheat;}
        #footerlist {width: 80vw; margin: 0 auto; height: inherit;  display: flex; justify-content: center; align-items: center;}
        #footerP1 {width: 20%; text-align: center;}
        #footerP2 {width: 30%; display: flex; justify-content: center; align-items: center;}
        #footerP2 ul li {font-size: 13px;}
        #footerP3 {width: 30%; display: flex; justify-content: center; align-items: center;}
        #footerP3 ul li {font-size: 13px;}
        #footerP4 {width: 20%; display: flex; justify-content: center; align-items: center;}
        #footerP4 ul li {float: left;}

        #mainarticle {width: 80%; height:80%; background-image:url("r.png");background-position:center;background-repeat: no-repeat;background-size:cover ;margin:30px;box-shadow:5px 5px 15px 5px rgba(0,0,0,.5);}
     
        #my{position: relative; left:120px;top:40px; border-bottom: solid #8B4513;width: 80%;}
        

        #field {color: black; width: 70%;height: 50%; margin:60px;margin-left: 150px;position: relative;bottom:20px;}
        legend{margin:20px;}
        table{ margin-left:160px;width:100%;position: relative; right:150px;bottom: 30px;}
        #color1{padding:10px;text-align: center;}
        #sub1{display: flex;justify-content: center; }
        #sub1 input{font-size:15px; margin:10px;padding:10px;background-color:bisque; border-style: solid tan;width:100px;position: relative;top:70px;right:30px;}
        #sidemenu1 ul li{ margin:60px; text-align:center; }
        #sidemenu1 ul li a{ color:#C29F6D;}
        #girl{position: relative;right:250px;}
        #s1 a:visited{color:#8B4513;}
        
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
                        <li ><a href="#">공지 게시판</a></li>
                        <li ><a href="#">1:1 문의</a></li>
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
                <ul>
                  <li id="s1">  <a href="#">회원정보</a></li>
                  <li id="s2">  <a href="#">회원정보 수정</a></li>
                  <li id="s3">  <a href="#">회원탈퇴</a></li>
                </ul>
                </div>
            </article>
            <article id="mainarticle">
                <!-- 이 안에 본문내용 넣기-->
                
                <div id="main_changing">
                    <form method="post" action="">
                    <h1 id="my">내 정보</h1>
                    <fieldset id="field">
                        <legend>마이페이지</legend>
                        <table>
                            <tr>
                                <td id="color1">아이디</td>
                                <td><input type="text" size="35"name="userid" value=""></td>
                            </tr>
                            <tr>
                                <td id="color1">비밀번호</td>
                                <td><input type="password" size="35"name="userpw" placeholder="비밀번호"></td>
                            </tr>
                            <tr>
                                <td id="color1">이름</td>
                                <td><input type="text" size="35" name="name"placeholder="이름" value=""></td>                             
                            </tr>
                            <tr>
                                <td id="color1">주소</td>
                                <td><input type="text" size="35" name="adress"placeholder="주소" value=""></td>                             
                            </tr>
                            <tr>
                                <td id="color1">이메일</td>
                                <td><input type="text" size="35" name="adress"placeholder="이메일" value=""></td>                             
                            </tr>
                            <tr>
                                <td id="color1">성별</td>
                                <td>남<input type="radio"  name="sex" value="남"> </td><td id="girl">여<input type="radio"  name="sex" value="여"> </td>
                            </tr>
                            <tr>
                                <td id="color1">멤버쉽 번호</td>
                                <td><input type="text" size="35" name="adress" value=""></td>                             
                            </tr>
                            <tr>
                                <td id="color1">멤버쉽 등급</td>
                                <td><input type="text" size="35" name="adress" value=""></td>                             
                            </tr>
                            <tr>
                                <td id="color1">호텔이용횟수</td>
                                <td><input type="text" size="35" name="adress" value=""></td>                             
                            </tr>
                            <tr>
                                <td id="color1">총이용금액</td>
                                <td><input type="text" size="35" name="adress" value=""></td>                             
                            </tr>
                            </table>
                            <div id="sub1">
                            <input type ="submit"  size="45" value="정보변경"/>
                            <input type ="submit"  value="취소"/>
                            </div>
                    </fieldset>
                </form>
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
                    <li><img src="facebook.svg" width="50" height="50"></li>
                    <li><img src="twitter.svg" width="50" height="50"></li>
                    <li><img src="instagram.svg" width="50" height="50"></li>
                </ul>
            </div>
        </div>  
    </footer>
</body>
</html>