<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% response.setHeader("Pragma", "no-cache"); response.setHeader("Cache-Control", "no-cache"); response.setHeader("Cache-Control", "no-store"); response.setDateHeader("Expires", 0L); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>휴먼호텔 관리자 - 직원계정관리</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
        * {margin:0; padding:0; box-sizing: border-box; text-decoration: none; list-style: none;}
        body{ 
            font-family: 'Noto Sans KR', sans-serif; 
            height: 100vh;
            background: url("../resources/adminimage/admin_manage.jpg") no-repeat center;
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
        #mainManage {
            width: 65vw;
            height: 85vh;
            margin: 0 auto;
        }
        #ManageP1 {
            width: inherit;
            height: 35%;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        #ManageP1-1 {
            width: 95%;
            height: 90%;
            display: flex; 
            justify-content: flex-start; 
            align-items: flex-start;
        }
        #inputarea {
            width: 75%;
            height: 100%;
        }
        #inputarea1{
            width: 50%;
            height: 33.3%;
            float: left;
            position: relative;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        #inputarea1 input[type=text],#inputarea1 input[type=password]{
            width: 90%;
            padding: 20px 10px 10px;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #FAEBD7;
            font-size: 18px; color: #fff;
            outline: none;
        }
        #inputarea1 label {
            position: absolute; left: 10px; top: 10px;
            font-size: 14px; color: #FAEBD7;
        }
        #inputarea1 select{
            width: 80%;
            height: 50%;
            background-color: rgba(250, 235, 215, 0.7);
        }
        #buttonarea {
            width: 25%;
            height: 100%;
        }
        #buttonarea1{
            width: 100%;
            height: 25%;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        #buttonarea1 button{
            width: 80%;
            height: 65%;
            border: none;
            background:#E1B771;
            color: #fff;
            border-radius: 25px;
            outline: none;
            font-size: 16px;
        }
        #buttonarea1 button:hover {
            font-weight: bold;
        }
        #ManageP2 {
            width: inherit;
            height: 65%;
            position : relative;
            display: flex; 
            justify-content: center; 
            align-items: center;
        }
        #ManageP2-1 {
            width: 100%;
            height: 90%;
            overflow-y: auto;
        }
        #ManageT1 {
            border-collapse: collapse;
            text-align: center;
            table-layout: fixed;
            word-break: break-all;
            width: 100%;
        }
        #ManageT1 th{
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
        #ManageT1 td {
            padding: 15px 0 20px 0;
            width: 25%;
            font-size: 16px;
            z-index: 1;
            color: rgba(255, 222, 173, 0.8);
        }
       	#ManageT1 tbody tr:hover {
        	background-color:rgba(222, 184, 135, 0.3); 
        }
        #ManageP2-1::-webkit-scrollbar {
            width: 10px;
        }
        #ManageP2-1::-webkit-scrollbar-thumb {
            background-color: rgba(235, 198, 128,0.5)
        }
        #ManageP2-1::-webkit-scrollbar-track {
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
        	right : 0px;
        	top : -5px;
        }
        .span2:hover {
 			color:rgba(240, 203, 133,0.9);
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
        <section id="mainManage">
            <article id="ManageP1">
                <div id="ManageP1-1">
                    <div id="inputarea">
                    	<input type="hidden" name="crupType">
                        <div id="inputarea1">
                            <input type="text" name="staffName" id="staffName" style="text-align: center;">
                            <label for="staffName">직원명</label>
                        </div>
                        <div id="inputarea1">
                            <input type="text" name="staffMobile" id="staffMobile" style="text-align: center;">
                            <label for="staffMobile">연락처</label>
                        </div>
                        <div id="inputarea1">
                            <input type="text" name="staffId" id="staffId" style="text-align: center;">
                            <label for="staffId">직원ID</label>
                        </div>
                        <div id="inputarea1">
                            <input type="password" name="staffPw" id="staffPw" style="text-align: center;">
                            <label for="staffPw">Password</label>
                        </div>
                        <div id="inputarea1">
                            <select name="ManagePart" id="ManagePart">
                                <option value="">관리부서 선택</option>
                                <option value="FrontOffice">FrontOffice</option>
                                <option value="MemberManage">MemberManage</option>
                                <option value="RoomManage">RoomManage</option>
                                <option value="PostManage">PostManage</option>
                                <option value="Admin">Admin</option>
                            </select>
                        </div>
                        <div id="inputarea1">
                            <select name="ManageLevel" id="ManageLevel">
                                <option value="">권한레벨 선택</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                    </div>
                    <div id="buttonarea">
                        <div id="buttonarea1">
                            <button type="button" name="search">직원계정검색</button>
                        </div>
                        <div id="buttonarea1">
                            <button type="button" name="create">직원계정등록</button>
                        </div>
                        <div id="buttonarea1">
                            <button type="button" name="delete">직원계정삭제</button>
                        </div>
                        <div id="buttonarea1">
                            <button type="button" name="clear">초기화</button>
                        </div>
                    </div>
                </div>
            </article>
            <article id="ManageP2">
               	<p class='span2'>전체계정정보 불러오기</p>
                <div id="ManageP2-1">
                        <table id="ManageT1">
                            <thead>
                                <tr>
                                    <th>직원명</th>
                                    <th>직원ID</th>
                                    <th>Password</th>
                                    <th>연락처</th>
                                    <th>관리부서</th>
                                    <th>권한레벨</th>
                                    <th>계정생성일</th>
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
function search(){
	$.ajax({ type: "POST", 
		 url : "adminsearch",
		 async: true,
		 dataType: "json",
		 success : function(data, status, xhr) {
			 $('#ManageT1 tbody tr').remove();
			 $.each(data,function(ndx,value){
		 			name='<tr><td>'+value['emp_name']+'</td><td>'+value['emp_id']+
		 				 '</td><td>'+value['emp_pw']+'</td><td>'+value['emp_mobile']+
		 				 '</td><td>'+value['emp_part']+'</td><td>'+value['emp_level']+
		 				 '</td><td>'+value['emp_date']+'</td></tr>';
		 			$('#ManageT1 tbody').append(name);})}, 
		 error: function(jqXHR, textStatus, errorThrown) {
			 swal({title: "전체 직원계정목록 불러오기에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
			 console.log(jqXHR.responseText);
		 }});
}

$(document)
.ready(function(){
	$('input[name=crupType]').val("cr");
	search();
	return false;
})

$(document)
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

.on('click','.span2',function(){
	search();
})

.on('click','button[name=search]',function(){
	swal({
		  title:"검색할 종류를 고르십시오",
		  text:"입력하신 값으로 검색을 진행합니다.",
		  buttons: {staffName: {text: "직원명으로 검색",value: "staffName"},ManagePart: {text: "관리부서로 검색",value: "ManagePart"},
			  		cancel: true},
		}).then((PromiseResult)=> {
			if(PromiseResult=="staffName") {
				$.ajax({ type: "POST", 
					 url : "adminsearch1",
					 async: true,
					 dataType: "json",
					 data:{staffName:$('input[name=staffName]').val()},
					 success : function(data, status, xhr) {
						 $('#ManageT1 tbody tr').remove();
						 $.each(data,function(ndx,value){
					 			name='<tr><td>'+value['emp_name']+'</td><td>'+value['emp_id']+
					 				 '</td><td>'+value['emp_pw']+'</td><td>'+value['emp_mobile']+
					 				 '</td><td>'+value['emp_part']+'</td><td>'+value['emp_level']+
					 				 '</td><td>'+value['emp_date']+'</td></tr>';
					 			$('#ManageT1 tbody').append(name);})
					 	swal({title: "검색이 완료되었습니다.", timer: 2000, icon: "success",button:false});
					 	$('button[name=clear]').trigger('click');
					 }, 
					 error: function(jqXHR, textStatus, errorThrown) {
						 swal({title: "검색에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
						 console.log(jqXHR.responseText);
					 }});
			}else if(PromiseResult=="ManagePart") {
				$.ajax({ type: "POST", 
					 url : "adminsearch2",
					 async: true,
					 dataType: "json",
					 data:{ManagePart:$('select[name=ManagePart]').val()},
					 success : function(data, status, xhr) {
						 $('#ManageT1 tbody tr').remove();
						 $.each(data,function(ndx,value){
					 			name='<tr><td>'+value['emp_name']+'</td><td>'+value['emp_id']+
					 				 '</td><td>'+value['emp_pw']+'</td><td>'+value['emp_mobile']+
					 				 '</td><td>'+value['emp_part']+'</td><td>'+value['emp_level']+
					 				 '</td><td>'+value['emp_date']+'</td></tr>';
					 			$('#ManageT1 tbody').append(name);})
					 	swal({title: "검색이 완료되었습니다.", timer: 2000, icon: "success",button:false});
					 	$('button[name=clear]').trigger('click');
					 }, 
					 error: function(jqXHR, textStatus, errorThrown) {
						 swal({title: "검색에 실패하였습니다.",text:"잠시 후 다시 시도해 주십시오.", timer: 3000, icon: "error",button:false});
						 console.log(jqXHR.responseText);
					 }});
			}
		}) 	
})

.on('click','#ManageT1 tbody tr',function(){
	$("button[name=create]").text("직원계정수정")
	jb=0;
	$("#ManageT1 tbody tr:eq("+ind+")").css('font-weight','normal')
	ind = $(this).index();
	$("#ManageT1 tbody tr:eq("+ind+")").css('font-weight','bolder')
	$('input[name=staffId]').css("color","#fff");
	$('input[name=crupType]').val("up")
	$('input[name=staffName]').val($("#ManageT1 tbody tr:eq("+ind+") td:eq(0)").text())
	$('input[name=staffMobile]').val($("#ManageT1 tbody tr:eq("+ind+") td:eq(3)").text())
	$('input[name=staffId]').val($("#ManageT1 tbody tr:eq("+ind+") td:eq(1)").text())
	$('input[name=staffPw]').val($("#ManageT1 tbody tr:eq("+ind+") td:eq(2)").text())
	$('select[name=ManagePart] option[value='+$("#ManageT1 tbody tr:eq("+ind+") td:eq(4)").text()+']').prop('selected',true);
	$('select[name=ManageLevel] option[value='+$("#ManageT1 tbody tr:eq("+ind+") td:eq(5)").text()+']').prop('selected',true);
	$('input[name=staffName]').prop('readonly',true);
	$('input[name=staffId]').prop('readonly',true);
})

.on('change','input[name=staffId]',function(){
	$.ajax({ type: "POST", 
		 url : "adminsearchA",
		 async: true,
		 data:{staffId:$('input[name=staffId]').val()},
		 dataType: "text",
		 success : function(data, status, xhr) {
			 jb=data;
			 if(data==1){
				 $('input[name=staffId]').css("color","red");
			 }else{
				 $('input[name=staffId]').css("color","#fff");
			 }
		 }, 
		 error: function(jqXHR, textStatus, errorThrown) {
			 console.log(jqXHR.responseText);
		 }});
})

.on('keyup','input[name=staffMobile]',function(){
	let a = $('input[name=staffMobile]').val();
	if(!$.isNumeric($('input[name=staffMobile]').val())){
		$('input[name=staffMobile]').val("");
	}
	if(a.length>11){
		$('input[name=staffMobile]').val(a.substring(0,11));
	}
	var regExp = /^\d{3}\d{3,4}\d{4}$/;
	 if(!regExp.test($('input[name=staffMobile]').val())){
		 jb2=1
		 $('input[name=staffMobile]').css("color","red");
	 }else{
		 jb2=0
		 $('input[name=staffMobile]').css("color","#fff");
	 }
})


.on('click','button[name=create]',function(){
	if($('input[name=staffName]').val()==""){
		swal({title: "직원명을 입력해주세요.",timer: 2000,icon: "warning",button:false});
		$('input[name=memberName]').focus();
		return false
	}
	if($('input[name=staffMobile]').val()==""){
		swal({title: "직원 연락처를 입력해주세요",timer: 2000,icon: "warning",button:false});
		$('input[name=memberMobile]').focus();
		return false
	}
	if(jb2==1){
		swal({title: "연락처 형식이 틀렸습니다.",text:"01012345678 형식으로 입력해주세요",timer: 2000,icon: "warning",button:false});
		$('input[name=staffMobile]').focus();
		return false
	}
	if($('input[name=staffId]').val()==""){
		swal({title: "직원이 사용할 ID를 입력해주세요",timer: 2000,icon: "warning",button:false});
		$('input[name=memberID]').focus();
		return false
	}
	if(jb==1){
		swal({title: "직원 ID가 중복되었습니다.",text:"다른 ID로 입력후 다시 시도하십시오.",timer: 2000,icon: "warning",button:false});
		$('input[name=staffId]').focus();
		return false
	}
	if($('input[name=staffPw]').val()==""){
		swal({title: "직원ID의 Password를 입력해주세요",timer: 2000,icon: "warning",button:false});
		$('input[name=staffPw]').focus();
		return false
	}
	if($('select[name=ManagePart]').val()==""){
		swal({title: "계정의 관리부서를 선택해주세요",timer: 2000,icon: "warning",button:false});
		$('input[name=ManagePart]').focus();
		return false
	}
	if($('select[name=ManageLevel]').val()==""){
		swal({title: "계정의 권한레벨를 선택해주세요",timer: 2000,icon: "warning",button:false});
		$('input[name=ManageLevel]').focus();
		return false
	}
	if($('input[name=crupType]').val()=="cr"){
		swal("새로운 직원계정을 등록하시겠습니까?","입력하신 정보가 맞는지 꼭 확인해주세요", {
			  buttons: ["아니오", "예"],icon: "info"
			}).then((willDelete)=>{
				if (willDelete) {
					$.ajax({ type: "POST", 
						 	 url : "admininsert",
						 	 async: true,
						 	 data:{staffName:$('input[name=staffName]').val(),staffMobile:$('input[name=staffMobile]').val(),
						 		   staffId:$('input[name=staffId]').val(),staffPw:$('input[name=staffPw]').val(),
						 		   ManagePart:$('select[name=ManagePart]').val(),ManageLevel:$('select[name=ManageLevel]').val()},
						 	 success : function(data, status, xhr) {
						 		swal({title: "직원계정 등록이 완료되었습니다.", timer: 2000, icon: "success",button:false});
						 		search();
						 		$('button[name=clear]').trigger('click');
						 	 }, 
							 error: function(jqXHR, textStatus, errorThrown) {
								 swal({title: "등록에 실패하였습니다.",text:"입력정보를 확인하고 다시 시도하여 주십시오.", timer: 3000, icon: "error",button:false});
								 console.log(jqXHR.responseText); 
							 }});
				 }
			}) 
	}else {
		swal("계정정보를 변경하시겠습니까?","입력하신 정보가 맞는지 꼭 확인해주세요", {
			  buttons: ["아니오", "예"],icon: "info"
			}).then((willDelete)=>{
				if (willDelete) {
					$.ajax({ type: "POST", 
						 	 url : "adminupdate",
						 	 async: true,
						 	 data:{staffMobile:$('input[name=staffMobile]').val(),staffPw:$('input[name=staffPw]').val(),
						 		   ManagePart:$('select[name=ManagePart]').val(),ManageLevel:$('select[name=ManageLevel]').val(),staffId:$('input[name=staffId]').val()},
						 	 success : function(data, status, xhr) {
						 		swal({title: "고객정보 변경이 완료되었습니다.", timer: 2000, icon: "success",button:false});
						 		search();
						 		$('button[name=clear]').trigger('click');
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
	swal("선택한 계정정보를 삭제하시겠습니까?","계정정보를 삭제하시면 되돌릴 수 없습니다.", {
		  buttons: ["아니오", "예"],icon: "info"
		}).then((willDelete)=>{
			if (willDelete) {
				$.ajax({ type: "POST", 
					 	 url : "admindelete",
					 	 async: true,
					 	 data:{staffId:$('input[name=staffId]').val()},
					 	 success : function(data, status, xhr) {
					 		swal({title: "계정정보 삭제가 완료되었습니다.", timer: 2000, icon: "success",button:false});
					 		search();
					 		$('button[name=reset]').trigger('click');
					 	 }, 
						 error: function(jqXHR, textStatus, errorThrown) {
							 swal({title: "계정정보 삭제에 실패하였습니다.",text:"입력정보를 확인하고 다시 시도하여 주십시오.", timer: 3000, icon: "error",button:false});
							 console.log(jqXHR.responseText); 
						 }});
			 }
		}) 
})

.on('click','button[name=clear]',function(){
	$("button[name=create]").text("직원계정등록")
	$("#ManageT1 tbody tr:eq("+ind+")").css('font-weight','normal')
	jb=0;
	$('input[name=staffId]').css('color','#fff');
	$('input[name=crupType]').val("cr");
	$('input[name=staffName]').val("");
	$('input[name=staffMobile]').val("");
	$('input[name=staffId]').val("");
	$('input[name=staffPw]').val("");
	$('select[name=ManagePart]').val("");
	$('select[name=ManageLevel]').val("");
	$('input[name=staffName]').prop('readonly',false);
	$('input[name=staffId]').prop('readonly',false);
	return false;
})
</script>
</html>