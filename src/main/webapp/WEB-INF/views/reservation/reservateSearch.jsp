<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>휴먼호텔 - 객실예약확인</title>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
        * {margin: 0; padding: 0; list-style: none; text-decoration: none; font-family: 'Noto Sans KR', sans-serif;} 
        header {height: 15vh;  background-color: wheat; font-weight: bold;}
        body { background: url("${pageContext.request.contextPath}/resources/mainimg/intro-back.jpg") no-repeat center; background-size: cover;}
        body::before {content:""; position: absolute; z-index: -1; top: 0; bottom: 0; right: 0; left: 0; background: rgba(0,0,0,0.6);}
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
        section {height: 75vh; }
        #sectionlist {width: 70vw; height: inherit; margin: 0 auto; display: flex; justify-content: flex-start; align-items: center;}
        #sidemenu {width: 20%; height: inherit; display: flex; justify-content: center; align-items: center; }
        #sidemenu1 {width: 100%; height: 60%; background-color: wheat; padding: 30px;}
        #sidemenu1 h2 {text-align: center; color: #311806;}
        #sidemenu1 ul li {margin-top: 30px; font-size: larger;}
        #sidemenu1 ul li a {color: #311806; font-weight: bold; padding: 5px;}
        #sidemenu1 ul li:hover {background-color: rgb(238, 198, 146);}   
        #mainarticle {width: 80%; height: inherit; display: flex; justify-content: center; align-items: center; }
        #searchPart {width: 70%; height: 85%; display: flex; justify-content: center; align-items: center; flex-wrap:wrap;}
        .searchP1 {width:100%; height:7%; display: flex; justify-content: center; align-items: flex-start; color:wheat; font-size:17px;}
        .searchP2 {width:100%; height:10%;  display: flex; justify-content: center; align-items: center;}
        .searchP2-1 {width:28%; height:100%; display: flex; justify-content: center; align-items: center; position:relative;}
        .searchP2-2 {width:16%; height:100%; display: flex; justify-content: center; align-items: center;}
        .searchP2-1 input[type=text] {
 			width: 70%;
            padding: 10px 10px 10px;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #FAEBD7;
            font-size: 13px; color: #fff;
            outline: none;
        }
        .searchP2-1 label {
            position: absolute; left: 15px; top: 0px;
            font-size: 12px; color: #FAEBD7;
        }
        .but_area1 {
            width: 80%;
            height: 60%;
            border: none;
            background:#E1B771;
            color: #fff;
            border-radius: 25px;
            outline: none;
            font-size: 15px;
        }
        .but_area1:hover {
        	font-weight:bold;
        }
        .searchP3 {width:100%; height:7%; display: flex; justify-content: center; align-items: center; color:wheat; font-size:17px;}
        .searchP4 {width:100%; height:10%; display: flex; justify-content: center; align-items: center; color:wheat;  position:relative;}
        .searchP4-1 {width:50%; height:100%; display: flex; justify-content: center; align-items: center; position:relative;}
        .searchP4-1 input[type=text] {
 			width: 70%;
            padding: 10px 10px 10px;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #FAEBD7;
            font-size: 13px; color: #fff;
            outline: none;
        }
        .searchP4-1 label {
            position: absolute; left: 15px; top: 0px;
            font-size: 12px; color: #FAEBD7;
        }
        .searchP5 {width:100%; height:10%; display: flex; justify-content: center; align-items: center; color:wheat; }
        .searchP5-1 {width:33.3%; height:100%; display: flex; justify-content: center; align-items: center; color:wheat; position:relative;}
        .searchP5-1 input {
            width: 80%;
            height: 50%;
            background-color:  rgba(250, 235, 215, 0.6);
            border: none;
            color: black;
            font-size: 16px;
            margin-top:17px;
        }
        .searchP5-1 label {
            position: absolute; left: 15px; top: -2px;
            font-size: 12px; color: #FAEBD7;
        }
        .resP5 {width:100%; height:10%; display: flex; justify-content: flex-start; align-items: center; }
        .resP5-1 {width:25%; height:100%; display: flex; justify-content: center; align-items: center; position:relative; }
        .resP5-2 {width:25%; height:100%; display: flex; justify-content: center; align-items: center; position:relative; }
        .resP5-1 input[type=text], .resP5-1 input[type=number]{
            width: 70%;
            padding: 20px 10px 10px;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #FAEBD7;
            font-size: 15px; color: #fff;
            outline: none;
        }
        .resP5-1 label{
            position: absolute; left: 15px; top: 5px;
            font-size: 12px; color: #FAEBD7;
        }
        .resP5-2-1 {width:33%; height:100%; display: flex; justify-content: center; align-items: center; position:relative;}
        .resP5-2-1 label{
            position: absolute; top:0px;
            font-size: 11px; color: #FAEBD7;
        }
        .resP6 {width:100%; height:10%; display: flex; justify-content: flex-end; align-items: flex-end;}
        .resP6-1 {width:100%; height:60%; display: flex; justify-content: center; align-items: center; position:relative; color: wheat;}
        .resP6-1 input[type=text] {
            width: 80%;
            padding: 20px 10px 10px;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #FAEBD7;
            font-size: 15px; color: #fff;
            outline: none;
        }
        .resP6-1 label{
            position: absolute; left: 5px; top: 5px;
            font-size: 13px; color: #FAEBD7;
        }
        .resP7 {width:100%; height:10%;display: flex; justify-content: flex-end; align-items: flex-end;}
        .resP7-1 {width:25%; height:100%; display: flex; justify-content: center; align-items: center; position:relative;}
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
</head>
<body>
    <header>
        <div id="menulist">
            <div id="rightsidemenu">
                <ul>
                    <li><a href="#">멤버스 로그인</a></li>
                    <li><a href="#">멤버스 가입</a></li>
                    <li><a href="${pageContext.request.contextPath}/reservateSearch">객실예약 확인</a></li>
                </ul>
            </div>
            <div id="mainmenu">
                <div id="left">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/introduce">호텔소개</a></li>
                        <li><a href="${pageContext.request.contextPath}/reservation">객실예약</a></li>
                        <li><a href="#">휴먼멤버스</a></li>
                    </ul>
                </div>
                <div id="center">
                    <a href="${pageContext.request.contextPath}/">Human Hotel</a>
                    <h2>5 STAR Luxury hotel</h2>
                </div>
                <div id="right">
                    <ul>
                        <li><a href="#">공지 게시판</a></li>
                        <li><a href="${pageContext.request.contextPath}/notice/hquestion_write_view">1:1 문의</a></li>
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
                    <h2>객실예약</h2>
                    <hr style="border: solid 3px #311806;">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/reservation">객실예약하기</a></li>
                        <li><a href="${pageContext.request.contextPath}/reservateSearch">객실예약 확인</a></li>
                    </ul>
                </div>
            </article>
            <article id="mainarticle"> 
            	<div id="searchPart">
            		<div class="searchP1"><p>객실예약 내역 조회하기</p></div>
            		<div class="searchP2">
            			<div class="searchP2-1">
	            			<input type="text" name="reserveID" style="text-align: center;" id="reserveID">
	                        <label for="reserveID">예약ID</label>
            			</div>    
            			<div class="searchP2-1">
	            			<input type="text" name="cusname" style="text-align: center;" id="cusname">
	                        <label for="cusname">예약자명</label>
            			</div>  
            			<div class="searchP2-1">
	            			<input type="text" name="cusmobile" style="text-align: center;" id="cusmobile">
	                        <label for="cusmobile">예약자 전화번호</label>
            			</div>  
            			<div class="searchP2-2">
            				<button type="button" name="search" class="but_area1">조회하기</button>
            			</div>         		
            		</div>
            		<div class="searchP3">
            			<p>객실예약 내역 조회결과</p>
            		</div>
            		<div class="searchP4">
            			<div class="searchP4-1">
	            			<input type="text" name="reserveDate" style="text-align: center;" id="reserveDate" readonly>
	                        <label for="reserveDate">예약일시</label>
            			</div>
            			<div class="searchP4-1">
	            			<input type="text" name="reserveID2" style="text-align: center;" id="reserveID2" readonly>
	                        <label for="reserveID2">예약ID</label>
            			</div>  
            		</div>
            		<div class="searchP4">
            			<div class="searchP4-1">
	            			<input type="text" name="cusname2" style="text-align: center;" id="cusname2" readonly>
	                        <label for="cusname2">예약자명</label>
            			</div>
            			<div class="searchP4-1">
	            			<input type="text" name="cusmobile2" style="text-align: center;" id="cusmobile2" readonly>
	                        <label for="cusmobile2">예약자 전화번호</label>
            			</div>  
            		</div>
            		<div class="searchP4">
            			<div class="searchP4-1">
	            			<input type="text" name="roomname" style="text-align: center;" id="roomname" readonly>
	                        <label for="roomname">객실명</label>
            			</div>
            			<div class="searchP4-1">
	            			<input type="text" name="roomtype" style="text-align: center;" id="roomtype" readonly>
	                        <label for="roomtype">객실타입</label>
            			</div>  
            		</div>
            		<div class="searchP5">
            			<div class="searchP5-1">
							<input type="date" name="checkindate" style="text-align: center;" id="checkindate" readonly>
	                        <label for="checkindate">체크인 날짜</label>
            			</div>
            			<div class="searchP5-1">
							<input type="date" name="checkoutdate" style="text-align: center;" id="checkoutdate" readonly>
	                        <label for="checkindate">체크아웃 날짜</label>
            			</div>
            			<div class="searchP5-1">
            			   <input type="number" name="cusnum" id="cusnum" style="text-align: center;" min="1" step="1" value="1" readonly>
                           <label for="cusnum">숙박인원</label>
                        </div>  
            		</div>
            		<div class="resP5">
            			<div class="resP5-1">
            			    <input type="text" name="cusmembership" id="cusmembership" style="text-align: center;" readonly>
                            <label for="cusmembership">멤버쉽 ID</label>
            			</div>
            			<div class="resP5-1">
            			    <input type="text" name="memberTier" id="memberTier" style="text-align: center;" readonly>
                            <label for="memberTier">멤버쉽 등급</label>
            			</div>
            			<div class="resP5-1">
            			    <input type="number" name="cusmemberpoint" id="cusmemberpoint" style="text-align: center;" readonly>
                            <label for="cusmemberpoint">총 사용가능 멤버쉽 Point</label>
            			</div>
            			<div class="resP5-2">
            				<div class="resP5-2-1">
            					<input type="radio" name="checkbox1" id="a1" value="a1">
            					 <label for="a1">확인</label>
            				</div>
            				<div class="resP5-2-1">
            					<input type="radio" name="checkbox1" id="a2" value="a2">
            					 <label for="a2">사용</label>
            				</div>
            				<div class="resP5-2-1">
            					<input type="radio" name="checkbox1" id="a3" value="a3">
            					 <label for="a3">적립</label>
            				</div>							
                        </div>
            		</div>
            		 <div>
                        <div class="resP6-1">
		            		<input type="text" name="cussum" id="cussum" style="text-align: center;" readonly>원
	                        <label for="cussum">총 숙박비용</label>
	            		</div>     
                      </div>
                      <div class="resP7">
                    	<div class="resP7-1">
                       		<button type="button" name="update" class="but_area1">예약수정하기</button>
                    	</div>
                    	<div class="resP7-1">
                       		<button type="button" name="delete" class="but_area1">예약취소하기</button>
                    	</div>
            		</div>
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
                    <li><img src="${pageContext.request.contextPath}/resources/mainimg/facebook.svg" width=50px height=50px></li>
                    <li><img src="${pageContext.request.contextPath}/resources/mainimg/twitter.svg" width=50px height=50px></li>
                    <li><img src="${pageContext.request.contextPath}/resources/mainimg/instagram.svg" width=50px height=50px></li>
                </ul>
            </div>
        </div>  
    </footer>
</body>
<script>
let jb2=0;
let ss=0;
let usepoint=0;
let usepoint2=0;
let addpoint=0;
let onedaypay=0;
let maxcus=0;
let booksum=0;
let mempoint=0;
var today1;
var today2;
var today3;
var today4;
var today5;
var today6;

function checkdate1() {
	var date = new Date(); 
	var year = date.getFullYear(); 
	var month = new String(date.getMonth()+1); 
	var day = new String(date.getDate());
	if(month.length == 1){ 
	  month = "0" + month; 
	} 
	if(day.length == 1){ 
	  day = "0" + day; 
	} 
	today1 = year + "-" + month + "-" + day;
	date.setDate(date.getDate() + 30);
	year = date.getFullYear(); 
	month = new String(date.getMonth()+1); 
	day = new String(date.getDate()); 

	if(month.length == 1){ 
		  month = "0" + month; 
		} 
		if(day.length == 1){ 
		  day = "0" + day; 
		} 
	today2 = year + "-" + month + "-" + day;
	var date3 = new Date();
	date3.setDate(date3.getDate() + 1);
	var year3 = date3.getFullYear(); 
	var month3 = new String(date3.getMonth()+1); 
	var day3 = new String(date3.getDate()); 

	if(month3.length == 1){ 
		  month3 = "0" + month3; 
		} 
		if(day3.length == 1){ 
		  day3 = "0" + day3; 
		} 
	today3 = year3 + "-" + month3 + "-" + day3;

	date3.setDate(date3.getDate() + 30);
	year3 = date3.getFullYear(); 
	month3 = new String(date3.getMonth()+1); 
	day3 = new String(date3.getDate()); 

	if(month3.length == 1){ 
		  month3 = "0" + month3; 
		} 
		if(day3.length == 1){ 
		  day3 = "0" + day3; 
		} 
 	today4 = year3 + "-" + month3 + "-" + day3;
}

function checkdate2(value1){
	var indate = value1.split("-")
	var indate2 = new Date(indate[0],indate[1]-1,indate[2]);
	indate2.setDate(indate2.getDate() + 1);
	var year4 = indate2.getFullYear(); 
	var month4 = new String(indate2.getMonth()+1); 
	var day4 = new String(indate2.getDate()); 
	if(month4.length == 1){ 
		  month4 = "0" + month4; 
		} 
		if(day4.length == 1){ 
		  day4 = "0" + day4; 
		} 
	today5 = year4 + "-" + month4 + "-" + day4;
	
	indate2.setDate(indate2.getDate() + 30);
	year4 = indate2.getFullYear(); 
	month4 = new String(indate2.getMonth()+1); 
	day4 = new String(indate2.getDate()); 
	if(month4.length == 1){ 
		  month4 = "0" + month4; 
		} 
		if(day4.length == 1){ 
		  day4 = "0" + day4; 
		} 
	today6 = year4 + "-" + month4 + "-" + day4;
}

function checkdate3(){
	checkdate2($('#checkindate').val())
	$('#checkoutdate').prop("min",today5)
	$('#checkoutdate').prop("max",today6)
	if($('#checkindate').val()>=$('#checkoutdate').val()){
		$('#checkoutdate').prop("value",today5)
	}
}

function setCal1() {
	$('#checkindate').prop("min",today1)
	$('#checkindate').prop("max",today2)
	$('#checkoutdate').prop("min",today3)
	$('#checkoutdate').prop("max",today4)
}

function onedaycal(){
	$('#cusmemberpoint').val(Math.floor($('#cusmemberpoint').val()/1000)*1000)
	var sdt = new Date($('#checkindate').val());
	var edt = new Date($('#checkoutdate').val());
	var dateDiff = Math.ceil((edt.getTime()-sdt.getTime())/(1000*3600*24));
	booksum=parseInt(dateDiff*onedaypay);
	if($('#a2').prop("checked")){
		$('#cussum').val(booksum-$('#cusmemberpoint').val())
	}else{
		$('#cussum').val(booksum)
	}
	return false;
}

function check() {
	if($('#a1').prop("checked")) {
		$("label[for='cusmemberpoint']").text('총 사용가능 멤버쉽 Point');
		$('#cusmemberpoint').val(mempoint)
		onedaycal()
		$('#cusmemberpoint').prop('readonly',true)
	}else if($('#a2').prop("checked")) {
		$("label[for='cusmemberpoint']").text('사용할 멤버쉽 Point');
		$('#cusmemberpoint').prop('readonly',false)
		if(mempoint>=booksum){
			usepoint2=booksum
			$('#cusmemberpoint').prop('min','10000')
			$('#cusmemberpoint').prop('step','1000')
			$('#cusmemberpoint').prop("max",Math.floor(usepoint2/1000)*1000)
			$('#cusmemberpoint').prop("value",Math.floor(usepoint2/1000)*1000)
		}else{
			$('#cusmemberpoint').prop('min','10000')
			$('#cusmemberpoint').prop('step','1000')
			$('#cusmemberpoint').prop("max",Math.floor(mempoint/1000)*1000)
			$('#cusmemberpoint').prop("value",Math.floor(mempoint/1000)*1000)
		}
		onedaycal()
	}else if($('#a3').prop("checked")) {
		$("label[for='cusmemberpoint']").text('적립예정 멤버쉽 Point');
		$('#cusmemberpoint').prop('readonly',true)
		onedaycal()
		addpoint2()		
	}
	return false;
}

function addpoint2() {
	switch ($('#memberTier').val()){
	case "Bronze" :
		$('input[name=cusmemberpoint]').val(booksum*0.01)
		break;
	case "Silver" :
		$('input[name=cusmemberpoint]').val(booksum*0.015)
		break;
	case "Gold" :
		$('input[name=cusmemberpoint]').val(booksum*0.02)
		break;
	default :
		$('input[name=cusmemberpoint]').val(booksum*0.025)
	}
}

function pointcheck(){
	if($('#cusmemberpoint').val()<9999 && $('#cusmemberpoint').val()>0){
		$('#cusmemberpoint').val(10000);
	}
	if(!$.isNumeric($('#cusmemberpoint').val())){
		$('#cusmemberpoint').val(mempoint);
	}
	if($('#cusmemberpoint').val()>mempoint){
		$('#cusmemberpoint').val(mempoint);
	}
}

var isEmpty = function(val) {
    if (val === "" || val === null || val === undefined
      || (val !== null && typeof val === "object" && !Object.keys(val).length)
    ){
      return true
    } else {
      return false
    }
};

function membersearch() {
	if($('#cusname').val()!=null && $('#cusmobile').val()!=null){
		$.ajax({ type: "POST", 
		 url : "admin/memsearch",
		 async: true,
		 dataType: "json",
		 data:{cusname:$('#cusname').val(),cusmobile:$('#cusmobile').val()},
		 success : function(data, status, xhr) {
			 if(isEmpty(data)){
				$('.resP6-1').css('visibility', 'visible');
				$('.resP7').css('visibility', 'visible');
				$('input[name=cussum]').val(booksum);
				ss=0
			 }else{
				 ss=1
				$('.resP5').css('visibility', 'visible');
				$('.resP6-1').css('visibility', 'visible');
				$('.resP7').css('visibility', 'visible');
				$.each(data,function(ndx,value){
					 $('#cusmembership').val(value['mem_number'])
					 mempoint=parseInt(value['mem_point'])
					 $('#memberTier').val(value['mem_tier'])
				})
				if(usepoint>=1){
					$('#cusmemberpoint').val(usepoint)
					$("label[for='cusmemberpoint']").text('사용한 멤버쉽 Point');
					$("input[type=radio]").prop("disabled",true);
					$('input[name=cussum]').val(booksum);
					 mempoint=mempoint+parseInt(usepoint);
				}else{
					$('#cusmemberpoint').val(addpoint)
					$("label[for='cusmemberpoint']").text('적립한 멤버쉽 Point');
					$("input[type=radio]").prop("disabled",true);
					$('input[name=cussum]').val(booksum);
					mempoint=mempoint-parseInt(addpoint);
				}
			 } 
		 }, 
		 error: function(jqXHR, textStatus, errorThrown) {
			 swal({title: "검색에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
			 console.log(jqXHR.responseText);
		 }});
	}
}

$(document)
.ready(function(){
	$('.searchP3').css('visibility', 'hidden');
	$('.searchP4').css('visibility', 'hidden');
	$('.searchP5').css('visibility', 'hidden');
	$('.resP5').css('visibility', 'hidden');
	$('.resP6-1').css('visibility', 'hidden');
	$('.resP7').css('visibility', 'hidden');
	checkdate1();
	setCal1(); 
	$('input[type=radio]').prop('checked',false)
	return false;
})

.on('keyup','#cusmobile',function(){
	if(!$.isNumeric($('#cusmobile').val())){
		$('#cusmobile').val("");
	}
	let a = $('input[name=cusmobile]').val();
	if(a.length>11){
		$('input[name=cusmobile]').val(a.substring(0,11));
	}
	var regExp = /^\d{3}\d{3,4}\d{4}$/;
	 if(!regExp.test($('input[name=cusmobile]').val())){
		 jb2=1
		 $('input[name=cusmobile]').css("color","red");
	 }else{
		 jb2=0
		 $('input[name=cusmobile]').css("color","#fff");
	 }
	 return false;
})

.on('keyup','#reserveID',function(){
	if(!$.isNumeric($('#reserveID').val())){
		$('#reserveID').val("");
	}
	let a = $('input[name=reserveID]').val();
	if(a.length>5){
		$('input[name=reserveID]').val(a.substring(0,5));
	}
	 return false;
})

.on('change','#checkindate',function(){
	checkdate2($('#checkindate').val())
	$('#checkoutdate').prop("min",today5)
	$('#checkoutdate').prop("max",today6)
	if($('#checkindate').val()>=$('#checkoutdate').val()){
		$('#checkoutdate').prop("value",today5)
	}
	return false;
})

.on('change','#checkindate',function(){
	checkdate3()
	pointcheck();
	onedaycal();
	check()
	return false;
})

.on('change','#checkoutdate',function(){
	pointcheck();
	onedaycal();
	check()
	return false;
})

.on('change','#cusmemberpoint',function(){
	pointcheck();
	onedaycal();
	if($('#cusmemberpoint').val()==0){
		$('#a3').prop('checked',true)
		check();
	}
	return false;
})

.on('change','#a1',function(){
	check()	
	return false;
})

.on('change','#a2',function(){
	check()	
	return false;
})

.on('change','#a3',function(){
	check()		
	return false;
})

.on('click','button[name=update]',function(){
	if($('#checkindate').val()<today1){
		swal({title: "체크인 날짜가 지나서 수정이 불가능합니다.",icon: "warning",button:true});
		return false;
	}
	if($("button[name=update]").text()=="예약수정하기"){
		$('#checkindate').prop("readonly",false)
		$('#checkoutdate').prop("readonly",false)
		$('#cusnum').prop("readonly",false)
		$("input[type=radio]").prop("disabled",false);
		$('#a1').prop("checked",true)
		$('#cusnum').prop("max",maxcus)
		$('#checkindate').trigger("change")
		check();
		$("button[name=update]").text("예약수정확정")
		return false;
	}else if($("button[name=update]").text()=="예약수정확정"){
		if(ss==0){
			$("input[type=radio]").prop("disabled",true);
			$('#a1').prop("checked",false)
		}
		if($('#a1').prop("checked")){
			swal({title: "고객님은 멤버쉽 회원입니다",text:"회원은 포인트 적립과 사용중 한가지를 선택해주세요.",timer: 2000,icon: "warning",button:false});
			return false
		}
		swal("객실예약 정보를 변경하시겠습니까?","입력하신 정보가 맞는지 꼭 확인해주세요", {
			  buttons: ["아니오", "예"],icon: "info"
			}).then((willDelete)=>{
				if (willDelete) {
					if($('#cusmembership').val()=="" || $('#a1').prop("checked")){
						$.ajax({ type: "POST", 
							 url : "admin/bookupdate",
							 async: true,
							 data:{book_id:$('#reserveID2').val(),checkindate2:$('#checkindate').val(),checkoutdate2:$('#checkoutdate').val(),
								   cusnum:$('#cusnum').val(),cussum:$('#cussum').val(),bookid:$('#reserveID2').val()},
							 success : function(data, status, xhr) {
								 swal({
								        title: "객실 예약변경이 완료되었습니다.",
								        text: "확인을 누르시면 메인페이지로 이동합니다.",
								        icon: "success",
								        buttons: '확인',
								        closeOnClickOutside: false,
								    }).then((value) => {
								        if (value) {
								          location.href = '${pageContext.request.contextPath}/';
								        }
								    });
							 }, 
							 error: function(jqXHR, textStatus, errorThrown) {
								 swal({title: "객실예약정보 변경에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
								 console.log(jqXHR.responseText);
							 }});
					}else if($('#a3').prop("checked")){
						$.ajax({ type: "POST", 
							 url : "admin/bookupdateAddP",
							 async: true,
							 data:{checkindate2:$('#checkindate').val(),checkoutdate2:$('#checkoutdate').val(),cusnum:$('#cusnum').val(),cussum:$('#cussum').val(),
								   cusname:$('#cusname').val(),cusmobile:$('#cusmobile').val(),useoldpoint:usepoint,
								   oldPoint:addpoint,newPoint:$("#cusmemberpoint").val(),bookid:$('#reserveID2').val()},
							 success : function(data, status, xhr) {
								 swal({
								        title: "객실 예약변경이 완료되었습니다.",
								        text: "확인을 누르시면 메인페이지로 이동합니다.",
								        icon: "success",
								        buttons: '확인',
								        closeOnClickOutside: false,
								    }).then((value) => {
								        if (value) {
								          location.href = '${pageContext.request.contextPath}/';
								        }
								    });
							 }, 
							 error: function(jqXHR, textStatus, errorThrown) {
								 swal({title: "객실예약정보 변경에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
								 console.log(jqXHR.responseText);
							 }});
					}else{
						$.ajax({ type: "POST", 
							 url : "admin/bookupdateuseP",
							 async: true,
							 data:{checkindate2:$('#checkindate').val(),checkoutdate2:$('#checkoutdate').val(),cusnum:$('#cusnum').val(),cussum:$('#cussum').val(),
								   cusname:$('#cusname').val(),cusmobile:$('#cusmobile').val(),oldusepoint:usepoint,
								   oldaddpoint:addpoint,newusepoint:$("#cusmemberpoint").val(),bookid:$('#reserveID2').val()},
							 success : function(data, status, xhr) {
								 swal({
								        title: "객실 예약변경이 완료되었습니다.",
								        text: "확인을 누르시면 메인페이지로 이동합니다.",
								        icon: "success",
								        buttons: '확인',
								        closeOnClickOutside: false,
								    }).then((value) => {
								        if (value) {
								          location.href = '${pageContext.request.contextPath}/';
								        }
								    });
							 }, 
							 error: function(jqXHR, textStatus, errorThrown) {
								 swal({title: "객실예약정보 변경에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
								 console.log(jqXHR.responseText);
							 }});
					}
				 }
			}) 
	}
})

.on('click','button[name=search]',function(){
	if($('input[name=reserveID]').val()==""){
		swal({title: "예약 ID를 입력해주세요.",timer: 2000,icon: "warning",button:false});
		$('input[name=reserveID]').focus();
		return false
	}
	let a = $('input[name=reserveID]').val()
	if(a.length<5){
		swal({title: "예약 ID는 5자리 숫자입니다.",timer: 2000,icon: "warning",button:false});
		$('input[name=reserveID]').focus();
		return false
	}
	if($('input[name=cusname]').val()==""){
		swal({title: "예약하실 고객명을 입력해주세요.",timer: 2000,icon: "warning",button:false});
		$('input[name=cusname]').focus();
		return false
	}
	if($('input[name=cusmobile]').val()==""){
		swal({title: "예약하실 고객 연락처를 입력해주세요",timer: 2000,icon: "warning",button:false});
		$('input[name=cusmobile]').focus();
		return false
	}
	if(jb2==1){
		swal({title: "연락처 형식이 틀렸습니다.",text:"01012345678 형식으로 입력해주세요",timer: 2000,icon: "warning",button:false});
		$('input[name=staffMobile]').focus();
		return false
	}
	$.ajax({ type: "POST", 
		 url : "booksearchS",
		 async: true,
		 dataType: "json",
		 data:{cusname:$('#cusname').val(),cusmobile:$('#cusmobile').val(),reserveID:$('#reserveID').val()},
		 success : function(data, status, xhr) {
			 if(isEmpty(data)){
				 swal({title: "객실예약내역을 찾을 수 없습니다.",text:"입력하신 정보를 다시 확인 후 시도해 주십시오.",icon: "error",button:true});
				 
			 }else{
				 $('.searchP1').css('visibility', 'hidden');
				 $('.searchP2').css('visibility', 'hidden');
				 $('.searchP3').css('visibility', 'visible');
				 $('.searchP4').css('visibility', 'visible');
				 $('.searchP5').css('visibility', 'visible');
				 $.each(data,function(ndx,value){
					 $('input[name=reserveDate]').val(value['booking_date'])
					 $('input[name=reserveID2]').val(value['book_id'])
					 $('input[name=cusname2]').val(value['book_name'])
					 $('input[name=cusmobile2]').val(value['book_mobile'])
					 $('input[name=roomname]').val(value['book_rname'])
					 $('input[name=roomtype]').val(value['book_rtype'])
					 $('input[name=checkindate]').val(value['book_checkin'])
					 $('input[name=checkoutdate]').val(value['book_checkout'])
					 $('input[name=cusnum]').val(value['book_cusnum'])
					 usepoint=value['book_useP']
					 addpoint=value['book_addP']
					 console.log(usepoint, addpoint)
					 onedaypay=value['oneday_pay']
					 maxcus=value['max_cusnum']
					 booksum=value['book_sum']
				 })
				 membersearch();
			 } 
		 }, 
		 error: function(jqXHR, textStatus, errorThrown) {
			 swal({title: "객실예약내역 검색에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
			 console.log(jqXHR.responseText);
		 }});
})

.on('click','button[name=delete]',function(){
	swal("객실예약을 취소하시겠습니까?","삭제하시면 되돌릴 수 없습니다.", {
		  buttons: ["아니오", "예"],icon: "info"
		}).then((willDelete)=>{
			if (willDelete) {
				$.ajax({ type: "POST", 
					 	 url : "admin/bookdelete",
					 	 async: true,
					 	 data:{bookid:$('#reserveID2').val(),cusname:$('#cusname').val(),cusmobile:$('#cusmobile').val(),
					 		   addpoint:addpoint,usepoint:usepoint},
					 	 success : function(data, status, xhr) {
							 swal({
							        title: "객실예약이 취소되었습니다.",
							        text: "확인을 누르시면 메인페이지로 이동합니다.",
							        icon: "success",
							        buttons: '확인',
							        closeOnClickOutside: false,
							    }).then((value) => {
							        if (value) {
							          location.href = '${pageContext.request.contextPath}/';
							        }
							    });

					 	 }, 
						 error: function(jqXHR, textStatus, errorThrown) {
							 swal({title: "객실예약정보 삭제에 실패하였습니다.",text:"입력정보를 확인하고 다시 시도하여 주십시오.", timer: 3000, icon: "error",button:false});
							 console.log(jqXHR.responseText); 
						 }});
			 }
		}) 
		return false;
})

</script>
</html>