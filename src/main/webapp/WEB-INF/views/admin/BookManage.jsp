<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% response.setHeader("Pragma", "no-cache"); response.setHeader("Cache-Control", "no-cache"); response.setHeader("Cache-Control", "no-store"); response.setDateHeader("Expires", 0L); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>휴먼호텔 관리자 - 객실예약관리</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
        * {margin:0; padding:0; box-sizing: border-box; text-decoration: none; list-style: none;}
        body{ 
            font-family: 'Noto Sans KR', sans-serif; 
            height: 100vh;
            background: url("../resources/adminimage/book_manage.jpg") no-repeat center;
            background-size: cover;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        body::before {
            content:"";
            position: absolute; z-index: 0;
            top: 0; bottom: 0; right: 0; left: 0;
            background: rgba(0,0,0,0.6);
        }
        #wrap {
            position: relative; z-index: 2;
            width: 80vw;
            height: 100vh;
        }
        #room_header {
            width: inherit;
            height: 15vh;
            display: flex; 
            justify-content: flex-start; 
            align-items: flex-start;
        }
        .hed1{
            width: 30%;
            height: inherit;
        }
        .hed1-1 {
            text-align: center;
            margin-top: 3vh;
            font-size: 40px;
            color:rgba(240, 203, 133,0.9);
        }
        .hed1-2 {
            text-align: center;
            color: rgba(255, 228, 181,0.8);
        }
        .hed2{
            width: 17.5%;
            height: 100%;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        .hed2 a {
            font-size: 27px;
            color: wheat;
        }
        .hed2 a:hover {
            color: #DCAD67;
        }
        .activeB a {
        	color: #DCAD67;
        }
        #mainbook {
            width: inherit;
            height: 85vh;
            display: flex; 
            justify-content: flex-start; 
            align-items: flex-start;
        }
        #enableroom {
            width: 30%;
            height: inherit;
        }
        #bookmanage {
            width: 70%;
            height: inherit;
        }
        #enableP1 {
            width: 90%;
            height: 35%;
            margin: 10% 5% 0 5%; 
        }
        .enableP1-1 {
            width: 100%;
            height: 25%;
            display: flex; 
            position: relative;
            justify-content: center; 
            align-items: flex-end;
        }
        .enableP1-1 input {
            width: 80%;
            height: 50%;
            background-color:  rgba(250, 235, 215, 0.6);
            border: none;
            color: black;
            font-size: 17px;
            font-weight: bold;
        }
        .enableP1-1 label {
            position: absolute; left: 10px; top: 5px;
            font-size: 14px; color: #FAEBD7;
        }
        .enableP1-2 {
            width: 100%;
            height: 25%;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        .enableP1-3 {
            width: 100%;
            height: 25%;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        .enableButt{
            width: 50%;
            height: 100%;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        .but_area1 {
            width: 80%;
            height: 70%;
            border: none;
            background:#E1B771;
            color: #fff;
            border-radius: 25px;
            outline: none;
            font-size: 18px;
        }
        .but_area1:hover {
            font-weight: bold;
        }
        .enableP1-2 select {
            width: 80%;
            height: 55%;
            font-size: 16px;
            background-color:rgba(250, 235, 215, 0.7);
        }
        #enableP2 {
            width: 90%;
            height: 55%;
            margin: 0 5% 7.5% 5%; 
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        #enableP2-1 {
            width: 90%;
            height: 90%;
            overflow-y: auto;
        }
        #enableP2-1::-webkit-scrollbar {
            width: 10px;
        }
        #enableP2-1::-webkit-scrollbar-thumb {
            background-color: rgba(235, 198, 128,0.5)
        }
        #enableP2-1::-webkit-scrollbar-track {
            background-color: rgba(245, 208, 138, 0.2)
        }
        #enableT1 {
            border-collapse: collapse;
            text-align: center;
            table-layout: fixed;
            word-break: break-all;
            width: 100%;
        }
        #enableT1 th{
            padding: 15px 0 15px 0;
            width: 25%;
            font-size: 20px;
            font-weight: normal;
            position:sticky;
            background-color: rgb(222, 184, 135);
            top: 0px;
            z-index: 2;
            color:white;
        }
        #enableT1 td {
            padding: 15px 0 20px 0;
            width: 25%;
            font-size: 16px;
            z-index: 1;
            color: rgba(255, 222, 173, 0.8);
        }
       #enableT1 tbody tr:hover {
        	background-color:rgba(222, 184, 135, 0.3); 
        }
        #bookP1 {
            width: 90%;
            height: 35%;
            margin: 5% 5% 0 5%;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        #bookP1-1 {
            width: 80%;
            height: 100%;
        }
        .book1area {
            width: 33.3%;
            height: 33.3%;
            float: left;
            position: relative;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        .book1area label {
            position: absolute; left: 10px; top: 10px;
            font-size: 14px; color: #FAEBD7;
        }
        .book1area input[type=text]{
            width: 90%;
            padding: 20px 10px 10px;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #FAEBD7;
            font-size: 18px; color: #fff;
            outline: none;
        }
        .book1area input[type=date]{
            margin-top: 10%;
            width: 90%;
            height: 40%;
            font-weight: bold;
            background-color:rgba(250, 235, 215, 0.7);
        }
        .book1area select {
            width: 90%;
            height: 45%;
            background-color:rgba(250, 235, 215, 0.7);
        }
        #book1area2 {
            width: 100%;
            height: 33.3%;
            float: left;
            margin: 12px;
        }
        #book1area2-1{
            width: 60%;
            height: 100%;
            float: left;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        #book1area2-2{
            width: 40%;
            height: 100%;
            float: left;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        .book1area2 {
            width: 50%;
            height: 100%;
            position: relative;
        }
        .book1area2 label {
            position: absolute; left: 0px; top: -5px;
            font-size: 14px; color: #FAEBD7;
        }
        .book1area2-1 {
         	 position: absolute; right:25px; top:-5px;
        }
        .book1area2 input[type=text],  .book1area2 input[type=number]{
            width: 90%;
            padding: 20px 10px 10px;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #FAEBD7;
            font-size: 18px; color: #fff;
            outline: none;
        }
        .book1areab {
            width: 100%;
            height: 25%;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        .but_area2 {
            width: 90%;
            height: 65%;
            border: none;
            background:#E1B771;
            color: #fff;
            border-radius: 25px;
            outline: none;
            font-size: 16px;
        }
        .but_area2:hover {
            font-weight: bold;
        }
        #bookP1-2 {
            clear: both;
            width: 20%;
            height: 100%;
        }
        #bookP2 {
            width: 110%;
            height: 55%;
            margin: 0 5% 5% 5%;
            overflow-y: auto;
        }
        #bookT1 {
            border-collapse: collapse;
            text-align: center;
            table-layout: fixed;
            word-break: break-all;
            width: 100%;
        }
        #bookT1 th{
            padding: 15px 0 15px 0;
            width: 25%;
            font-size: 20px;
            font-weight: normal;
            position:sticky;
            background-color: rgb(222, 184, 135);
            top: 0px;
            z-index: 2;
            color:white;
        }
        #bookT1 td {
            padding: 15px 0 20px 0;
            width: 25%;
            font-size: 16px;
            z-index: 1;
            color: rgba(255, 222, 173, 0.8);
        }
        #bookT1 tbody tr:hover {
        	background-color:rgba(222, 184, 135, 0.3); 
        }
        #bookP2::-webkit-scrollbar {
            width: 10px;
        }
        #bookP2::-webkit-scrollbar-thumb {
            background-color: rgba(235, 198, 128,0.5)
        }
        #bookP2::-webkit-scrollbar-track {
            background-color: rgba(245, 208, 138, 0.2)
        }
        #logout {
        	 position:absolute;
        	 top:20px;
        	 right:-110px;
        	 font-size: 20px;
             color:rgba(240, 203, 133,0.9);
        }
        #logout:hover {
            color: wheat;
        }
        .hide {
        	display:none
        }
    </style>
</head>
<body>
    <div id="wrap">
        <header id="room_header">
            <div class="hed1">
                    <h1 class="hed1-1">HUMAN HOTEL</h1>
                    <h2 class="hed1-2">MANAGEMENT SYSTEM</h2>
            </div>
            <div class="hed2">
                <a href="${pageContext.request.contextPath}/admin/roommanage">객실정보관리</a>
            </div>
            <div class="hed2">
                <a href="${pageContext.request.contextPath}/admin/bookmanage">객실예약관리</a>
            </div>
            <div class="hed2">
                <a href="${pageContext.request.contextPath}/admin/adminmanage">직원계정관리</a>
            </div>
            <div class="hed2">
                <a href="${pageContext.request.contextPath}/admin/memebermanage">휴먼멤버스관리</a>
            </div>
            <p id="logout">로그아웃</p>
        </header>
        <section id="mainbook">
            <article id="enableroom">
                <div id="enableP1">
                    <div class="enableP1-1">
                        <input type="date" name="checkindate" style="text-align: center;" id="checkindate" required>
                        <label for="checkindate">체크인 날짜</label>
                    </div>
                    <div class="enableP1-1">
                        <input type="date" name="checkoutdate" style="text-align: center;" id="checkoutdate" required>
                        <label for="checkoutdate">체크아웃 날짜</label>
                    </div>
                    <div class="enableP1-2">
                        <select name="roomtype1" style="text-align: center;">
                                    <option value="">객실종류 선택</option>
                                    <option value="RoyalSuiteRoom">RoyalSuiteRoom</option>
                                    <option value="RoyalJuniorRoom">RoyalJuniorRoom</option>
                                    <option value="DeluxeDoubleRoom">DeluxeDoubleRoom</option>
                                    <option value="StandardTwinRoom">StandardTwinRoom</option>
                                    <option value="StandardDoubleRoom">StandardDoubleRoom</option>
                                    <option value="ResidenceRoom">ResidenceRoom</option>
                                </select>
                    </div>
                    <div class="enableP1-3">
                        <div class="enableButt">
                            <button type="button" name="search" class="but_area1">객실정보검색</button>
                        </div>
                        <div class="enableButt">
                            <button type="button" name="cencel" class="but_area1">초기화</button>
                        </div>
                    </div>
                </div>
                <div id="enableP2">
                    <div id="enableP2-1">
                        <table id="enableT1">
                            <thead>
                                <tr>
                                    <th>객실명</th>
                                    <th>숙박가능인원</th>
                                    <th>1박가격</th>
                                </tr>
                            </thead>
                            <tbody>
                            
                            </tbody>
                        </table>
                    </div>
                </div>
            </article>
            <article id="bookmanage">
                <div id="bookP1">
                    <div id="bookP1-1">
                        <input type="hidden" name="crupType">
                    	<input type="hidden" name="book_id">
                    	<input type="hidden" name="mem_tier">
                    	<input type="hidden" name="mem_addP">
                    	<input type="hidden" name="mem_useP">
                    	<input type="hidden" name="oneday_pay">
                        <div class="book1area">
                            <input type="text" name="cusname" id="cusname" style="text-align: center;">
                            <label for="cusname">예약자명</label>
                        </div>
                        <div class="book1area">
                            <input type="date" name="checkindate2" style="text-align: center;" id="checkindate2">
                            <label for="checkindate2">체크인 날짜</label>
                        </div>
                        <div class="book1area">
                            <input type="date" name="checkoutdate2" style="text-align: center;" id="checkoutdate2">
                            <label for="checkoutdate2">체크아웃 날짜</label>
                        </div>
                        <div class="book1area">
                                <input type="text" name="cusmobile" id="cusmobile" style="text-align: center;">
                                <label for="cusmobile">예약자 전화번호</label>
                        </div>
                        <div class="book1area">
                            <input type="text" name="cusroomname" id="cusroomname" style="text-align: center;">
                            <label for="cusroomname">객실명</label>
                        </div>
                        <div class="book1area">
                           <select name="roomtype" style="text-align: center;">
                                    <option value="">객실종류 선택</option>
                                    <option value="RoyalSuiteRoom">RoyalSuiteRoom</option>
                                    <option value="RoyalJuniorRoom">RoyalJuniorRoom</option>
                                    <option value="DeluxeDoubleRoom">DeluxeDoubleRoom</option>
                                    <option value="StandardTwinRoom">StandardTwinRoom</option>
                                    <option value="StandardDoubleRoom">StandardDoubleRoom</option>
                                    <option value="ResidenceRoom">ResidenceRoom</option>
                                </select>
                        </div>
                        <div id="book1area2">
                            <div id="book1area2-1">
                                <div class="book1area2">
                                    <input type="text" name="cusmembership" id="cusmembership" style="text-align: center;">
                                    <label for="cusmembership">멤버쉽 Number</label>
                                </div>
                                <div class="book1area2">
                                <div class="book1area2-1">
                                	<input type="radio" name="checkbox1" id="a1" value="a1" title="체크하시면 현재 사용가능한 포인트를 확인합니다.">
									<input type="radio" name="checkbox1" id="a2" value="a2" title="체크하시면 멤버쉽 포인트를 사용합니다.">
									<input type="radio" name="checkbox1" id="a3" value="a3" title="체크하시면 멤버쉽 포인트를 사용하지 않고 적립합니다.">
                                </div>
                                    <input type="number" name="cusmemberpoint" id="cusmemberpoint" style="text-align: center;">
                                    <label for="cusmemberpoint">총 사용가능 멤버쉽 Point</label>
                                </div>
                            </div>
                            <div id="book1area2-2">
                                <div class="book1area2">
                                    <input type="number" name="cusnum" id="cusnum" style="text-align: center;" min="1" step="1" value="1">
                                    <label for="cusnum">숙박인원</label>
                                </div>
                                <div class="book1area2">
                                    <input type="text" name="cussum" id="cussum" style="text-align: center;">
                                    <label for="cussum">숙박비용</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="bookP1-2">
                        <div class="book1areab">
                            <button type="button" name="search2" class="but_area2">예약정보검색</button>
                        </div>
                        <div class="book1areab">
                            <button type="button" name="create2" class="but_area2" title="예약 가능한 객실목록을 클릭하거나 예약된 목록을 클릭할 때 까지 작동하지 않습니다.">예약정보등록</button>
                        </div>
                        <div class="book1areab">
                            <button type="button" name="delete2" class="but_area2" title="예약 가능한 객실목록을 클릭하거나 예약된 목록을 클릭할 때 까지 작동하지 않습니다.">에약정보삭제</button>
                        </div>
                        <div class="book1areab">
                            <button type="button" name="clear2" class="but_area2">초기화</button>
                        </div>
                    </div>
                </div>
                <div id="bookP2">
                        <table id="bookT1">
                            <thead>
                                <tr>
                                    <th>예약자명</th>
                                    <th>전화번호</th>
                                    <th>숙박인원</th>
                                    <th>숙박비용</th>
                                    <th>체크인</th>
                                    <th>체크아웃</th>
                                    <th>객실명</th>
                                    <th>객실종류</th>
                                    <th>예약일시</th>
                                </tr>
                            </thead>
                            <tbody>
                                
                            </tbody>
                        </table>
                </div>
            </article>
        </section>
    </div>
</body>
<script>
var today1;
var today2;
var today3;
var today4;
var today5;
var today6;
var ind = null;
var ind2 = null;
let jb2 = 0;
var onesum = 0;
var allsum = 0;
var numcus = 0
var cuspoint = 0;
var usepoint = 0;

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

function pointcheck(){
	if($('#cusmemberpoint').val()>=cuspoint){
		$('#cusmemberpoint').val(cuspoint);
	}
	if($('#cusmemberpoint').val()<9999 && $('#cusmemberpoint').val()>0){
		$('#cusmemberpoint').val(10000);
	}
	if(!$.isNumeric($('#cusmemberpoint').val())){
		$('#cusmemberpoint').val(cuspoint);
	}
	if($('#cusmemberpoint').val()>cuspoint){
		$('#cusmemberpoint').val(cuspoint);
	}
}

function onedaycal(){
	$('#cusmemberpoint').val(Math.floor($('#cusmemberpoint').val()/1000)*1000)
	var sdt = new Date($('#checkindate2').val());
	var edt = new Date($('#checkoutdate2').val());
	var dateDiff = Math.ceil((edt.getTime()-sdt.getTime())/(1000*3600*24));
	allsum=parseInt(dateDiff*onesum);
	if($('#a2').prop("checked")){
		$('#cussum').val(allsum-$('#cusmemberpoint').val())
	}else{
		$('#cussum').val(allsum)
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

function checkdate3(){
	checkdate2($('#checkindate2').val())
	$('#checkoutdate2').prop("min",today5)
	$('#checkoutdate2').prop("max",today6)
	if($('#checkindate2').val()>=$('#checkoutdate2').val()){
		$('#checkoutdate2').prop("value",today5)
	}
}

function search(){
	$.ajax({ type: "POST", 
		 url : "booksearch",
		 async: true,
		 dataType: "json",
		 success : function(data, status, xhr) {
			 $('#bookT1 tbody tr').remove();
			 $.each(data,function(ndx,value){
		 			name='<tr><td class="hide">'+value['book_id']+'</td><td>'+value['book_name']+
		 				 '</td><td>'+value['book_mobile']+'</td><td>'+value['book_cusnum']+
		 				 '</td><td>'+value['book_sum']+'</td><td>'+value['book_checkin']+
		 				 '</td><td>'+value['book_checkout']+'</td><td>'+value['book_rname']+
		 				 '</td><td>'+value['book_rtype']+'</td><td class="hide">'+value['book_useP']+
		 				 '</td><td class="hide">'+value['book_addP']+'</td><td class="hide">'+value['oneday_pay']+
		 				 '</td><td class="hide">'+value['max_cusnum']+'</td><td>'+value['booking_date']+'</td></tr>';
		 			$('#bookT1 tbody').append(name);})}, 
		 error: function(jqXHR, textStatus, errorThrown) {
			 swal({title: "전체 객실예약목록 불러오기에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
			 console.log(jqXHR.responseText);
		 }});
}

function membersearch() {
	if($('#cusname').val()!=null && $('#cusmobile').val()!=null){
		$.ajax({ type: "POST", 
		 url : "memsearch",
		 async: true,
		 dataType: "json",
		 data:{cusname:$('#cusname').val(),cusmobile:$('#cusmobile').val()},
		 success : function(data, status, xhr) {
			 if(isEmpty(data)){
				 $('#cusmembership').val("")
			 }else{
				 let memnumber;
				 let mempoint;
				 let memtier;
				 $.each(data,function(ndx,value){
					 memnumber=value['mem_number']
					 mempoint=value['mem_point']
					 memtier=value['mem_tier'];
				 })
				 if(typeof(ind2)=="number"){
					 $('#cusmembership').val(memnumber)
					 $('input[name=mem_tier]').val(memtier)
					 $('#a1').prop("checked",true)
					 cuspoint=parseInt(mempoint)
					 if($("#bookT1 tbody tr:eq("+ind2+") td:eq(10)").text()=='0'){
						 cuspoint=cuspoint+parseInt($("#bookT1 tbody tr:eq("+ind2+") td:eq(9)").text())
					 }else{
						 cuspoint=cuspoint-parseInt($("#bookT1 tbody tr:eq("+ind2+") td:eq(10)").text())
					 }
					 $('#cusmemberpoint').val(cuspoint);
					 $('input[type=radio]').prop('disabled',false)
			 		 $('#cusmemberpoint').prop('readonly',true)	
			 		 check();
				 }else{
					 $('#cusmembership').val(memnumber)
					 $('input[name=mem_tier]').val(memtier)
					 $('#a1').prop("checked",true)
					 cuspoint=parseInt(mempoint)
					 $('#cusmemberpoint').val(cuspoint) 
					 $('input[type=radio]').prop('disabled',false)
			 		 $('#cusmemberpoint').prop('readonly',true)		
				 }
			 }		
		 }, 
		 error: function(jqXHR, textStatus, errorThrown) {
			 swal({title: "검색에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
			 console.log(jqXHR.responseText);
		 }});
	}
}

function setCal1() {
	$('#checkindate').prop("min",today1)
	$('#checkindate').prop("max",today2)
	$('#checkindate').prop("value",today1)
	$('#checkoutdate').prop("value",today3)
	$('#checkoutdate').prop("min",today3)
	$('#checkoutdate').prop("max",today4)
}
function setCal2() {
	$('#checkindate2').prop("min",today1)
	$('#checkindate2').prop("max",today2)
	$('#checkindate2').prop("value",today1)
	$('#checkoutdate2').prop("value",today3)
	$('#checkoutdate2').prop("min",today3)
	$('#checkoutdate2').prop("max",today4)
}

function check() {
	if($('#a1').prop("checked")) {
		$("label[for='cusmemberpoint']").text('총 사용가능 멤버쉽 Point');
		$('#cusmemberpoint').val(cuspoint)
		onedaycal()
		$('#cusmemberpoint').prop('readonly',true)
	}else if($('#a2').prop("checked")) {
		$("label[for='cusmemberpoint']").text('사용할 멤버쉽 Point');
		$('#cusmemberpoint').prop('readonly',false)
		$('#cusmemberpoint').prop('disabled',false)
		if(cuspoint>=allsum){
			usepoint=allsum
			$('#cusmemberpoint').prop('min','10000')
			$('#cusmemberpoint').prop('step','1000')
			$('#cusmemberpoint').prop("max",Math.floor(usepoint/1000)*1000)
			$('#cusmemberpoint').prop("value",Math.floor(usepoint/1000)*1000)
		}else{
			usepoint=cuspoint
			$('#cusmemberpoint').prop('min','10000')
			$('#cusmemberpoint').prop('step','1000')
			$('#cusmemberpoint').prop("max",Math.floor(cuspoint/1000)*1000)
			$('#cusmemberpoint').prop("value",Math.floor(cuspoint/1000)*1000)
		}
		onedaycal()
	}else if($('#a3').prop("checked")) {
		$("label[for='cusmemberpoint']").text('적립예정 멤버쉽 포인트');
		$('#cusmemberpoint').prop('readonly',true)
		onedaycal()
		addpoint()		
		$('#cusmemberpoint').val($('input[name=mem_addP]').val())
	}
}

function addpoint() {
	switch ($('input[name=mem_tier]').val()){
	case "Bronze" :
		$('input[name=mem_addP]').val($('input[name=cussum]').val()*0.01)
		break;
	case "Silver" :
		$('input[name=mem_addP]').val($('input[name=cussum]').val()*0.015)
		break;
	case "Gold" :
		$('input[name=mem_addP]').val($('input[name=cussum]').val()*0.02)
		break;
	default :
		$('input[name=mem_addP]').val($('input[name=cussum]').val()*0.025)
	}
}

$(document)
.ready(function(){
	checkdate1();
	setCal1()
	setCal2()
	$('input[type=radio]').prop('disabled',true)
	$('input[name=crupType]').val("cr");
	$('#cusroomname').prop('readonly',true)
	$('#cussum').prop('readonly',true)
	$('#cusmembership').prop('readonly',true)
	$('#cusmemberpoint').prop('readonly',true)
	$('button[name=create2]').prop('disabled',true)
	$('button[name=delete2]').prop('disabled',true)
	search()
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

.on('click','button[name=search]',function(){
	if($('select[name=roomtype1]').val()==""){
		swal({title: "예약하실 객실종류를 선택해주세요",timer: 2000,icon: "warning",button:false});
		return false
	}
	$.ajax({ type: "POST", 
		 url : "booksearch1",
		 async: true,
		 dataType: "json",
		 data:{checkindate:$('#checkindate').val(),checkoutdate:$('#checkoutdate').val(),roomtype1:$('select[name=roomtype1]').val()},
		 success : function(data, status, xhr) {
			 $('#enableT1 tbody tr').remove();
			 $.each(data,function(ndx,value){
		 			name='<tr><td>'+value['room_name']+'</td><td>'+value['max_guestnum']+'</td><td>'+value['room_price']+'</td></tr>';
		 			$('#enableT1 tbody').append(name);
		 			})
		 	swal({title: "검색이 완료되었습니다.", timer: 2000, icon: "success",button:false});
		 	$('button[name=reset]').trigger('click');
		 }, 
		 error: function(jqXHR, textStatus, errorThrown) {
			 swal({title: "검색에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
			 console.log(jqXHR.responseText);
		 }});
	return false;
})

.on('click','#enableT1 tbody tr',function(){
	$("#enableT1 tbody tr:eq("+ind+")").css('font-weight','normal')
	ind = $(this).index();
	$("#enableT1 tbody tr:eq("+ind+")").css('font-weight','bolder')
	$('button[name=create2]').prop('disabled',false)
	$('button[name=delete2]').prop('disabled',false)
	$('input[name=crupType]').val("cr")
	$('#cusroomname').val($("#enableT1 tbody tr:eq("+ind+") td:eq(0)").text())
	numcus = parseInt($("#enableT1 tbody tr:eq("+ind+") td:eq(1)").text());
	onesum = parseInt($("#enableT1 tbody tr:eq("+ind+") td:eq(2)").text());
	$('#checkindate2').val($('#checkindate').val());
	$('#checkoutdate2').val($('#checkoutdate').val());
	$('select[name=roomtype]').val($('select[name=roomtype1]').val())
	$('select[name=roomtype]').prop('disabled',true)
	$('#checkindate2').trigger('change')
	$('#cusnum').prop("max",numcus)
	return false;
})

.on('change','#checkindate2',function(){
	checkdate3()
	pointcheck();
	onedaycal();
	check()
	return false;
})

.on('change','#checkoutdate2',function(){
	pointcheck();
	onedaycal();
	check()
	return false;
})

.on('change','#cusmobile',function(){
	membersearch()
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

.on('change','#cusmemberpoint',function(){
	pointcheck();
	onedaycal();
	if($('#cusmemberpoint').val()==0){
		$('#a3').prop('checked',true)
		check();
	}
	return false;
})

.on('click','button[name=search2]',function(){
	swal({
		  title:"검색할 종류를 고르십시오",
		  text:"입력하신 값으로 검색을 진행합니다.\n 초기화 버튼을 누르고 진행해주세요",
		  buttons: {staffName: {text: "고객명 & 전화번호로 검색",value: "cusname"},ManagePart: {text: "체크인 & 체크아웃 날짜로 검색",value: "checkdate"},
			  		cancel: true},
		}).then((PromiseResult)=> {
			if(PromiseResult=="cusname") {
				$.ajax({ type: "POST", 
					 url : "booksearchA",
					 async: true,
					 dataType: "json",
					 data:{cusname:$('input[name=cusname]').val(),cusmobile:$('input[name=cusmobile]').val()},
					 success : function(data, status, xhr) {
						 $('#bookT1 tbody tr').remove();
						 $.each(data,function(ndx,value){
					 			name='<tr><td class="hide">'+value['book_id']+'</td><td>'+value['book_name']+
					 				 '</td><td>'+value['book_mobile']+'</td><td>'+value['book_cusnum']+
					 				 '</td><td>'+value['book_sum']+'</td><td>'+value['book_checkin']+
					 				 '</td><td>'+value['book_checkout']+'</td><td>'+value['book_rname']+
					 				 '</td><td>'+value['book_rtype']+'</td><td class="hide">'+value['book_useP']+
					 				 '</td><td class="hide">'+value['book_addP']+'</td><td class="hide">'+value['oneday_pay']+
					 				 '</td><td class="hide">'+value['max_cusnum']+'</td></tr>';
					 			$('#bookT1 tbody').append(name);})
					 	swal({title: "검색이 완료되었습니다.", timer: 2000, icon: "success",button:false});
					 	$('button[name=clear]').trigger('click');
					 }, 
					 error: function(jqXHR, textStatus, errorThrown) {
						 swal({title: "검색에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
						 console.log(jqXHR.responseText);
					 }});
			}else if(PromiseResult=="checkdate") {
				$.ajax({ type: "POST", 
					 url : "booksearchB",
					 async: true,
					 dataType: "json",
					 data:{checkindate:$('input[name=checkindate2]').val(),checkoutdate:$('input[name=checkoutdate2]').val()},
					 success : function(data, status, xhr) {
						 $('#bookT1 tbody tr').remove();
						 $.each(data,function(ndx,value){
					 			name='<tr><td class="hide">'+value['book_id']+'</td><td>'+value['book_name']+
					 				 '</td><td>'+value['book_mobile']+'</td><td>'+value['book_cusnum']+
					 				 '</td><td>'+value['book_sum']+'</td><td>'+value['book_checkin']+
					 				 '</td><td>'+value['book_checkout']+'</td><td>'+value['book_rname']+
					 				 '</td><td>'+value['book_rtype']+'</td><td class="hide">'+value['book_useP']+
					 				 '</td><td class="hide">'+value['book_addP']+'</td><td class="hide">'+value['oneday_pay']+
					 				 '</td><td class="hide">'+value['max_cusnum']+'</td></tr>';
					 			$('#bookT1 tbody').append(name);})
					 	swal({title: "검색이 완료되었습니다.", timer: 2000, icon: "success",button:false});
					 	$('button[name=clear]').trigger('click');
					 }, 
					 error: function(jqXHR, textStatus, errorThrown) {
						 swal({title: "검색에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
						 console.log(jqXHR.responseText);
					 }});
			}
		}) 
		return false;
})

.on('click','button[name=create2]',function(){
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
	if($('#a1').prop("checked")){
		swal({title: "이 고객님은 멤버쉽 회원입니다",text:"회원은 포인트 적립과 사용중 한가지를 선택해주세요.",timer: 2000,icon: "warning",button:false});
		return false
	}
	if($('input[name=crupType]').val()=="cr"){
		swal("객실을 예약하시겠습니까?","입력하신 정보가 맞는지 꼭 확인해주세요", {
			  buttons: ["아니오", "예"],icon: "info"
			}).then((willDelete)=>{
				if (willDelete) {
					if($('#cusmembership').val()=="" || $('#a1').prop("checked")){
						$.ajax({ type: "POST", 
							 url : "bookinsert",
							 async: true,
							 data:{cusname:$('#cusname').val(),checkindate2:$('#checkindate2').val(),checkoutdate2:$('#checkoutdate2').val(),
								   cusmobile:$('#cusmobile').val(),cusroomname:$('#cusroomname').val(),roomtype:$('select[name=roomtype]').val(),
								   cusnum:$('#cusnum').val(),cussum:$('#cussum').val(),oneday_pay:onesum,max_cusnum:numcus},
							 success : function(data, status, xhr) {
							 	swal({title: "객실예약이 완료되었습니다.", timer: 2000, icon: "success",button:false});
							 	$('button[name=clear2]').trigger('click');
							 	search()
							 }, 
							 error: function(jqXHR, textStatus, errorThrown) {
								 swal({title: "객실예약에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
								 console.log(jqXHR.responseText);
							 }});
					}else{
						if($('#a3').prop("checked")){
							$.ajax({ type: "POST", 
								 url : "bookinsertMadd",
								 async: true,
								 data:{cusname:$('#cusname').val(),checkindate2:$('#checkindate2').val(),checkoutdate2:$('#checkoutdate2').val(),
									   cusmobile:$('#cusmobile').val(),cusroomname:$('#cusroomname').val(),roomtype:$('select[name=roomtype]').val(),
									   cusnum:$('#cusnum').val(),cussum:$('#cussum').val(),cuspoint:$('input[name=mem_addP]').val(),oneday_pay:onesum,max_cusnum:numcus},
								 success : function(data, status, xhr) {
								 	swal({title: "객실예약이 완료되었습니다.", timer: 2000, icon: "success",button:false});
								 	$('button[name=clear2]').trigger('click');
								 	search()
								 }, 
								 error: function(jqXHR, textStatus, errorThrown) {
									 swal({title: "객실예약에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
									 console.log(jqXHR.responseText);
								 }});
						}else{
							$.ajax({ type: "POST", 
								 url : "bookinsertMuse",
								 async: true,
								 data:{cusname:$('#cusname').val(),checkindate2:$('#checkindate2').val(),checkoutdate2:$('#checkoutdate2').val(),
									   cusmobile:$('#cusmobile').val(),cusroomname:$('#cusroomname').val(),roomtype:$('select[name=roomtype]').val(),
									   cusnum:$('#cusnum').val(),cussum:$('#cussum').val(),usepoint:$('input[name=cusmemberpoint]').val(), oneday_pay:onesum , max_cusnum:numcus},
								 success : function(data, status, xhr) {
								 	swal({title: "객실예약이 완료되었습니다.", timer: 2000, icon: "success",button:false});
								 	$('button[name=clear2]').trigger('click');
								 	search()
								 }, 
								 error: function(jqXHR, textStatus, errorThrown) {
									 swal({title: "객실예약에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
									 console.log(jqXHR.responseText);
								 }});
						}
					}
				 }
			}) 
	}else {
		swal("객실예약 정보를 변경하시겠습니까?","입력하신 정보가 맞는지 꼭 확인해주세요", {
			  buttons: ["아니오", "예"],icon: "info"
			}).then((willDelete)=>{
				if (willDelete) {
					if($('#cusmembership').val()=="" || $('#a1').prop("checked")){
						$.ajax({ type: "POST", 
							 url : "bookupdate",
							 async: true,
							 data:{bookid:$("#bookT1 tbody tr:eq("+ind2+") td:eq(0)").text(),checkindate2:$('#checkindate2').val(),checkoutdate2:$('#checkoutdate2').val(),
								   cusnum:$('#cusnum').val(),cussum:$('#cussum').val()},
							 success : function(data, status, xhr) {
							 	swal({title: "객실예약정보 변경이 완료되었습니다.", timer: 2000, icon: "success",button:false});
							 	$('button[name=clear2]').trigger('click');
							 	search()
							 }, 
							 error: function(jqXHR, textStatus, errorThrown) {
								 swal({title: "객실예약정보 변경에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
								 console.log(jqXHR.responseText);
							 }});
					}else if($('#a3').prop("checked")){
						$.ajax({ type: "POST", 
							 url : "bookupdateAddP",
							 async: true,
							 data:{checkindate2:$('#checkindate2').val(),checkoutdate2:$('#checkoutdate2').val(),cusnum:$('#cusnum').val(),cussum:$('#cussum').val(),
								   cusname:$('#cusname').val(),cusmobile:$('#cusmobile').val(),useoldpoint:$("#bookT1 tbody tr:eq("+ind2+") td:eq(9)").text(),
								   oldPoint:$("#bookT1 tbody tr:eq("+ind2+") td:eq(10)").text(),newPoint:$('input[name=mem_addP]').val(),bookid:$("#bookT1 tbody tr:eq("+ind2+") td:eq(0)").text()},
							 success : function(data, status, xhr) {
							 	swal({title: "객실예약정보 변경이 완료되었습니다.", timer: 2000, icon: "success",button:false});
							 	$('button[name=clear2]').trigger('click');
							 	search()
							 }, 
							 error: function(jqXHR, textStatus, errorThrown) {
								 swal({title: "객실예약정보 변경에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
								 console.log(jqXHR.responseText);
							 }});
					}else{
						$.ajax({ type: "POST", 
							 url : "bookupdateuseP",
							 async: true,
							 data:{checkindate2:$('#checkindate2').val(),checkoutdate2:$('#checkoutdate2').val(),cusnum:$('#cusnum').val(),cussum:$('#cussum').val(),
								   cusname:$('#cusname').val(),cusmobile:$('#cusmobile').val(),oldusepoint:$("#bookT1 tbody tr:eq("+ind2+") td:eq(9)").text(),
								   oldaddpoint:$("#bookT1 tbody tr:eq("+ind2+") td:eq(10)").text(),newusepoint:$('input[name=cusmemberpoint]').val(),bookid:$("#bookT1 tbody tr:eq("+ind2+") td:eq(0)").text()},
							 success : function(data, status, xhr) {
							 	swal({title: "객실예약정보 변경이 완료되었습니다.", timer: 2000, icon: "success",button:false});
							 	$('button[name=clear2]').trigger('click');
							 	search()
							 }, 
							 error: function(jqXHR, textStatus, errorThrown) {
								 swal({title: "객실예약정보 변경에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
								 console.log(jqXHR.responseText);
							 }});
					}
				 }
			}) 
	}
	return false;
})

.on('click','#bookT1 tbody tr',function(){
	$('button[name=clear2]').trigger('click');
	$("button[name=create2]").text("에약정보수정")
	$("#bookT1 tbody tr:eq("+ind2+")").css('font-weight','normal')
	ind2 = $(this).index();
	$("#bookT1 tbody tr:eq("+ind2+")").css('font-weight','bolder')
	$('button[name=create2]').prop('disabled',false)
	$('button[name=delete2]').prop('disabled',false)
	$('select[name=roomtype]').prop('disabled',true)
	$('input[name=cusname]').prop('disabled',true)
	$('input[name=cusmobile]').prop('disabled',true)
	$('input[name=crupType]').val("up")
	$('#cusname').val($("#bookT1 tbody tr:eq("+ind2+") td:eq(1)").text())
	$('#cusmobile').val($("#bookT1 tbody tr:eq("+ind2+") td:eq(2)").text())
	$('#cusroomname').val($("#bookT1 tbody tr:eq("+ind2+") td:eq(7)").text())
	$('#checkindate2').val($("#bookT1 tbody tr:eq("+ind2+") td:eq(5)").text())
	$('#checkoutdate2').val($("#bookT1 tbody tr:eq("+ind2+") td:eq(6)").text())
	$('select[name=roomtype] option[value='+$("#bookT1 tbody tr:eq("+ind2+") td:eq(8)").text()+']').prop('selected',true);
	onesum = parseInt($("#bookT1 tbody tr:eq("+ind2+") td:eq(11)").text())
	numcus = parseInt($("#bookT1 tbody tr:eq("+ind2+") td:eq(12)").text());
	checkdate3()
	$('#cusnum').prop("max",numcus)
	membersearch();
	return false;
})

.on('click','button[name=delete2]',function(){
	swal("선택한 객실예약정보를 삭제하시겠습니까?","삭제하시면 되돌릴 수 없습니다.", {
		  buttons: ["아니오", "예"],icon: "info"
		}).then((willDelete)=>{
			if (willDelete) {
				$.ajax({ type: "POST", 
					 	 url : "bookdelete",
					 	 async: true,
					 	 data:{bookid:$("#bookT1 tbody tr:eq("+ind2+") td:eq(0)").text(),cusname:$('#cusname').val(),cusmobile:$('#cusmobile').val(),
					 		   addpoint:$("#bookT1 tbody tr:eq("+ind2+") td:eq(10)").text(),usepoint:$("#bookT1 tbody tr:eq("+ind2+") td:eq(9)").text()},
					 	 success : function(data, status, xhr) {
					 		swal({title: "객실예약정보 삭제가 완료되었습니다.", timer: 2000, icon: "success",button:false});
					 		search();
					 		$('button[name=clear2]').trigger('click');
					 	 }, 
						 error: function(jqXHR, textStatus, errorThrown) {
							 swal({title: "객실예약정보 삭제에 실패하였습니다.",text:"입력정보를 확인하고 다시 시도하여 주십시오.", timer: 3000, icon: "error",button:false});
							 console.log(jqXHR.responseText); 
						 }});
			 }
		}) 
		return false;
})

.on('click','.hed1',function(){
	location.href = 'adminmain'
		return false;
})

.on('click','#logout',function(){
	swal("휴먼호텔 관리시스템에서 로그아웃 하시겠습니까?", {
		  buttons: ["아니오", "예"],
		}).then((willDelete)=>{
			if (willDelete) {
				swal({
				    title: "로그아웃 되었습니다.",
				    timer: 2000,
				    icon: "success",
				    button:false
				  });
				setTimeout(function(){
					location.href = 'adminout';
				},2000)	
			 }
		}) 
		return false;
})

.on('click','button[name=cencel]',function(){
	setCal1()
	ind = null;
	ind2 = null;
	let jb2 = 0;
	onesum = 0;
	allsum = 0;
	numcus = 0
	cuspoint = 0;
	usepoint = 0;
	$('select[name=roomtype1]').val("")
	$("#enableT1 tbody tr:eq("+ind+")").css('font-weight','normal')
	$('#enableT1 tbody tr').remove()
	$('select[name=roomtype]').prop('disabled',false)
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

.on('click','button[name=clear2]',function(){
	$("button[name=create2]").text("에약정보등록")
	$('input[name=cusmobile]').css("color","#fff");
	$("label[for='cusmemberpoint']").text('총 사용가능 멤버쉽 Point');
	$("#enableT1 tbody tr:eq("+ind+")").css('font-weight','normal')
	$("#bookT1 tbody tr:eq("+ind2+")").css('font-weight','normal')
	$('input[type=radio]').prop('checked',false)
	$('input[type=radio]').prop('disabled',true)
	setCal2()
	ind = null;
	ind2 = null;
	let jb2 = 0;
	onesum = 0;
	allsum = 0;
	numcus = 0
	cuspoint = 0;
	usepoint = 0;
	$('#cusname').val("")
	$('#cusmobile').val("")
	$('#cusroomname').val("")
	$('select[name=roomtype]').val("")
	$('#cusmembership').val("")
	$('#cusmemberpoint').val("")
	$('#cusnum').prop("value",1)
	$('#cussum').val("")
	$('input[name=crupType]').val("cr");
	$('select[name=roomtype]').prop('disabled',false)
	$('input[name=cusname]').prop('disabled',false)
	$('input[name=cusmobile]').prop('disabled',false)
	$('#cusmemberpoint').prop('disabled',true)
	$('button[name=cencel]').trigger('click');
	return false;
})
</script>
</html>