<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        * {margin: 0; padding: 0; list-style: none; text-decoration: none; font-family: 'Noto Sans KR', sans-serif;} 
       
        section {height: 75vh;background-image:url("manuel-moreno-DGa0LQ0yDPc-unsplash (1).jpg");background-position:center;background-repeat: no-repeat;    opacity: 0.8; }
        #sectionlist {width: 70vw; height: inherit; margin: 0 auto; display: flex; justify-content: flex-start; align-items: center;}
        #sidemenu {width: 20%; height: inherit; display: flex; justify-content: center; align-items: center; }
        #sidemenu1 {width: 100%; height: 60%; background-color: wheat}
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
        <jsp:include page="../Main/header.jsp" />
    </header>
    <section>
        <div id="sectionlist">
            <article id="sidemenu">
                <div id="sidemenu1">
                    <!--이 안에 세부메뉴 목록 넣기-->
                <ul>
                  <li id="s1">  <a href="myinfo">회원정보</a></li>
                  <li id="s3">  <a href="mem_delpage">회원탈퇴</a></li>
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
                                    <td>${mem_info.ID}</td>
                                </tr>
                                <tr>
                                    <td id="color1">이름</td>
                                    <td>${mem_info.NAME}</td>                             
                                </tr>
                                <tr>
                                    <td id="color1">전화번호</td>
                                    <td>${mem_info.mem_mobile}</td>                            
                                </tr>
                                <tr>
                                    <td id="color1">주소</td>
                                    <td>${mem_info.mem_address}</td>                             
                                </tr>
                                <tr>
                                    <td id="color1">이메일</td>
                                    <td>${mem_info.mem_email}</td>                             
                                </tr>
                                
                                <tr>
                                    <td id="color1">멤버쉽 번호</td>
                                    <td>${mem_info.mem_number}</td>                             
                                </tr>
                                <tr>
                                    <td id="color1">멤버십 등급</td>
                                    <td>${mem_info.mem_tier}</td>                             
                                </tr>
                                <tr>
                                    <td id="color1">멤버십 포인트</td>
                                    <td>${mem_info.mem_point}</td>                             
                                </tr>
                            </table>
                            <div id="sub1">
                                <a href="/member/mypage/mem_udpage">정보수정</a>
                            </div>
                        </fieldset>
                </form>
                </div>
            </article>
        </div>
    </section>
    <footer>
       <jsp:include page="../Main/footer.jsp" />
    </footer>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
$('#logout').click(function(){
	
	if (confirm("로그아웃 하시겠습니까?") == true) {
		document.getElementById('logout-form').submit();
		return true;
	} else {
		return false;
	}
})
</script>
</html>