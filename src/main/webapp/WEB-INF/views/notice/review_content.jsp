<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<style>
* {margin: 0; padding: 0; list-style: none; text-decoration: none; font-family: 'Noto Sans KR', sans-serif;}
section {height: 75vh; }
#sectionlist {width: 70vw; height: inherit; margin: 0 auto; display: flex; justify-content: flex-start; align-items: center;}
#sidemenu {width: 20%; height: inherit; display: flex; justify-content: center; align-items: center; }
#sidemenu1 {width: 100%; height: 60%; background-color: wheat}
#mainarticle {width: 80%; height: inherit;margin:0 auto;}

/* 후기게시판 by hong */
/* 후기게시판 section 전체 크기 */
#client_question{width: 900px;height: 400px; margin: 30px auto;background-color: #fff9ef;border-radius: 5px;}
/* 후기게시판 제목 */
.main_title>h1{margin-left:20px;padding-top: 10px; padding-bottom:10px;width:850px; font-size: 25px;border-bottom: 3px solid  #696060;}
/* table CSS */
/* 전체 테이블 사이즈 */
#que_info{margin-left: 20px;margin-top:  20px; width: 850px;border-top: 1px solid black; border-spacing: 0;}
/* textarea 고정 */
#que_ct{width: 750px;height: 100px;resize: none;overflow: auto;}
/* table 밑줄/간격 */
#que_info td{border-bottom: 1px solid black;padding: 3px;}
/* 테이블 왼쪽 style */
.que_left{background-color: #fff9ef;width: 150px;text-align:right;}
/* (*)색깔 */
span{color: red;}
.red_color{color: red;font-size: 9px;width: 850px;margin-left: 20px;}
/* 답장보내기&삭제버튼 */
.btn{float: right;margin-right: 30px;margin-top: 15px;}
.btn input{margin-left: 10px; width: 40px;}
.btn a{color:black;}

#reply_box{width: 900px;margin: 0 auto;overflow: auto;}
</style>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
</head>
<body>
    <div class="allwraper">
           <header>
        <jsp:include page="../Main/header.jsp" />
    </header>
        <section>
                <!-- by hong -->
                <article id="mainarticle">
				<div class="mainarticle_wrap">
					<div id="client_question">
						<div class="main_title">
							<h1>후기게시판</h1>
						</div>
						<table id="que_info">
							<tr class="que_tr">
								<td class="que_left">&nbsp;번호 :</td>
								<td>${detail.review_id}</td>
							</tr>
							<tr class="que_tr">
								<td class="que_left">&nbsp;제목 :</td>
								<td>${detail.review_title}</td>
							</tr>
							<tr class="que_tr">
								<td class="que_left">&nbsp;내용 :</td>
								<td><textarea name="que_ct" id="que_ct">${detail.review_content}</textarea></td>
							</tr>
							<tr class="que_tr">
								<td class="que_left">&nbsp;성명 :</td>
								<td>${detail.review_name}</td>
							</tr>
						</table>
						<div class="btn">
							<a href='review'>목록</a> <a
								href='pw_page?review_id=${detail.review_id}' id="update">수정</a>
							<a href='review_delete?review_id=${detail.review_id}' id="delete">삭제</a>
						</div>
					</div>
 					<div id="reply_box">
			        <!-- Reply Form {s} -->
			        <div id="reply_save" class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">
			        <form:form name="form" id="form" role="form" modelAttribute="replyVO" method="post">
			            <form:hidden path="bid" id="bid" />
			            <div class="row">
			                <div class="col-sm-10">
			                    <form:textarea path="content" id="content" class="form-control"
			                        rows="3" placeholder="댓글을 입력해 주세요"></form:textarea>
			                </div>
			                <div class="col-sm-2">
			                    <form:input path="reg_id" class="form-control" id="reg_id" placeholder="댓글 작성자"></form:input>
			                    <button type="button" class="btn btn-sm btn-primary" id="btnReplySave" style="width: 80px; margin-top: 10px">저 장</button>
			                </div>
			            </div>
			        </form:form>
			    </div>
			    <!-- Reply Form {e} -->
			
			    <!-- Reply List {s}-->
			    <div id="reply_list" class="my-3 p-3 bg-white rounded shadow-sm"
			        style="padding-top: 10px">
			        <h6 class="border-bottom pb-2 mb-0">Reply list</h6>
			        <div id="replyList"></div>
			    </div>
			    <!-- Reply List {e}-->
			        </div>
			    </div>
				</div>
			</article>
        </section>
        <footer>
        <jsp:include page="../Main/footer.jsp" />
    </footer>
    </div>
</body>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script >

$('#delete').click(function(){
	if (confirm("삭제 하시겠습니까?") == true) {
		return true;
	} else {
		swal("취소 되었습니다.")
		return false;
	}
})
$(document).ready(function(){
	
	
	showReplyList();
	});
function showReplyList(){
		var url = "${pageContext.request.contextPath}/restBoard/list";
		var paramData = {"bid" : "${detail.review_id}"};
		$.ajax({
            type: 'POST',
            url: url,
            data: paramData,
            dataType: 'json',
            success: function(result) {
               	var htmls = "";
			if(result.length < 1){
				htmls.push("등록된 댓글이 없습니다.");
			} else {
	                    $(result).each(function(){
	                     htmls += '<div class="media text-muted pt-3" id="rid' + this.rid + '">';
	                     htmls += '<svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder:32x32">';
	                     htmls += '<title>Placeholder</title>';
	                     htmls += '<rect width="100%" height="100%" fill="#007bff"></rect>';
	                     htmls += '<text x="50%" fill="#007bff" dy=".3em">32x32</text>';
	                     htmls += '</svg>';
	                     htmls += '<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">';
	                     htmls += '<span class="d-block">';
	                     htmls += '<strong class="text-gray-dark">' + this.reg_id + '</strong>';
	                     htmls += '<span style="padding-left: 7px; font-size: 9pt">';
	                     htmls += '<a href="javascript:void(0)" onclick="fn_editReply(' + this.rid + ', \'' + this.reg_id + '\', \'' + this.content + '\' )" style="padding-right:5px">수정</a>';
	                     htmls += '<a href="javascript:void(0)" onclick="fn_deleteReply(' + this.rid + ')" >삭제</a>';
	                     htmls += '</span>';
	                     htmls += '</span>';
	                     htmls += this.content;
	                     htmls += '</p>';
	                     htmls += '</div>';
	                	});	//each end
			}
			$("#replyList").html(htmls);
                
            }	   // Ajax success end
		});	// Ajax end
	}
	
$(document).on('click', '#btnReplySave', function(){
	var replyContent = $('#content').val();
	var replyReg_id = $('#reg_id').val();
	var paramData = JSON.stringify({"content": replyContent
			, "reg_id": replyReg_id
			, "bid":'${detail.review_id}'
	});
	
	
	var headers = {"Content-Type" : "application/json"
			, "X-HTTP-Method-Override" : "POST"};
	
	$.ajax({
		url: "${pageContext.request.contextPath}/restBoard/saveReply"
		, headers : headers
		, data : paramData
		, type : 'POST'
		, dataType : 'text'
		, success: function(result){
			showReplyList();
			
			$('#content').val('');
			$('#reg_id').val('');
		}
		, error: function(error){
			console.log("에러 : " + error);
		}
	});
});


function fn_editReply(rid, reg_id, content){
	var htmls = "";
	htmls += '<div class="media text-muted pt-3" id="rid' + rid + '">';
	htmls += '<svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder:32x32">';
	htmls += '<title>Placeholder</title>';
	htmls += '<rect width="100%" height="100%" fill="#007bff"></rect>';
	htmls += '<text x="50%" fill="#007bff" dy=".3em">32x32</text>';
	htmls += '</svg>';
	htmls += '<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">';
	htmls += '<span class="d-block">';
	htmls += '<strong class="text-gray-dark">' + reg_id + '</strong>';
	htmls += '<span style="padding-left: 7px; font-size: 9pt">';
	htmls += '<a href="javascript:void(0)" onclick="fn_updateReply(' + rid + ', \'' + reg_id + '\')" style="padding-right:5px">저장</a>';
	htmls += '<a href="javascript:void(0)" onClick="showReplyList()">취소<a>';
	htmls += '</span>';
	htmls += '</span>';		
	htmls += '<textarea name="editContent" id="editContent" class="form-control" rows="3">';
	htmls += content;
	htmls += '</textarea>';
	htmls += '</p>';
	htmls += '</div>';
	
	$('#rid' + rid).replaceWith(htmls);
	$('#rid' + rid + ' #editContent').focus();
}
function fn_updateReply(rid, reg_id){
	var replyEditContent = $('#editContent').val();
	
	var paramData = JSON.stringify({"content": replyEditContent
			, "rid": rid
	});
	
	var headers = {"Content-Type" : "application/json"
			, "X-HTTP-Method-Override" : "POST"};
	
	$.ajax({
		url: "${updateReplyURL}"
		, headers : headers
		, data : paramData
		, type : 'POST'
		, dataType : 'text'
		, success: function(result){
                            console.log(result);
			showReplyList();
		}
		, error: function(error){
			console.log("에러 : " + error);
		}
	});
}
function fn_deleteReply(rid){
	var paramData = {"rid": rid};
	
	$.ajax({
		url: "${deleteReplyURL}"
		, data : paramData
		, type : 'POST'
		, dataType : 'text'
		, success: function(result){
			showReplyList();
		}
		, error: function(error){
			console.log("에러 : " + error);
		}
	});
}
</script>
</html>