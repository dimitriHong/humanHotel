<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
* {margin: 0; padding: 0; list-style: none; text-decoration: none; font-family: 'Noto Sans KR', sans-serif;}
 body { background: url("${pageContext.request.contextPath}/resources/mainimg/intro-back.jpg") no-repeat center; background-size: cover;}
body::before {content:""; position: absolute; z-index: -1; top: 0; bottom: 0; right: 0; left: 0; background: rgba(0,0,0,0.6);}
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
#center a {font-size: 45px; color: #8B4513}
#center h2 {color : #8B5927}
#right {width: 40%;  display: flex; justify-content: center; align-items: center;}
#right ul li {float: left; padding: 0 45px; font-size: 20px; margin-top: 30px;}
#right ul li a {color: #A4814F}
#right ul li:hover {background-color: rgb(238, 198, 146);}
section {height: 75vh; display: flex; justify-content: center; align-items: center;}
#sectionlist {width: 70vw; height: inherit; margin: 0 auto;  }
#sidemenu {width: 20%; height: inherit; display: flex; justify-content: center; align-items: center; }
#sidemenu1 {width: 100%; height: 60%; background-color: wheat}
#mainarticle {width: 80%; height: inherit;}
footer {height: 10vh; background-color: wheat;}
#footerlist {width: 80vw; margin: 0 auto; height: inherit;  display: flex; justify-content: center; align-items: center;}
#footerP1 {width: 20%; text-align: center;}
#footerP2 {width: 30%; display: flex; justify-content: center; align-items: center;}
#footerP2 ul li {font-size: 13px;}
#footerP3 {width: 30%; display: flex; justify-content: center; align-items: center;}
#footerP3 ul li {font-size: 13px;}
#footerP4 {width: 20%; display: flex; justify-content: center; align-items: center;}
#footerP4 ul li {float: left;}
/* by hong */
/* 후기게시판 */
/* 후기게시판 section 전체 크기 */
#client_question{width: 900px;height: 400px; margin: 30px auto;background-color: #fff9ef;}
/* 후기게시판 제목 */
.main_title>h1{margin-left:20px;padding-top: 10px; padding-bottom:10px;width:850px; font-size: 25px;border-bottom: 3px solid  #696060;}
/* table CSS */
/* 전체 테이블 사이즈 */
#que_info{margin-left: 20px;margin-top:  20px; width: 850px;border-top: 1px solid black; border-spacing: 0;}
/* textarea 고정 */
#que_ct{width: 750px;height: 100px;resize: none;}
/* table 밑줄/간격 */
#que_info td{border-bottom: 1px solid black;padding: 3px;}
/* 테이블 왼쪽 style */
.que_left{background-color: #faf9f4;width: 150px;text-align: left;}
/* (*)색깔 */
span{color: red;}
.red_color{color: red;font-size: 9px;width: 850px;margin-left: 20px;}


/* 등록 버튼 */
#btn_submit{display: block;margin:30px auto;width: 150px;cursor: pointer; background-color:wheat;}
</style>
</head>
<body>
    <div class="allwraper">
            <header>
        <jsp:include page="../Main/header.jsp" />
    </header>
        <section>
        <!--by hong -->
                <article id="mainarticle">
                    <div class="mainarticle_wrap">
                        <form action="review_action" method="post" id="form">
                            <div id="client_question">
                                <div class="main_title">
                                    <h1>후기 게시판</h1>
                                </div>
                               
                                <table id="que_info">
                                    <tr class="que_tr">
                                        <td class="que_left">&nbsp;<span>*</span>제목</td>
                                        <td><input type="text" size="50px" name=review_title id="que_title"  ></td>
                                    </tr>
                                    <tr class="que_tr">
                                        <td class="que_left">&nbsp;<span>*</span>내용</td>
                                        <td><textarea name="review_content" id="que_ct"></textarea></td>
                                    </tr>
                                    <tr class="que_tr">
                                        <td class="que_left">&nbsp;<span>*</span>성명</td>
                                        <td><input type="text" size="20px" name=review_name id="que_name" ></td>
                                    </tr>
                                    <tr class="que_tr">
                                        <td class="que_left">&nbsp;<span>*</span>비밀번호</td>
                                        <td><input type="password" size="20px" name=review_password id="que_password" ></td>
                                    </tr>
                                </table>
                                <p class="red_color">*빈칸 없이 모두 입력</p>
                                <input type="submit" value="등록" id="btn_submit">
                            </div>   
                        </form>
                    </div>
                </article>
        </section>
       <footer>
       <jsp:include page="../Main/footer.jsp" />
    </footer>
    </div>
</body>
<script>
$(function() {
	$("#form").submit(function() {
		if ($("#que_title").val() == "") {
			swal({title : "제목을 입력해주세요!",	icon : "error"	});
			$("#que_title").focus();
			return false;
		}
		if ($("#que_ct").val() == "") {
			swal({
				title : "내용을 입력해주세요!",
				icon : "error"
			});
			$("#que_ct").focus();
			return false;
		}
		if ($("#que_name").val() == "") {
			swal({
				title : "성명을 입력해주세요!",
				icon : "error"
			});
			$("#que_name").focus();
			return false;
		}
		if ($("#que_password").val() == "") {
			swal({
				title : "비밀번호를 입력해주세요!",
				icon : "error"
			});
			$("#que_password").focus();
			return false;
		}
	});
});
</script>
</html>