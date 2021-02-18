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
/* 1:1 문의 게시판 */
/* 1:1문의 section 전체 크기 */
#client_question{width: 900px;height: 640px; margin: 30px auto;background-color: #fff9ef;}
/* 1:1문의 제목 */
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

/* 약관 */
.sign_total_box{width: 850px;margin-top: 30px; margin-left: 20px;}
.sign_total_box h4{font-size: 12px;}
.sign{width: 850px;height: 50px;overflow: auto;border: 1px solid black;font-size: 12px;background-color: #fff;}
.sign b{font-size: 13px;}
.agree_box{width: 850px;text-align: right;font-size: 12px;}
.sign_confirm{display: block;float: right;margin-top: 3px;margin-left: 3px;}
.text{margin-left: 10px;}

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
                        <form action="hquestion_write" method="post" id="form">
                            <div id="client_question">
                                <div class="main_title">
                                    <h1>1:1문의</h1>
                                </div>
                               
                                <table id="que_info">
                                    <tr class="que_tr">
                                        <td class="que_left">&nbsp;<span>*</span>질문유형</td>
                                        <td>
                                            <select name="question_list" id="FAQ_part">
                                                <option value="선택" selected>선택</option>
                                                <option value="휴먼리워즈가입">휴먼리워즈가입</option>
                                                <option value="포인트적립/사용">포인트적립/사용</option>
                                                <option value="포인트조정">포인트조정</option>
                                                <option value="기타">기타</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr class="que_tr">
                                        <td class="que_left">&nbsp;<span>*</span>제목</td>
                                        <td><input type="text" size="50px" name=question_title id="que_title"  ></td>
                                    </tr>
                                    <tr class="que_tr">
                                        <td class="que_left">&nbsp;<span>*</span>내용</td>
                                        <td><textarea name="question_content" id="que_ct"></textarea></td>
                                    </tr>
                                    <tr class="que_tr">
                                        <td class="que_left">&nbsp;<span>*</span>성명</td>
                                        <td><input type="text" size="20px" name=question_name id="que_name" ></td>
                                    </tr>
                                    <tr class="que_tr">
                                        <td class="que_left">&nbsp;<span>*</span>이메일</td>
                                        <td><input type="text" name="question_mail" size="20px" id="que_email"  ></td>
                                    </tr>
                                    <tr class="que_tr">
                                        <td class="que_left">&nbsp;<span>*</span>휴대전화</td>
                                        <td><input type="text" size="20px" name=question_mobile id="que_mobile" placeholder="-없이 입력해주세요" ></td>
                                    </tr>
                                </table>
                                <p class="red_color">*빈칸 없이 모두 입력</p>
                                <div class="sign_total_box">
                                    <div id="sign_box1">
                                        <h4>필수적 개인정보 수집 및 이용에 대한 동의</h4>
                                        <div class="sign"> 
                                           <div class="text">
                                            휴먼호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.<br><br>
                                            1. 필수적인 개인정보의 수집 ㆍ이용에 관한 사항<br>
                                            <b>
                                                ① 수집ㆍ이용 항목 | 성명(국문·영문), 이메일, 휴대전화<br>
                                                ② 수집ㆍ이용 목적 | 문의에 대한 안내 및 서비스 제공<br>
                                                ③ 보유ㆍ이용 기간 | 수집ㆍ이용 동의일로부터 5년간 <br><br>
                                            </b>
                                            ※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 문의에 대한 안내 및 서비스 제공과 관련된 제반 절차 진행이 불가능 할 수 있음을 알려드립니다.
                                           </div>
                                        </div>
                                        <div class="agree_box">
                                            <input type="checkbox" name="question_nc" id="sign_confirm1" class="sign_confirm" value=동의함>동의함
                                        </div>
                                    </div>
                                    <div id="sign_box2">
                                        <h4>선택적 개인정보 수집 및 이용에 대한 동의</h4>
                                        <div class="sign">
                                            <div class="text">
                                            휴먼호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다. <br><br>
                                            선택적인 개인정보의 수집 ㆍ이용에 관한 사항 <br>
                                            <b>
                                                ① 수집ㆍ이용 항목 | 자택전화 <br>
                                                ② 수집ㆍ이용 목적 | 문의에 대한 안내 및 서비스 제공 <br>
                                                ③ 보유ㆍ이용 기간 | 수집ㆍ이용 동의일로부터 5년간 <br><br>
                                            </b>
                                           	※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 문의에 대한 안내 및 서비스 제공과 관련된 일반전화 안내 진행이 불가능 할 수 있음을 알려드립니다.
                                            </div>
                                        </div>
                                        <div class="agree_box">
                                            <input type="checkbox" name="question_sl" id="sign_confirm2" class="sign_confirm" value=동의함>동의함
                                        </div>
                                    </div>
                                </div>
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
$(function(){
	   $("#form").submit(function(){
		var mail =/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var chknum =  /^\d{3}\d{3,4}\d{4}$/;
		if($("#FAQ_part").val()=="선택"){
	         swal({title:"유형을 선택해주세요!",icon:"error"});
	         $("#FAQ_part").focus();
	         return false;
	      } 
       if($("#que_title").val()==""){
    	 swal({title:"제목을 입력해주세요!",icon:"error"});
         $("#que_title").focus();
         return false;
      }
      if($("#que_ct").val()==""){
    	  swal({title:"내용을 입력해주세요!",icon:"error"});
         $("#que_ct").focus();
         return false;
      }
      if($("#que_name").val()==""){
    	 swal({title:"성명을 입력해주세요!",icon:"error"});
         $("#que_name").focus();
         return false;
      }
      if($("#que_email").val()==""){
    	 swal({title:"이메일을 입력해주세요!",icon:"error"});
         $("#que_email").focus();
         return false;
      }
     if(!mail.test($("#que_email").val())){
    	 swal({title:"이메일 양식에 맞게 입력해주세요!",icon:"error"});
          $("#que_email").focus();
          return false;
       } 
      if($("#que_mobile").val()==""){
    	  swal({title:"전화번호를 입력하세요!",icon:"error"});
          $("#que_mobile").focus();
          return false;
       } 
      if(!chknum.test($("#que_mobile").val())){
    	  swal({title:"전화번호 양식에 맞게 입력하세요!",icon:"error"});
          $("#que_email").focus();
          return false;
       }
      if($("input:checked[name=question_nc]").is(":checked")==false){
    	  swal({title:"필수약관에 동의하여 주십시오",icon:"error"});
		$("#sign_confirm1").focus();
		return false;
      } 
      if($("input:checked[name=question_sl]").is(":checked")==false){
    	  swal({title:"필수약관에 동의하여 주십시오",icon:"error"});
  		$("#sign_confirm1").focus();
  		return false;
        } 
     return true;
   });
}); 
</script>
</html>