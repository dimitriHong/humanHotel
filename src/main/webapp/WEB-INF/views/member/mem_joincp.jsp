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
  
    section {height: 75vh;background-image:url("../resources/background/joingbackground.jpg") ; opacity: 0.8;background-position:center;background-repeat: no-repeat;}
    #sectionlist {width: 70vw; height: inherit; margin: 0 auto; display: flex; justify-content: flex-start; align-items: center;}
    #sidemenu {width: 20%; height: inherit; display: flex; justify-content: center; align-items: center; }
    #sidemenu1 {width: 100%; height: 60%; background-color: wheat}
    #sidemenu1 a{ width: 130px;text-align:center;display:flex;flex-direction: column;margin:80px;color:#C29F6D}

    
    /* 사이드 메뉴 */
    #sidemenu1 ul{text-align: center;margin: 100px auto;}
    #sidemenu1 ul li{padding: 15px;font-size: 30px;margin-bottom:30px;}

  
    /* 가입완료 문구 */
    #wrap_join{border: 1px solid black;margin-left: 30px;height: 300px;width: 835px;border-radius: 5px;background-color: rgba(250, 235, 215, 0.8);}
    #cp_text{text-align: center; margin-top: 100px;font-size: 30px;}
    #color{color: red;font-weight: bold;}
</style>
</head>
<body>
    <header>
       <jsp:include page="../Main/header.jsp" />
    </header>
    <section>
    <!--by hong -->
        <div id="sectionlist">
            <article id="sidemenu">
                <div id="sidemenu1">
                    <ul>
                        <li >회원가입</li>
                        <li id="color">회원가입 완료</li>
                    </ul>
                </div>
            </article>
            <article id="mainarticle">
                <!-- 가입 필요한 목록 다시 정해서 입력-->
                 <div id="wrap_join">
                    <div id="cp_text"><h1>
                        축하합니다!<br> 
                        회원가입이 되었습니다.<br>
                    </h1></div>
                 </div>
            </article>
        </div>
    </section>
    <footer>
        <jsp:include page="../Main/footer.jsp" />
    </footer>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
$(document).ready(function(){
	setTimeout(function(){
		location.href = '${pageContext.request.contextPath}/';
	},3000)	
})
</script>   
</html>