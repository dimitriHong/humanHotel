<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Human Hotel_main_page</title>
    <style>
        * {margin: 0; padding: 0; list-style: none; text-decoration: none; font-family: 'Noto Sans KR', sans-serif;} 
        section {height: 75vh; }
        
    </style>
</head>
<body>
    <header>
       <jsp:include page="../Main/header.jsp" />
    </header>
	<section>
		<h2>로그아웃</h2>
	</section>
	<footer>
        <jsp:include page="../Main/footer.jsp" />
    </footer>
</body>
</html>