<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <style>
        * {margin: 0; padding: 0; list-style: none; text-decoration: none; font-family: 'Noto Sans KR', sans-serif;}
       
        section {height: 75vh; }
        #mainarticle {width: 80%; height: inherit;}
        
        /* 로그인폼 */
        .login_wrap{width: 300px;margin: 0 auto;background-color: #fff;border-radius: 15px;margin-bottom: 15px;height: 150px;}
        .loginForm { border: 1px solid black;position:absolute; width:350px; height:400px; padding: 30px, 20px; background-color:wheat; text-align:center; top:50%; left:50%; transform: translate(-50%,-50%); border-radius: 15px;}
        .loginForm h2{ text-align: center; margin: 30px;}
        .idForm{  border-bottom: 2px solid #adadad; margin:15px 30px 0 30px; padding: 10px 10px;background-color: #fff;}
        .passForm{ border-bottom: 2px solid #adadad; margin: 30px; padding: 10px 10px;}
        .id { width: 100%; border:none; outline:none; color: #636e72; font-size:16px; height:25px; background: none;}
        .pw {  width: 100%; border:none; outline:none; color: #636e72; font-size:16px; height:25px; background: none;}
        .btn {position:relative;  left:40%;  transform: translateX(-50%);  margin-bottom: 40px; width:80%; height:40px; background: linear-gradient(125deg,#ebc566,#a77832,#8f610b);border-radius: 15px; background-position: left; background-size: 200%; color:white; font-weight: bold; border:none; cursor:pointer; transition: 0.4s; display:inline;font-size: 15px;}
        .btn:hover {background-position: right;}
        .bottomText {text-align: center;}
    </style>
</head>
<body>
    <div class="allwraper">
        <header>
            <jsp:include page="../Main/header.jsp" />
        </header>
        <section>
            <form action="/login" method="post" class="loginForm">
                <h2>Login</h2>
                <div class="login_wrap">
                    <div class="idForm">
                        <input type="text" class="id" name='username' placeholder="ID">
                      </div>
                      <div class="passForm">
                        <input type="password" class="pw" name='password'  placeholder="PW">
                      </div>
                </div>
                <input type="submit" class="btn" value="로그인">
                <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                <div class="bottomText">
                  ID가 없으신가요? <a href="/member/memberjoin">회원가입</a>
                </div>
            </form>
        </section>
        <footer>
          <jsp:include page="../Main/footer.jsp" />
        </footer>
    </div>   
</body>
<script>
function erchk(){
	document.login.submit();
}
</script>
</html>