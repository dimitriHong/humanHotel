<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
$(document).ready(function(){
	var review_id=${id.review_id};
	$('#review_id').val(review_id);
}); 
</script>
<style>
    * {margin: 0; padding: 0; list-style: none; text-decoration: none; font-family: 'Noto Sans KR', sans-serif;}     
    #center {width: 20%;  text-align: center;}
    #center a {font-size: 45px; color: #8B4513}
    #center h2 {color : #8B5927}
    #right {width: 40%;  display: flex; justify-content: center; align-items: center;}
    #right ul li {float: left; padding: 0 45px; font-size: 20px; margin-top: 30px;}
    #right ul li a {color: #A4814F}
    #right ul li:hover {background-color: rgb(238, 198, 146);}
    section {height: 75vh;  display: flex; justify-content: flex-start; align-items: flex-start; position:relative;}

    /* 비밀번호 확인 */
    .pw_box{border: 1px solid black; margin: 100px auto;width: 200px;text-align: center;padding: 15px;background-color: rgba(250, 235, 215, 0.8);border-radius: 15px;}
    .pw_box h4{display: block; margin-bottom: 10px;margin-top: 10px;}
    .pw_box input{margin-bottom: 10px;}
    #btn{width: 50px;}
    #review_id{visibility:hidden;}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  
</head>
<body>
<header>
   <jsp:include page="../Main/header.jsp" />
</header>
<section>
    <div class="pw_box">
        <form action="review_pw" method="post">
            <h4>비밀번호를 입력하세요.</h4>
            <input type=text name="review_id" id="review_id">
            <input type="password" name="review_pw" ><br>            
            <input type="submit" id="btn" value="확인">
        </form>
    </div>
</section>
<footer>
  <jsp:include page="../Main/footer.jsp" /> 
</footer>
</body>
</html>