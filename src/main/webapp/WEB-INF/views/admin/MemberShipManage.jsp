<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% response.setHeader("Pragma", "no-cache"); response.setHeader("Cache-Control", "no-cache"); response.setHeader("Cache-Control", "no-store"); response.setDateHeader("Expires", 0L); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>휴먼호텔 관리자 - 휴먼멤버스 관리</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
        * {margin:0; padding:0; box-sizing: border-box; text-decoration: none; list-style: none;}
        body{ 
            font-family: 'Noto Sans KR', sans-serif; 
            height: 100vh;
            background: url("../resources/adminimage/MemberShip_manage.jpg") no-repeat center;
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
        #memberManage {
            width: 80vw;
            height: 85vh;
            margin: 0 auto;
        }
        #memberManageP1 {
            width: 80%;
            height: 30%;
            margin: 0 auto;
        }
        #inputarea {
            width: 80%;
            height: 100%;
            float: left;
        }
        .inputareaA {
            width: 100%;
            height: 33.3%;
        } 
        .inputareaB {
            width: 33.3%;
            height: 100%;
            float: left;
            display: flex; 
            position: relative;
            justify-content: center; 
            align-items: center;
        } 
        .inputareaC {
            width: 50%;
            height: 100%;
            float: left;
            position: relative;
            display: flex; 
            justify-content: center; 
            align-items: center;
        } 
        .inputareaB input[type=text],.inputareaC input[type=text] {
            width: 80%;
            padding: 20px 10px 10px;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #999;
            font-size: 18px; color: #fff;
            outline: none;
        }
        .inputareaC input[type=password]{
            width: 80%;
            padding: 20px 10px 10px;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #FAEBD7;
            font-size: 18px; color: #fff;
            outline: none;
        }
        .inputareaB label,.inputareaC label {
            position: absolute; left: 10px; top: 10px;
            font-size: 14px; color: #FAEBD7;
        }
        .inputareaB select{
            width: 80%;
            height: 50%;
            background-color: rgba(250, 235, 215, 0.7);
        }
        #buttonarea {
            width: 20%;
            height: 100%;
            float: left;
        }
        .buttonareaA {
            width: 100%;
            height: 25%;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        .buttonareaA button{
            width: 80%;
            height: 70%;
            border: none;
            background:#E1B771;
            color: #fff;
            border-radius: 25px;
            outline: none;
            font-size: 16px;
        }
        #memberManageP2 {
        	position : relative;
            width: inherit;
            height: 65%;
            margin-top: 20px;
        }
        #memberarea {
            overflow-y: auto;
            overflow-x: auto;
            width: inherit;
            height: 100%;
            overflow-y: auto;
        }
        #memberT1 {
            border-collapse: collapse;
            width: 100%;
            text-align: center;
            table-layout: fixed;
            word-break: break-all; 
        }
        #memberT1 th{
            padding: 15px 0 15px 0;
            font-size: 20px;
            font-weight: normal;
            background-color: rgb(222, 184, 135);
            position:sticky;
            top: 0px;
            z-index: 2;
            color:white;
        }
        #memberT1 td {
            padding: 15px 0 15px 0;
            font-size: 16px;
            z-index: 1;
            color: rgba(255, 222, 173, 0.8);
        }
        #memberT1 tbody tr:hover {
        	background-color:rgba(222, 184, 135, 0.3); 
        }
        #memberarea::-webkit-scrollbar {
            width: 10px;
        }
        #memberarea::-webkit-scrollbar-thumb {
            background-color: rgba(235, 198, 128,0.5)
        }
        #memberarea::-webkit-scrollbar-track {
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
        .span2 {
        	color:wheat;
        	font-size : 17px;
        	position : absolute;
        	right: 0;
        	top:-30px;
        }
        .span2:hover {
 			color:rgba(240, 203, 133,0.9);
        }
        .hide {display:none;}
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
        <section id="memberManage">
            <article id="memberManageP1">
                <div id="inputarea">
                    <div class="inputareaA">
                    <input type="hidden" name="crupType">
                        <div class="inputareaB">
                            <input type="text" name="memberName" id="memberName" style="text-align: center;">
                            <label for="memberName">고객명</label>
                        </div>
                        <div class="inputareaB">
                            <input type="text" name="memberMobile" id="memberMobile" style="text-align: center;">
                            <label for="memberMobile">전화번호</label>
                        </div>
                        <div class="inputareaB">
                            <select name="MemberTier" id="MemberTier">
                                <option value="">멤버쉽 등급 선택</option>
                                <option value="Bronze">Bronze</option>
                                <option value="Silver">Silver</option>
                                <option value="Gold">Gold</option>
                                <option value="Platinum">Platinum</option>
                            </select>
                        </div>
                    </div>
                    <div class="inputareaA">
                        <div class="inputareaC">
                            <input type="text" name="memberID" id="memberID" style="text-align: center;">
                            <label for="memberID">멤버쉽 ID</label>
                        </div>
                        <div class="inputareaC">
                            <input type="password" name="memberPW" id="memberPW" style="text-align: center;">
                            <label for="memberPW">password</label>
                        </div>
                    </div>
                    <div class="inputareaA">
                        <div class="inputareaC">
                            <input type="text" name="memberAdress" id="memberAdress" style="text-align: center;">
                            <label for="memberAdress">고객주소</label>
                        </div>
                        <div class="inputareaC">
                            <input type="text" name="memberEmail" id="memberEmail" style="text-align: center;">
                            <label for="memberEmail">E-mail</label>
                        </div>
                    </div>
                </div>
                <div id="buttonarea">
                    <div class="buttonareaA">
                        <button type="button" name="search">고객정보검색</button>
                    </div>
                    <div class="buttonareaA">
                        <button type="button" name="create">고객정보등록</button>
                    </div>
                    <div class="buttonareaA">
                        <button type="button" name="delete">고객정보삭제</button>
                    </div>
                    <div class="buttonareaA">
                        <button type="button" name="reset">초기화</button>
                    </div>
                </div>
            </article>
            <article id="memberManageP2">
             	<p class='span2'>전체고객정보 불러오기</p>
                <div id="memberarea">
                    <table id="memberT1">
                        <thead>
                            <tr>
                                <th>고객명</th>
                                <th>멤버쉽 번호</th>
                                <th>전화번호</th>
                                <th>멤버쉽ID</th>
                                <th class='hide'>멤버쉽PW</th>
                                <th>멤버쉽등급</th>
                                <th>멤버쉽포인트</th>
                                <th>주소지</th>
                                <th>email</th>
                                <th>가입일시</th>
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
let ind=null;
let jb=null;
let jb2=null;
let jb3=null;
function search(){
	$.ajax({ type: "POST", 
		 url : "membersearch",
		 async: true,
		 dataType: "json",
		 success : function(data, status, xhr) {
			 $('#memberT1 tbody tr').remove();
			 console.log(data)
			 $.each(data,function(ndx,value){
		 			name='<tr><td>'+value['name']+'</td><td>'+value['mem_number']+
		 				 '</td><td>'+value['mem_mobile']+'</td><td>'+value['id']+
		 				 '</td><td class=hide>'+value['password']+'</td><td>'+value['mem_tier']+
		 				 '</td><td>'+value['mem_point']+'</td><td>'+value['mem_address']+
		 				 '</td><td>'+value['mem_email']+'</td><td>'+value['mem_date']+'</td></tr>';
		 			$('#memberT1 tbody').append(name);})}, 
		 error: function(jqXHR, textStatus, errorThrown) {
			 swal({title: "전체 고객목록 불러오기에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
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

.on('click','.hed1',function(){
	location.href = 'adminmain'
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
})

.on('click','button[name=search]',function(){
	swal({
		  title:"검색할 종류를 고르십시오",
		  text:"입력하신 값으로 검색을 진행합니다.",
		  buttons: {memberName: {text: "고객명으로 검색",value: "memberName"},MemberTier: {text: "멤버쉽 등급으로 검색",value: "MemberTier"},
			  		cancel: true},
		}).then((PromiseResult)=> {
			if(PromiseResult=="memberName") {
				$.ajax({ type: "POST", 
					 url : "membersearch1",
					 async: true,
					 dataType: "json",
					 data:{memberName:$('input[name=memberName]').val()},
					 success : function(data, status, xhr) {
						 $('#memberT1 tbody tr').remove();
						 $.each(data,function(ndx,value){
					 			name='<tr><td>'+value['name']+'</td><td>'+value['mem_number']+'</td><td>'+value['mem_mobile']+'</td><td>'+value['id']+'</td><td class=hide>'+value['password']+'</td><td>'+value['mem_tier']+'</td><td>'+value['mem_point']+'</td><td>'+value['mem_address']+'</td><td>'+value['mem_email']+'</td><td>'+value['mem_date']+'</td></tr>';
					 			$('#memberT1 tbody').append(name);})
					 	swal({title: "검색이 완료되었습니다.", timer: 2000, icon: "success",button:false});
					 	$('button[name=reset]').trigger('click');
					 }, 
					 error: function(jqXHR, textStatus, errorThrown) {
						 swal({title: "검색에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
						 console.log(jqXHR.responseText);
					 }});
			}else if(PromiseResult=="MemberTier") {
				$.ajax({ type: "POST", 
					 url : "membersearch2",
					 async: true,
					 dataType: "json",
					 data:{MemberTier:$('select[name=MemberTier]').val()},
					 success : function(data, status, xhr) {
						 $('#memberT1 tbody tr').remove();
						 $.each(data,function(ndx,value){
					 			name='<tr><td>'+value['name']+'</td><td>'+value['mem_number']+'</td><td>'+value['mem_mobile']+'</td><td>'+value['id']+'</td><td class=hide>'+value['password']+'</td><td>'+value['mem_tier']+'</td><td>'+value['mem_point']+'</td><td>'+value['mem_address']+'</td><td>'+value['mem_email']+'</td><td>'+value['mem_date']+'</td></tr>';
					 			$('#memberT1 tbody').append(name);})
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

.on('click','#memberT1 tbody tr',function(){
	$("button[name=create]").text("고객정보수정")
	$("#memberT1 tbody tr:eq("+ind+")").css('font-weight','normal')
	ind = $(this).index();
	$("#memberT1 tbody tr:eq("+ind+")").css('font-weight','bolder')
	$('input[name=crupType]').val("up")
	$('input[name=memberName]').val($("#memberT1 tbody tr:eq("+ind+") td:eq(0)").text())
	$('input[name=memberMobile]').val($("#memberT1 tbody tr:eq("+ind+") td:eq(2)").text())
	$('input[name=memberID]').val($("#memberT1 tbody tr:eq("+ind+") td:eq(3)").text())
	$("select option[value="+$("#memberT1 tbody tr:eq("+ind+") td:eq(5)").text()+"]").prop("selected",true)
	$('input[name=memberPW]').val($("#memberT1 tbody tr:eq("+ind+") td:eq(4)").text());
	$('input[name=memberAdress]').val($("#memberT1 tbody tr:eq("+ind+") td:eq(7)").text());
	$('input[name=memberEmail]').val($("#memberT1 tbody tr:eq("+ind+") td:eq(8)").text());
	$('input[name=memberName]').prop('readonly',true);
	$('input[name=memberID]').prop('readonly',true);
})

.on('change','input[name=memberID]',function(){
	$.ajax({ type: "POST", 
		 url : "membersearchA",
		 async: true,
		 data:{memberID:$('input[name=memberID]').val()},
		 dataType: "text",
		 success : function(data, status, xhr) {
			 jb=data;
			 if(data==1){
				 $('input[name=memberID]').css("color","red");
			 }else{
				 $('input[name=memberID]').css("color","#fff");
			 }
		 }, 
		 error: function(jqXHR, textStatus, errorThrown) {
			 console.log(jqXHR.responseText);
		 }});
})

.on('keyup','input[name=memberMobile]',function(){
	let a = $('input[name=memberMobile]').val();
	if(!$.isNumeric($('input[name=memberMobile]').val())){
		$('input[name=memberMobile]').val("");
	}
	if(a.length>11){
		$('input[name=memberMobile]').val(a.substring(0,11));
	}
	var regExp = /^\d{3}\d{3,4}\d{4}$/;
	 if(!regExp.test($('input[name=memberMobile]').val())){
		 jb2=1
		 $('input[name=memberMobile]').css("color","red");
	 }else{
		 jb2=0
		 $('input[name=memberMobile]').css("color","#fff");
	 }
})

.on('keyup','input[name=memberEmail]',function(){
	var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;//이메일 정규식
	if(!emailRule.test($("input[name=memberEmail]").val())){
		jb3=1
		$('input[name=memberEmail]').css("color","red");
	}else {
		jb3=0
		$('input[name=memberEmail]').css("color","#fff");
	}
})

.on('click','button[name=create]',function(){
	if($('input[name=memberName]').val()==""){
		swal({title: "고객명을 입력해주세요.",timer: 2000,icon: "warning",button:false});
		$('input[name=memberName]').focus();
		return false
	}
	if($('input[name=memberMobile]').val()==""){
		swal({title: "고객 전화번호를 입력해주세요",text:"전화번호가 없는 경우 0을 입력해주세요",timer: 2000,icon: "warning",button:false});
		$('input[name=memberMobile]').focus();
		return false
	}
	if(jb2==1){
		swal({title: "연락처 형식이 틀렸습니다.",text:"01012345678 형식으로 입력해주세요",timer: 2000,icon: "warning",button:false});
		$('input[name=memberMobile]').focus();
		return false
	}
	if($('input[name=memberID]').val()==""){
		swal({title: "멤버쉽 ID를 입력해주세요",timer: 2000,icon: "warning",button:false});
		$('input[name=memberID]').focus();
		return false
	}
	if(jb==1){
		swal({title: "멤버쉽 ID가 중복되었습니다.",text:"다른 멤버쉽ID로 입력후 다시 시도하십시오.",timer: 2000,icon: "warning",button:false});
		$('input[name=memberID]').focus();
		return false
	}
	if($('input[name=memberPW]').val()==""){
		swal({title: "멤버쉽 password를 입력해주세요",timer: 2000,icon: "warning",button:false});
		$('input[name=memberPW]').focus();
		return false
	}
	if($('input[name=memberAdress]').val()==""){
		swal({title: "고객 주소를 입력해주세요",timer: 2000,icon: "warning",button:false});
		$('input[name=memberAdress]').focus();
		return false
	}
	if(jb3==1){
		swal({title: "이메일 형식을 확인해주세요.",text:"abcd@efg.hij 형식으로 입력해주세요",timer: 2000,icon: "warning",button:false});
		$('input[name=memberAdress]').focus();
		return false
	}
	if($('input[name=crupType]').val()=="cr"){
		swal("새로운 고객정보를 등록하시겠습니까?","입력하신 정보가 맞는지 꼭 확인해주세요, 등록시 멤버쉽 등급 선택은 반영되지 않습니다.", {
			  buttons: ["아니오", "예"],icon: "info"
			}).then((willDelete)=>{
				if (willDelete) {
					$.ajax({ type: "POST", 
						 	 url : "memberinsert",
						 	 async: true,
						 	 data:{memberName:$('input[name=memberName]').val(),memberMobile:$('input[name=memberMobile]').val(),
						 			memberID:$('input[name=memberID]').val(),memberPW:$('input[name=memberPW]').val(),
						 			memberAdress:$('input[name=memberAdress]').val(),memberEmail:$('input[name=memberEmail]').val()},
						 	 success : function(data, status, xhr) {
						 		swal({title: "고객정보 등록이 완료되었습니다.", timer: 2000, icon: "success",button:false});
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
		swal("고객정보를 변경하시겠습니까?","입력하신 정보가 맞는지 꼭 확인해주세요", {
			  buttons: ["아니오", "예"],icon: "info"
			}).then((willDelete)=>{
				if (willDelete) {
					$.ajax({ type: "POST", 
						 	 url : "memberupdate",
						 	 async: true,
						 	 data:{memberMobile:$('input[name=memberMobile]').val(),MemberTier:$('select[name=MemberTier]').val(),memberID:$('input[name=memberID]').val(),
								   memberPW:$('input[name=memberPW]').val(),memberAdress:$('input[name=memberAdress]').val(),memberEmail:$('input[name=memberEmail]').val()},
						 	 success : function(data, status, xhr) {
						 		swal({title: "고객정보 변경이 완료되었습니다.", timer: 2000, icon: "success",button:false});
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
	swal("선택한 고객정보를 삭제하시겠습니까?","고객정보를 삭제하시면 되돌릴 수 없습니다.", {
		  buttons: ["아니오", "예"],icon: "info"
		}).then((willDelete)=>{
			if (willDelete) {
				$.ajax({ type: "POST", 
					 	 url : "memberdelete",
					 	 async: true,
					 	 data:{memberID:$('input[name=memberID]').val()},
					 	 success : function(data, status, xhr) {
					 		swal({title: "고객정보 삭제가 완료되었습니다.", timer: 2000, icon: "success",button:false});
					 		search();
					 		$('button[name=reset]').trigger('click');
					 	 }, 
						 error: function(jqXHR, textStatus, errorThrown) {
							 swal({title: "고객정보 삭제에 실패하였습니다.",text:"입력정보를 확인하고 다시 시도하여 주십시오.", timer: 3000, icon: "error",button:false});
							 console.log(jqXHR.responseText); 
						 }});
			 }
		}) 
})

.on('click','button[name=reset]',function(){
	$("button[name=create]").text("고객정보등록")
	$("#memberT1 tbody tr:eq("+ind+")").css('font-weight','normal')
	jb=0;
	$('input[name=memberID]').css("color","#fff");
	$('input[name=memberID]').val("");
	$('input[name=crupType]').val("cr");
	$('input[name=memberName]').val("");
	$('input[name="memberMobile"]').val("");
	$('input[name=memberID]').val("");
	$('select[name=MemberTier]').val("");
	$('input[name=memberPW]').val("");
	$('input[name=memberAdress]').val("");
	$('input[name=memberEmail]').val("");
	$('input[name=memberName]').prop('readonly',false);
	$('input[name=memberID]').prop('readonly',false);
	return false;
})
</script>
</html>