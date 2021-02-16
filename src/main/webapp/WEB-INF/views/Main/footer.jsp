<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>footer</title>
<style>
        footer {height: 10vh; background-color: wheat;}
        #footerlist {width: 80vw; margin: 0 auto; height: inherit;  display: flex; justify-content: center; align-items: center;}
        #footerP1 {width: 20%; text-align: center;}
        #footerP2 {width: 30%; display: flex; justify-content: center; align-items: center;}
        #footerP2 ul li {font-size: 13px;}
        #footerP3 {width: 30%; display: flex; justify-content: center; align-items: center;}
        #footerP3 ul li {font-size: 13px;}
        #footerP4 {width: 20%; display: flex; justify-content: center; align-items: center;}
        #footerP4 ul li {float: left;}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
 <footer>
        <div id="footerlist">
            <div id="footerP1">
                <p id="p1">Human Hotel</p>
                <p id="p2">5 STAR Luxury hotel</p>
            </div>
            <div id="footerP2">
                <ul>
                    <li>�޸�ȣ�� ������ Tel : 000 - 0000 - 0000</li>
                    <li>��ǥ�̻� : �̼��� | usa3100@naver.com</li>
                </ul>
            </div>
            <div id="footerP3">
                <ul>
                    <li>����ڵ�Ϲ�ȣ : 123-45-67890</li>
                    <li>�� ����Ʈ ���� ��� ��Ʈ������ ������ ���� ������� ����Ʈ�Դϴ�.</li>
                </ul>
            </div>
            <div id="footerP4">
                <ul>
                    <li><img src="${pageContext.request.contextPath}/resources/mainimg/facebook.svg" width=50px height=50px></li>
                    <li><img src="${pageContext.request.contextPath}/resources/mainimg/twitter.svg" width=50px height=50px></li>
                    <li><img src="${pageContext.request.contextPath}/resources/mainimg/instagram.svg" width=50px height=50px></li>
                </ul>
            </div>
        </div>  
    </footer>
</body>
</html>