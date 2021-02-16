<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% response.setHeader("Pragma", "no-cache"); response.setHeader("Cache-Control", "no-cache"); response.setHeader("Cache-Control", "no-store"); response.setDateHeader("Expires", 0L); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>휴먼호텔 관리자 - 객실정보관리</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
        * {margin:0; padding:0; box-sizing: border-box; text-decoration: none; list-style: none;}
        body{ 
            font-family: 'Noto Sans KR', sans-serif; 
            height: 100vh;
            background: url("../resources/adminimage/room_manage.jpg") no-repeat center;
            background-size: cover;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        body::before {
            content:"";
            position: absolute; z-index: 1;
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
        #mainRoom {
            width: inherit;
            height: 85vh;
            display: flex; 
            justify-content: flex-start; 
            align-items: flex-start;
        }
        #roomP1 {
            width: 60%;
            height: inherit;
            position :relative;
        }
        #tableP1 {
            width: 80%;
            height: 80%;
            margin: 10% 10% 0 10%;
            overflow-y: auto;
        }
        #roomlistT {
            border-collapse: collapse;
            text-align: center;
            table-layout: fixed;
            word-break: break-all;
            width: 100%;
        }
        #roomlistT th{
            padding: 15px 0 15px 0;
            width: 25%;
            font-size: 22px;
            font-weight: normal;
            position:sticky;
            background-color: rgb(222, 184, 135);
            top: 0px;
            z-index: 2;
            color:white;
        }
        #roomlistT td {
            padding: 20px 0 20px 0;
            width: 25%;
            font-size: 16px;
            z-index: 1;
            color: rgba(255, 222, 173, 0.8);
        }
        #roomlistT tbody tr:hover {
        	background-color:rgba(222, 184, 135, 0.3); 
        }
        #roomP2 {
            width: 40%;
            height: inherit;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        #inputPart {
            width:100%;
            height: 80%;
        }
        #inputArea {
            width: inherit;
            height: 80%;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        #buttonArea {
            width: inherit;
            height: 20%;
        }
        .but_area {
            width: 50%;
            height: 50%;
            float: left;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        .but_area1 {
            width: 70%;
            height: 75%;
            border: none;
            background:#E1B771;
            color: #fff;
            border-radius: 25px;
            outline: none;
            font-size: 17px;
        }
        .but_area1:hover {
            font-weight: bold;
        }
        #inputbox {
            width: 80%;
            height: 80%;
        }
        .inputbox1 {
            width: 100%;
            height: 25%;
            position: relative; 
        }
        .inputbox1 input{
            width: 100%;
            padding: 20px 10px 10px;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid#FAEBD7;
            font-size: 18px; color: #fff;
            outline: none;
        }
        .inputbox1 label {
            position: absolute; left: 0px; top: -15px;
            font-size: 17px; color: #FAEBD7;
        }
        select {
            width:100%;
            height: 45%;
            font-size: 16px;
            background-color: rgba(250, 235, 215, 0.6);
        }
        #tableP1::-webkit-scrollbar {
            width: 10px;
        }
        #tableP1::-webkit-scrollbar-thumb {
            background-color: rgba(235, 198, 128,0.5)
        }
        #tableP1::-webkit-scrollbar-track {
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
        	display:none;
        }
        .span2 {
            position : absolute;
        	color:wheat;
        	font-size : 17px;
        	right:10%;
        	top:7%;
        }
        .span2:hover {
 			color:rgba(240, 203, 133,0.9);
        }
        #logout:hover {
            color: wheat;
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
        <section id="mainRoom">
            <article id="roomP1">
            <p class='span2'>전체객실정보 불러오기</p>
                <div id="tableP1">
                    <table id="roomlistT">
                        <thead>
                            <tr>
                                <th>객실명</th>
                                <th>객실종류</th>
                                <th>숙박가능인원</th>
                                <th>1박가격</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </article>
            <article id="roomP2">
                <div id="inputPart">
                    <div id="inputArea">
                        <div id="inputbox">
                        	<input type="hidden" name="crupType">
                    		<input type="hidden" name="room_id">
                            <div class="inputbox1">
                                <input type="text" name="roomname" id="roomname" style="text-align: center;">
                                <label for="id">객실명</label>
                            </div>
                            <div class="inputbox1">
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
                            <div class="inputbox1">
                                <input type="text" name="numcus" id="numcus" style="text-align: center;">
                                <label for="id">숙박가능인원</label>
                            </div>
                            <div class="inputbox1">
                                <input type="text" name="onepay" id="onepay" style="text-align: center;">
                                <label for="id">1박요금</label>
                            </div>
                        </div>
                    </div>
                    <div id="buttonArea">
                        <div class="but_area">
                            <button type="button" name="search" class="but_area1">객실정보검색</button>
                        </div>
                        <div class="but_area">
                            <button type="button" name="apply" class="but_area1">객실정보등록</button>
                        </div>
                        <div class="but_area">
                            <button type="button" name="delete" class="but_area1">객실정보삭제</button>
                        </div>
                        <div class="but_area">
                            <button type="button" name="reset" class="but_area1">초기화</button>
                        </div>
                    </div>
                </div>
            </article>
        </section>
    </div>
</body>
<script>
let ind=null;
let jb=null;
function search(){
	$.ajax({ type: "POST", 
		 url : "roomsearch",
		 async: true,
		 dataType: "json",
		 success : function(data, status, xhr) {
			 $('#roomlistT tbody tr').remove();
			 $.each(data,function(ndx,value){
		 			name='<tr><td class="hide">'+value['room_id']+'</td><td>'+value['room_name']+'</td><td>'+
		 			value['room_type']+'</td><td>'+value['max_guestnum']+'</td><td>'+value['room_price']+'</td></tr>';
		 			$('#roomlistT tbody').append(name);})}, 
		 error: function(jqXHR, textStatus, errorThrown) {
			 swal({title: "전체 객샐목록 불러오기에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
			 console.log(jqXHR.responseText);
		 }});
}
$(document)
.ready(function(){
	$('input[name=crupType]').val("cr");
	search();
	return false;
})

.on('click','.span2',function(){
	search();
})

.on('change','input[name=roomname]',function(){
	$.ajax({ type: "POST", 
		 url : "roomsearchA",
		 async: true,
		 data:{roomname:$('input[name=roomname]').val()},
		 dataType: "text",
		 success : function(data, status, xhr) {
			 jb=data;
			 if(data==1){
				 $('input[name=roomname]').css("color","red");
			 }else{
				 $('input[name=roomname]').css("color","#fff");
			 }
		 }, 
		 error: function(jqXHR, textStatus, errorThrown) {
			 console.log(jqXHR.responseText);
		 }});
})

.on('click','.hed1',function(){
	location.href = 'adminmain'
})

.on('click','#logout',function(){
	swal("휴먼호텔 관리시스템에서 로그아웃 하시겠습니까?", {
		  buttons: ["아니오", "예"],
		}).then((willDelete)=>{
			if (willDelete) {
				swal({title: "로그아웃 되었습니다.",timer: 2000,icon: "success",button:false});
				setTimeout(function(){
					location.href = 'adminout';
				},2000)	
			 }
		}) 
})

.on('click','button[name=search]',function(){
	swal({
		  title:"검색할 종류를 고르십시오",
		  text:"입력하신 값으로 검색을 진행합니다.",
		  buttons: {roomname: {text: "객실명으로 검색",value: "roomname"},roomtype: {text: "객실종류로 검색",value: "roomtype"},
			  		cancel: true},
		}).then((PromiseResult)=> {
			if(PromiseResult=="roomname") {
				$.ajax({ type: "POST", 
					 url : "roomsearch1",
					 async: true,
					 dataType: "json",
					 data:{roomname:$('input[name=roomname]').val()},
					 success : function(data, status, xhr) {
						 $('#roomlistT tbody tr').remove();
						 $.each(data,function(ndx,value){
					 			name='<tr><td class="hide">'+value['room_id']+'</td><td>'+value['room_name']+'</td><td>'+
					 			value['room_type']+'</td><td>'+value['max_guestnum']+'</td><td>'+value['room_price']+'</td></tr>';
					 			$('#roomlistT tbody').append(name);
					 			})
					 	swal({title: "검색이 완료되었습니다.", timer: 2000, icon: "success",button:false});
					 	$('button[name=reset]').trigger('click');
					 }, 
					 error: function(jqXHR, textStatus, errorThrown) {
						 swal({title: "검색에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
						 console.log(jqXHR.responseText);
					 }});
			}else if(PromiseResult=="roomtype") {
				$.ajax({ type: "POST", 
					 url : "roomsearch2",
					 async: true,
					 dataType: "json",
					 data:{roomtype:$('select[name=roomtype]').val()},
					 success : function(data, status, xhr) {
						 $('#roomlistT tbody tr').remove();
						 $.each(data,function(ndx,value){
					 			name='<tr><td class="hide">'+value['room_id']+'</td><td>'+value['room_name']+'</td><td>'+
					 			value['room_type']+'</td><td>'+value['max_guestnum']+'</td><td>'+value['room_price']+'</td></tr>';
					 			$('#roomlistT tbody').append(name);
					 			})
					 	swal({title: "검색이 완료되었습니다.", timer: 2000, icon: "success",button:false});
					 	$('button[name=reset]').trigger('click');
					 }, 
					 error: function(jqXHR, textStatus, errorThrown) {
						 swal({title: "검색에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
						 console.log(jqXHR.responseText);
					 }});
			}
		}) 	
})


.on('click','#roomlistT tbody tr',function(){	
	$("button[name=apply]").text("객실정보수정")
	$("#roomlistT tbody tr:eq("+ind+")").css('font-weight','normal')
	ind = $(this).index();
	$("#roomlistT tbody tr:eq("+ind+")").css('font-weight','bolder')
	$('input[name=crupType]').val("up")
	$('input[name=room_id]').val($("#roomlistT tbody tr:eq("+ind+") td:eq(0)").text())
	$('input[name=roomname]').val($("#roomlistT tbody tr:eq("+ind+") td:eq(1)").text())
	$('input[name=numcus]').val($("#roomlistT tbody tr:eq("+ind+") td:eq(3)").text())
	$("select option[value="+$("#roomlistT tbody tr:eq("+ind+") td:eq(2)").text()+"]").prop("selected",true)
	$('input[name=onepay]').val($("#roomlistT tbody tr:eq("+ind+") td:eq(4)").text());
	$('input[name=roomname]').prop('readonly',true);
})

.on('keyup','input[name=numcus]',function(){
	let a = $('input[name=numcus]').val();
	if(!$.isNumeric($('input[name=numcus]').val())){
		$('input[name=numcus]').val("");
	}
	if(a.length>2){
		$('input[name=numcus]').val(a.substring(0,2));
	}
})

.on('keyup','input[name=onepay]',function(){
	let a = $('input[name=onepay]').val();
	if(!$.isNumeric($('input[name=onepay]').val())){
		$('input[name=onepay]').val("");
	}
	if(a.length>7){
		$('input[name=onepay]').val(a.substring(0,7));
	}
})

.on('keyup','input[name=roomname]',function(){
	let a = $('input[name=roomname]').val();
	if(a.length>10){
		$('input[name=roomname]').val(a.substring(0,10));
	}
})

.on('click','button[name=apply]',function(){
	if($('input[name=roomname]').val()==""){
		swal({title: "객실명을 입력해주세요.",timer: 2000,icon: "warning",button:false});
		$('input[name=roomname]').focus();
		return false
	}
	if(jb==1){
		swal({title: "객실명이 중복되었습니다.",text:"객실명을 다시 확인해주시고 시도해주십시오.",timer: 2000,icon: "warning",button:false});
		$('input[name=roomname]').focus();
		return false
	}
	if($('select[name=roomtype]').val()==""){
		swal({title: "객실종류를 선택해주세요",timer: 2000,icon: "warning",button:false});
		return false
	}
	if($('input[name=numcus]').val()==""){
		swal({title: "숙박가능인원을 입력해주세요.",timer: 2000,icon: "warning",button:false});
		$('input[name=numcus]').focus();
		return false
	}
	if($('input[name=onepay]').val()==""){
		swal({title: "1박요금을 입력해주세요",timer: 2000,icon: "warning",button:false});
		$('input[name=onepay]').focus();
		return false
	}
	if($('input[name=crupType]').val()=="cr"){
		swal("새로운 객실정보를 등록하시겠습니까?", {
			  buttons: ["아니오", "예"],icon: "info"
			}).then((willDelete)=>{
				if (willDelete) {
					$.ajax({ type: "POST", 
						 	 url : "roominsert",
						 	 async: true,
						 	 data:{roomname:$('input[name=roomname]').val(),roomtype:$('select[name=roomtype]').val(),
						 		   numcus:$('input[name=numcus]').val(),onepay:$('input[name=onepay]').val()},
						 	 success : function(data, status, xhr) {
						 		swal({title: "등록이 완료되었습니다.", timer: 2000, icon: "success",button:false});
						 		search();
						 		$('button[name=reset]').trigger('click');
						 	 }, 
							 error: function(jqXHR, textStatus, errorThrown) {
								 swal({title: "등록에 실패하였습니다.",text:"입력정보를 확인하고 다시 시도하여 주십시오.", timer: 3000, icon: "error",button:false});
								 console.log(jqXHR.responseText); 
							 }});
				 }
			}) 
	}else {
		swal("기존 객실정보를 변경하시겠습니까?", {
			  buttons: ["아니오", "예"],icon: "info"
			}).then((willDelete)=>{
				if (willDelete) {
					$.ajax({ type: "POST", 
						 	 url : "roomupdate",
						 	 async: true,
						 	 data:{roomname:$('input[name=roomname]').val(),roomtype:$('select[name=roomtype]').val(),
						 		   numcus:$('input[name=numcus]').val(),onepay:$('input[name=onepay]').val(),roomid:$('input[name=room_id]').val()},
						 	 success : function(data, status, xhr) {
						 		swal({title: "변경이 완료되었습니다.", timer: 2000, icon: "success",button:false});
						 		search();
						 		$('button[name=reset]').trigger('click');
						 	 }, 
							 error: function(jqXHR, textStatus, errorThrown) {
								 swal({title: "변경에 실패하였습니다.",text:"입력정보를 확인하고 다시 시도하여 주십시오.", timer: 3000, icon: "error",button:false});
								 console.log(jqXHR.responseText); 
							 }});
				 }
			}) 
	}
})

.on('click','button[name=delete]',function(){
	swal("선택한 객실정보를 삭제하시겠습니까?", {
		  buttons: ["아니오", "예"],icon: "info"
		}).then((willDelete)=>{
			if (willDelete) {
				$.ajax({ type: "POST", 
					 	 url : "roomdelete",
					 	 async: true,
					 	 data:{roomid:$('input[name=room_id]').val()},
					 	 success : function(data, status, xhr) {
					 		swal({title: "객실정보 삭제가 완료되었습니다.", timer: 2000, icon: "success",button:false});
					 		search();
					 		$('button[name=reset]').trigger('click');
					 	 }, 
						 error: function(jqXHR, textStatus, errorThrown) {
							 swal({title: "객실정보 삭제에 실패하였습니다.",text:"입력정보를 확인하고 다시 시도하여 주십시오.", timer: 3000, icon: "error",button:false});
							 console.log(jqXHR.responseText); 
						 }});
			 }
		}) 
})

.on('click','button[name=reset]',function(){
	$("#roomlistT tbody tr:eq("+ind+")").css('font-weight','normal')
	$('input[name=roomname]').css('color','#fff')
	ind=null
	jb=0;
	$("button[name=apply]").text("객실정보등록")
	$('input[name=crupType]').val("cr");
	$('input[name=room_id]').val("");
	$('input[name=roomname]').val("");
	$('input[name=numcus]').val("");
	$('select[name=roomtype]').val("");
	$('input[name=onepay]').val("");
	$('input[name=roomname]').prop('readonly',false);
	return false;
})
</script>
</html>