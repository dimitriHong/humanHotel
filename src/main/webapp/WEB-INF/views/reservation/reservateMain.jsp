<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>휴먼호텔 - 객실예약</title>
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
        #mainarticle {width: 80%; height: inherit; display: flex; justify-content: center; align-items: center;}
        #resverate1 {width: 35%; height:80%; display: flex; justify-content: center; align-items: center; flex-wrap:wrap;}
        #resverate2 {width: 60%; height:80%; display: flex; justify-content: center; align-items: center; flex-wrap:wrap;}
        #resverP1 {width:90%; height:5%; display: flex; justify-content: center; align-items: flex-start; }
        #resverP1 p {color:wheat; font-size:17px;}
        .resverP2 {width:90%; height:11%; display: flex; justify-content: center; align-items: center; position:relative;}
        .resverP2 input {
            width: 80%;
            height: 50%;
            background-color:  rgba(250, 235, 215, 0.6);
            border: none;
            color: black;
            font-size: 16px;
            font-weight: bold;
            margin-top:20px;
        }
        .resverP2 label {
            position: absolute; left: 0px; top: 0px;
            font-size: 12px; color: #FAEBD7;
        }
        #resverP3 {width:90%; height:10%; display: flex; justify-content: center; align-items: center;}
        #resverP3 select {
            width: 80%;
            height: 55%;
            font-size: 16px;
            background-color:rgba(250, 235, 215, 0.7);
        }
        #resverP4 {width:90%; height:10%; display: flex; justify-content: center; align-items: center;}
        .enableButt{width:50%; height:100%; display: flex; justify-content: center; align-items: center;}
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
        .but_area2 {
            width: 120%;
            height: 60%;
            border: none;
            background:#E1B771;
            color: #fff;
            border-radius: 25px;
            outline: none;
            font-size: 15px;
        }
        .but_area1:hover, .but_area2:hover {font-weight:bold;}
        #enableP2 {width:90%; height:50%;  overflow-y: scroll; visibility:hidden;}
        #enableP2::-webkit-scrollbar {
            width: 10px;
        }
        #enableP2::-webkit-scrollbar-thumb {
            background-color: rgba(235, 198, 128,0.5)
        }
        #enableP2::-webkit-scrollbar-track {
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
            padding: 10px 0 10px 0;
            width: 25%;
            font-size: 17px;
            font-weight: normal;
            position:sticky;
            background-color: rgb(222, 184, 135);
            top: 0px;
            z-index: 2;
            color:white;
        }
        #enableT1 td {
            padding: 10px 0 10px 0;
            width: 25%;
            font-size: 16px;
            z-index: 1;
            color: rgba(255, 222, 173, 0.8);
        }
       #enableT1 tbody tr:hover {
        	background-color:rgba(222, 184, 135, 0.3); 
        }
        #resP1 {width:100%; height:10%; display: flex; justify-content: center; align-items: flex-start; }
        #resP1 p {color:wheat; font-size:17px;}
        .resP2 {width:100%; height:10%; display: flex; justify-content: center; align-items: center;}
        .resP2-1, .resP2-2 {width:50%; height:100%; display: flex; justify-content: center; align-items: center; position:relative; }
        .resP2-1 input {
            width: 80%;
            height: 50%;
            background-color:  rgba(250, 235, 215, 0.6);
            border: none;
            color: black;
            font-size: 16px;
            font-weight: bold;
            margin-top:20px;
        }
        .resP2-1 label {
            position: absolute; left: 15px; top: -5px;
            font-size: 12px; color: #FAEBD7;
        }
        .resP2-2 input[type=text], #resP3-1 input[type=number]{
            width: 70%;
            padding: 20px 10px 10px;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #FAEBD7;
            font-size: 15px; color: #fff;
            outline: none;
        }
        .resP2-2 label, #resP3-1 label{
            position: absolute; left: 15px; top: 5px;
            font-size: 12px; color: #FAEBD7;
        }
        .resP3 {width:100%; height:10%; display: flex; justify-content: flex-start; align-items: center;}
        #resP3-1 {width:50%; height:100%; display: flex; justify-content: center; align-items: center; position:relative;}
        .resP4 {width:100%; height:10%; display: flex; justify-content: flex-start; align-items: center;}
        .resP4-1 {width:40%; height:100%; display: flex; justify-content: center; align-items: center; position:relative; }
        .resP4-2 {width:20%; height:100%; display: flex; justify-content: center; align-items: center; position:relative; }
        .resP4-1 input[type=text]{
            width: 70%;
            padding: 20px 10px 10px;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #FAEBD7;
            font-size: 15px; color: #fff;
            outline: none;
        }
        .resP4-1 label{
            position: absolute; left: 15px; top: 5px;
            font-size: 12px; color: #FAEBD7;
        }
        .resP5 {width:100%; height:10%; display: flex; justify-content: flex-start; align-items: center;}
        .resP5-1 {width:25%; height:100%; display: flex; justify-content: center; align-items: center; position:relative;}
        .resP5-2 {width:25%; height:100%; display: flex; justify-content: center; align-items: center; position:relative;}
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
        .resP6 {width:100%; height:20%; display: flex; justify-content: flex-end; align-items: flex-end;}
        .resP6-1 {width:40%; height:60%; display: flex; justify-content: center; align-items: center; position:relative; color: wheat;}
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
            position: absolute; left: 15px; top: 5px;
            font-size: 15px; color: #FAEBD7;
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
        <jsp:include page="../Main/header.jsp" />
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
            	<div id="resverate1">
            		<div id="resverP1"><p>예약 가능 객실 목록 조회</p></div>
            		<div class="resverP2">
                        <input type="date" name="checkindate" style="text-align: center;" id="checkindate" required>
                        <label for="checkindate">체크인 날짜</label>
            		</div>
            		<div class="resverP2">
            		 	<input type="date" name="checkoutdate" style="text-align: center;" id="checkoutdate" required>
                        <label for="checkoutdate">체크아웃 날짜</label>
            		</div>
            		<div id="resverP3">
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
            		<div id="resverP4">
            			<div class="enableButt">
                       		<button type="button" name="search" class="but_area1">조회하기</button>
                    	</div>
                       <div class="enableButt">
                            <button type="button" name="cencel" class="but_area1">초기화</button>
                    	</div>
            		</div>
            		<div id="enableP2">
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
            	<div id="resverate2">
            		<div id="resP1"><p>객실 예약 정보 입력</p></div>
            		<div class="resP2">
            			<div class="resP2-1">
	            			<input type="date" name="checkindate2" style="text-align: center;" id="checkindate2" required>
	                        <label for="checkindate">체크인 날짜</label>
            			</div>
            			<div class="resP2-1">
	            			<input type="date" name="checkoutdate2" style="text-align: center;" id="checkoutdate2" required>
	                        <label for="checkoutdate">체크아웃 날짜</label>
            			</div>
            		</div>
            		<div class="resP2">
            			<div class="resP2-2">
            			    <input type="text" name="cusroomname" id="cusroomname" style="text-align: center;" readonly>
                            <label for="cusroomname">객실명</label>
            			</div>
            			<div class="resP2-2">
            			    <input type="text" name="roomtype" id="roomtype" style="text-align: center;" readonly> 
                            <label for="cusroomname">객실 종류</label>
            			</div>
            		</div>
            		<div class="resP3">
            			<div id="resP3-1">
            			   <input type="number" name="cusnum" id="cusnum" style="text-align: center;" min="1" step="1" value="1">
                           <label for="cusnum">숙박인원</label>
                        </div>
            		</div>
            		<div class="resP4">
            			<div class="resP4-1">
            			    <input type="text" name="cusname" id="cusname" style="text-align: center;">
                            <label for="cusname">예약자명</label>
            			</div>
            			<div class="resP4-1">
            			    <input type="text" name="cusmobile" id="cusmobile" style="text-align: center;"> 
                            <label for="cusmobile">예약자 전화번호</label>
            			</div>
            			<div class="resP4-2">
                       		<button type="button" name="memsearch" class="but_area2">멤버쉽 여부 조회</button>
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
            			    <input type="number" name="cusmemberpoint" id="cusmemberpoint" style="text-align: center;">
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
            		<div class="resP6">
	            		<div class="resP6-1">
		            		<input type="text" name="cussum" id="cussum" style="text-align: center;" readonly>원
	                        <label for="cussum">총 숙박비용</label>
	            		</div>           			 
            		</div>
            		<div class="resP7">
            			<div class="resP7-1">
                       		<button type="button" name="commit" class="but_area1">예약하기</button>
                    	</div>
                    	<div class="resP7-1">
                       		<button type="button" name="cencel2" class="but_area1">취소</button>
                    	</div>
            		</div>
            	</div>      
            </article>
        </div>
    </section>
    <footer>
        <jsp:include page="../Main/footer.jsp" />
    </footer>
</body>
<script>
var today1;
var today2;
var today3;
var today4;
var today5;
var today6;
var ind = null;
let mempoint;
let usepoint;
let allsum;
let onesum;
let jb2 = 0;

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
function checkdate3(){
	checkdate2($('#checkindate2').val())
	$('#checkoutdate2').prop("min",today5)
	$('#checkoutdate2').prop("max",today6)
	if($('#checkindate2').val()>=$('#checkoutdate2').val()){
		$('#checkoutdate2').prop("value",today5)
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
				 $('#cusname').prop('readonly',true)
				 $('#cusmobile').prop('readonly',true)
				 $('.resP6').css('visibility', 'visible');
				 $('.resP7').css('visibility', 'visible');
				 $('button[name=memsearch]').text("예약자명 변경하기")
				 onesum=parseInt($("#enableT1 tbody tr:eq("+ind+") td:eq(2)").text())
				 onedaycal();
			 }else{
				 $('#cusname').prop('readonly',true)
				 $('#cusmobile').prop('readonly',true)
				 $('.resP5').css('visibility', 'visible');
				 $('.resP6').css('visibility', 'visible');
				 $('.resP7').css('visibility', 'visible');
				 $.each(data,function(ndx,value){
					 $('#cusmembership').val(value['mem_number'])
					 mempoint=parseInt(value['mem_point'])
					 $('#memberTier').val(value['mem_tier'])
					 $('#cusmemberpoint').val(value['mem_point'])
				 })
				$('#a1').prop("checked",true)
				$('#cusmemberpoint').prop('readonly',true)	
				$('button[name=memsearch]').text("예약자명 변경하기")
			 } 
		 }, 
		 error: function(jqXHR, textStatus, errorThrown) {
			 swal({title: "검색에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
			 console.log(jqXHR.responseText);
		 }});
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

function check() {
	if($('#a1').prop("checked")) {
		$("label[for='cusmemberpoint']").text('총 사용가능 멤버쉽 Point');
		$('#cusmemberpoint').val(mempoint)
		onedaycal()
		$('#cusmemberpoint').prop('readonly',true)
	}else if($('#a2').prop("checked")) {
		$("label[for='cusmemberpoint']").text('사용할 멤버쉽 Point');
		$('#cusmemberpoint').prop('readonly',false)
		if(mempoint>=allsum){
			usepoint=allsum
			$('#cusmemberpoint').prop('min','10000')
			$('#cusmemberpoint').prop('step','1000')
			$('#cusmemberpoint').prop("max",Math.floor(usepoint/1000)*1000)
			$('#cusmemberpoint').prop("value",Math.floor(usepoint/1000)*1000)
		}else{
			usepoint=mempoint
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
		addpoint()		
	}
}

function addpoint() {
	switch ($('#memberTier').val()){
	case "Bronze" :
		$('input[name=cusmemberpoint]').val(allsum*0.01)
		break;
	case "Silver" :
		$('input[name=cusmemberpoint]').val(allsum*0.015)
		break;
	case "Gold" :
		$('input[name=cusmemberpoint]').val(allsum*0.02)
		break;
	default :
		$('input[name=cusmemberpoint]').val(allsum*0.025)
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

$(document)
.ready(function(){
	checkdate1();
	setCal1()
	setCal2()
	$('#resverate2').css('visibility', 'hidden');
	return false;
})

.on('click','#sidemenu1 ul li:nth-child(3) a', function(){
		event.preventDefault();
		swal("다양한 관광지를 안내해드리기 위해 \n 네이버지도로 연결합니다.", {
			  buttons: ["아니오", "예"],icon: "info"
			}).then((willDelete)=>{
				if (willDelete) {
					  var url = "http://naver.me/5L3P9pF1";  
			          window.open(url, "_blank");  
				 }
			}) 
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
		 url : "admin/booksearch1",
		 async: true,
		 dataType: "json",
		 data:{checkindate:$('#checkindate').val(),checkoutdate:$('#checkoutdate').val(),roomtype1:$('select[name=roomtype1]').val()},
		 success : function(data, status, xhr) {
			 $('#enableP2').css('visibility', 'visible');
			 $('#enableT1 tbody tr').remove();
			 $.each(data,function(ndx,value){
		 			name='<tr><td>'+value['room_name']+'</td><td>'+value['max_guestnum']+'</td><td>'+value['room_price']+'</td></tr>';
		 			$('#enableT1 tbody').append(name);
		 			})
		 	swal({title: "검색이 완료되었습니다.", timer: 2000, icon: "success",button:false});
		 }, 
		 error: function(jqXHR, textStatus, errorThrown) {
			 swal({title: "검색에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
			 console.log(jqXHR.responseText);
		 }});
	return false;
})

.on('click','button[name=memsearch]',function(){
	if($('button[name=memsearch]').text()=='멤버쉽 여부 조회'){
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
		membersearch();
		return false;
	}else{
		 mempoint=0;
		 jb2 = 0;
		 $('input[name=checkbox1]').prop('checked',false)
		 $('#cusname').prop('readonly',false)
		 $('#cusmobile').prop('readonly',false)
		 $('#cusname').val('')
		 $('#cusmobile').val('')
		 $('#cusmembership').val('')
		 $('#memberTier').val('')
		 $('#cusmemberpoint').val('')
		 $('.resP5').css('visibility', 'hidden');
		 $('.resP6').css('visibility', 'hidden');
		 $('.resP7').css('visibility', 'hidden');
		 $('button[name=memsearch]').text("멤버쉽 여부 조회")
		 return false;
	}

})

.on('click','#enableT1 tbody tr',function(){
	$('#resP1').css('visibility', 'visible');
	$('.resP2').css('visibility', 'visible');
	$('.resP3').css('visibility', 'visible');
	$('.resP4').css('visibility', 'visible');
	$("#enableT1 tbody tr:eq("+ind+")").css('font-weight','normal')
	ind = $(this).index();
	$("#enableT1 tbody tr:eq("+ind+")").css('font-weight','bolder')
	$('input[name=checkindate2]').val($('input[name=checkindate]').val())
	$('input[name=checkoutdate2]').val($('input[name=checkoutdate]').val())
	$('input[name=cusroomname]').val($("#enableT1 tbody tr:eq("+ind+") td:eq(0)").text())
	$('input[name=roomtype]').val($("select[name=roomtype1]").val())
	onesum=parseInt($("#enableT1 tbody tr:eq("+ind+") td:eq(2)").text())
	numcus=$("#enableT1 tbody tr:eq("+ind+") td:eq(1)").text();
	$('#cusnum').prop('max',numcus)
	checkdate3()
	$('#checkindate2').trigger('change')
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

.on('click','button[name=commit]',function(){
	if($('#a1').prop("checked")){
		swal({title: "고객님은 멤버쉽 회원입니다",text:"회원은 포인트 적립과 사용중 한가지를 선택해주세요.",timer: 2000,icon: "warning",button:false});
		$('input[name=staffMobile]').focus();
		return false
	}
	swal("객실을 예약하시겠습니까?","입력하신 정보가 맞는지 꼭 확인해주세요", {
			  buttons: ["아니오", "예"],icon: "info"
			}).then((willDelete)=>{
				if (willDelete) {
					if($('#cusmembership').val()=="" || $('#a1').prop("checked")){
						$.ajax({ type: "POST", 
							 url : "bookinsert",
							 async: true,
							 dataType:"text",
							 data:{cusname:$('#cusname').val(),checkindate2:$('#checkindate2').val(),checkoutdate2:$('#checkoutdate2').val(),
								   cusmobile:$('#cusmobile').val(),cusroomname:$('#cusroomname').val(),roomtype:$('#roomtype').val(),
								   cusnum:$('#cusnum').val(),cussum:$('#cussum').val(),oneday_pay:onesum,max_cusnum:numcus},
							 success : function(data, status, xhr) {
								 swal({
								        title: "객실 예약이 완료되었습니다.",
								        text: "고객님의 예약ID는 "+data+" 입니다. \n예약ID,예약자명,예약자 전화번호로 객실예약내역을 조회하실 수 있습니다. \n 확인을 누르시면 메인페이지로 이동합니다.",
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
								 swal({title: "객실예약에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
								 console.log(jqXHR.responseText);
							 }});
					}else{
						if($('#a3').prop("checked")){
							$.ajax({ type: "POST", 
								 url : "bookinsertMadd",
								 async: true,
								 dataType:"text",
								 data:{cusname:$('#cusname').val(),checkindate2:$('#checkindate2').val(),checkoutdate2:$('#checkoutdate2').val(),
									   cusmobile:$('#cusmobile').val(),cusroomname:$('#cusroomname').val(),roomtype:$('#roomtype').val(),
									   cusnum:$('#cusnum').val(),cussum:$('#cussum').val(),cuspoint:$('input[name=cusmemberpoint]').val(),oneday_pay:onesum,max_cusnum:numcus},
								 success : function(data, status, xhr) {
									 swal({
									        title: "객실 예약이 완료되었습니다.",
									        text: "고객님의 예약ID는 "+data+" 입니다. \n 확인을 누르시면 메인페이지로 이동합니다.",
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
									 swal({title: "객실예약에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
									 console.log(jqXHR.responseText);
								 }});
						}else{
							$.ajax({ type: "POST", 
								 url : "bookinsertMuse",
								 async: true,
								 dataType:"text",
								 data:{cusname:$('#cusname').val(),checkindate2:$('#checkindate2').val(),checkoutdate2:$('#checkoutdate2').val(),
									   cusmobile:$('#cusmobile').val(),cusroomname:$('#cusroomname').val(),roomtype:$('#roomtype').val(),
									   cusnum:$('#cusnum').val(),cussum:$('#cussum').val(),usepoint:$('input[name=cusmemberpoint]').val(), oneday_pay:onesum , max_cusnum:numcus},
								 success : function(data, status, xhr) {
									 swal({
									        title: "객실 예약이 완료되었습니다.",
									        text: "고객님의 예약ID는 "+data+" 입니다. \n 확인을 누르시면 메인페이지로 이동합니다.",
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
									 swal({title: "객실예약에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
									 console.log(jqXHR.responseText);
								 }});
						}
					}
				 }
			}) 
})

.on('click','button[name=cencel]',function(){
	setCal1()
	ind = null;
	let jb2 = 0;
	$('select[name=roomtype1]').val("")
	$('#enableP2').css('visibility', 'hidden')
	return false;
})

.on('click','button[name=cencel2]',function(){
	swal("객실예약진행을 취소하시겠습니까?","입력하신 정보는 저장되지 않으며 \n 메인페이지로 돌아갑니다.", {
		  buttons: ["아니오", "예"],icon: "info"
		}).then((willDelete)=>{
			if (willDelete) {
				location.replace('/hpro/')
			 }
		}) 
})
</script>
</html>