<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<style>
* {margin: 0; padding: 0; list-style: none; text-decoration: none; font-family: 'Noto Sans KR', sans-serif;}
section {height: 75vh; }
#sectionlist {width: 70vw; height: inherit; margin: 0 auto; display: flex; justify-content: flex-start; align-items: center;}
#sidemenu {width: 20%; height: inherit; display: flex; justify-content: center; align-items: center; }
#sidemenu1 {width: 100%; height: 60%; background-color: wheat}
#mainarticle {width: 80%; height: inherit;margin:0 auto;padding-top:100px;}
#write{font-size:10px;float: right;margin-right: 80px;margin-bottom:30px; text-decoration: none;color: black;border: 1px solid black; width: 50px;padding:0 5px;text-align: center;background-color: wheat;}
#write:hover{color:red;}
/* 후기게시판 list */
.que_list{background-color: rgba(250, 235, 215, 0.6);width: 900px;height: 500px;border:1px solid black;margin:0 auto;overflow: auto;padding: 0 30px;border-radius: 5px;}
.table_list{margin: 0 auto; background-color:white;margin-bottom:10px;}
.table_list td{width: 100px;text-align: center;}
.title{background-color: wheat;}
#title{width: 400px;}
#paginationBox{clear: both; margin-left:200px;}
.main_title>h1{margin:0 auto;padding-top: 10px; padding-bottom:10px;width:700px; font-size: 25px;border-bottom: 3px solid  #696060;}

</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<script type="text/javascript">
//이전 버튼 이벤트
function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "${pageContext.request.contextPath}/notice/review";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}
  //페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "${pageContext.request.contextPath}/notice/review";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;	
	}
	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "${pageContext.request.contextPath}/notice/review";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}
</script>
<body>
    <div class="allwraper">
            <header>
       <jsp:include page="../Main/header.jsp" />
    </header>
        <section>
                <article id="mainarticle">
				<div class="que_list">
					<div class="main_title">
                        <h1>후기 게시판</h1>
                     </div><br>
					<table border="1" class="table_list">
						<tr>
							<td class="title">No</td>
							<td id="title" class="title">제목</td>
							<td class="title">작성자</td>
							<td class="title">조회수</td>
						</tr>
						<c:forEach var="i" items="${list}">
							<tr>
								<td>${i.review_id}</td>
								<td><a href="review_detail?review_id=${i.review_id}">${i.review_title}</a></td>
								<td>${i.review_name}</td>
								<td>${i.review_hit}</td>
							</tr>
						</c:forEach>
					</table>
					<a href='review_write' id="write">글쓰기</a><br>
					
					<!-- 페이징 start -->
					<div id="paginationBox">
						<ul class="pagination">
							<c:if test="${pagination.prev}">
								<li class="page-item"><a class="page-link" href="#"
									onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>
							</c:if>

							<c:forEach begin="${pagination.startPage}"
								end="${pagination.endPage}" var="idx">
								<li
									class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a
									class="page-link" href="#"
									onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')">
										${idx} </a></li>
							</c:forEach>

							<c:if test="${pagination.next}">
								<li class="page-item"><a class="page-link" href="#"
									onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')">Next</a></li>
							</c:if>
						</ul>
					</div>
					<!-- 페이징 end-->
				</div>
			</article>
        </section>
        <footer>
        <jsp:include page="../Main/footer.jsp" />
    </footer>
    </div>
</body>
</html>