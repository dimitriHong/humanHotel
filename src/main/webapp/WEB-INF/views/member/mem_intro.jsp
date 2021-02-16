<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Human Hotel</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <style>
        * {margin: 0; padding: 0; list-style: none; text-decoration: none; font-family: 'Noto Sans KR', sans-serif;} 
        section {height: 75vh;background-image: url("manuel-moreno-DGa0LQ0yDPc-unsplash (1).jpg");background-position:center;background-repeat: no-repeat;    opacity: 0.8; }
        #sectionlist {width: 70vw; height: inherit; margin: 0 auto; display: flex; justify-content: flex-start; align-items: center;position: relative;bottom:100px;}
        #sidemenu {width: 20%; height: inherit; display: flex; justify-content: center; align-items: center; }
        #sidemenu1 {width: 100%; height: 60%; background-color: wheat; position: relative; top: 80px;}
        #sidemenu1 ul li a{color: #A4814F; display:flex; justify-content: center;align-items: center;margin-bottom:20px;margin-top:90px;}
        #sidemenu1 ul li a:hover{background-color: rgb(238, 198, 146);}
        #sidemenu1 ul li a:visited {color:#8B4513;}
        /* 멤버쉽 특전 시작 */
        .mainarticle {width: 80%; height: inherit;position: relative;top:100px;} 
        h3{left:400px; position: absolute;top:140px;}
        .img{width:800px;height:150px;background-repeat: no-repeat;position: relative; left:20px;top:30px;background-position: center;background-size:cover;}
       
        .c1{ font-size: 20px;}
        /* 메인글 등급별 이름 */
        .silval,.gold,.diamond{width:230px;height:80px;border-style: solid ;border-color: #F0B469; display: block;position: relative;top: 10px;margin-left:30px; text-align: center;}
        .gold{ height:155px;}
        .diamond{height:250px;}
        .silval h2{position:absolute;top:50%;transform: translate(0, -50%)}     
        .silval h2{position:absolute;top:50%;left:50%;transform: translate(-50%, -50%)}
        .gold h2{position:absolute;top:50%;transform: translate(0, -50%)}
        .gold h2{position:absolute;top:50%;left:50%;transform: translate(-50%, -50%)}
        .diamond h2{position:absolute;top:50%;transform: translate(0, -50%)}
        .diamond h2{position:absolute;top:50%;left:50%;transform: translate(-50%, -50%)}
        /* 리스트 내용 */
        .silval_list,.gold_list,.diamond_list{width:800px ;border-top:solid #F0B469 ; justify-content: center;text-align: center;position: relative; left:268px;background-color: rgb(238, 198, 146);box-shadow: 2px 2px 2px 2px;} 
        .silval_list{height:80px; position:relative;bottom:485px;}
        .gold_list{ height:160px;position: relative;bottom:495px; }
        .diamond_list{position: relative;bottom:495px; }
        .ps{width:1050px;position: relative;bottom:490px;left:30px; background-color: rgb(238, 198, 146);box-shadow: 4px 4px 4px;}
    </style>
</head>
<body>
    <header>
        <jsp:include page="../Main/footer.jsp" />
    </header>
    <section>
        <div id="sectionlist">
            <article id="sidemenu">
                <div id="sidemenu1">
                    <ul>
                        <li class="c1">멤버십 소개</li>
                        <li class="c1"><a href="member/memberjoin">회원 가입</a></li>
                    </ul>
                    <!--이 안에 세부메뉴 목록 넣기-->
            
                </div>
            </article>
            <article class="mainarticle">
                <!-- 이 안에 본문내용 넣기-->
              
                <div class="sun"></div>
               <div class="img"></div> 
            <div class="body_sun">
            <div class="body_move">
                <div class="silval"><h2>silval</h2></div> 
               <div class="gold"><h2>gold</h2></div>
               <div class="diamond"><h2>diamond</h2></div>
               <div class="silval_list">
                <ul>
                    <li>기본 적립률 : 객실 이용 금액 3%, 식음 이용 금액 1% 적립</li>
                    <li> 1만 포인트 사용권 연 1회 제공 (서울/제주신라호텔 각 1매)</li>
                </ul>
               </div>
               <div class="gold_list">
                <ul>
                    <li>기본 적립률 + 포인트 추가 적립 (객실 1%, 식음 0.5%)</li>
                    <li>투숙 시 멤버스 스위트 박스 제공</li>
                    <li>식음업장 이용 금액 5% 할인</li>
                    <li>투숙 시 Laundry 이용 금액 10% 할인</li>
                    <li>객실 연 3회 업그레이드(1회 한하여 스위트 객실 업그레이드 제공)</li>
                    <li> 72시간 예약 개런티</li>
                </ul>

               </div>
               <div class="diamond_list">
                <ul>
                    <li>기본 적립률 + 포인트 추가 적립 (객실 2%, 식음 1%)</li>
                    <li>투숙 시 멤버스 스위트 박스 제공</li>
                    <li>식음업장 이용 금액 10% 할인</li>
                    <li>투숙 시 Laundry 이용 금액 15% 할인</li>
                    <li>투숙 시 무료 Laundry 서비스 (서울신라호텔: 정장 1벌, 셔츠 1개 다림질, 제주신라호텔 : 상,하의 각 1개 세탁)</li>
                    <li>객실 연 5회 업그레이드(1회 한하여 스위트 객실 업그레이드 제공)</li>
                    <li>Express Check-In/Check-Out</li>
                    <li>Early Check-In,(12시) Late Check-out (15시)</li>
                    <li>서울/제주신라호텔 라운지 무료 이용(동반 1인까지)</li>
                    <li>회원의 생일 투숙 시 케이크 제공</li>
                    <li>48시간 예약 개런티</li>
                    </ul>
                </div>
 
               </div>

               <div class="ps">
                    <ul>
                        <li>  ※ 신라리워즈 가입 고객께는 모바일 카드가 발급되며 모바일 카드는 로그인후 마이페이지에서 확인이 가능합니다.</li>
                        <li>  ※ 회원에게 제공되는 등급별 특전 사항은 투숙 호텔에 따라 상이하며, 호텔 상황에 따라 제한될 수 있습니다.</li>
                        <li>  ※ 등급에 따른 특전 내용은 각 투숙 기간 동안 1회에 한해 제공되며, 모든 할인 혜택은 다른 할인 혜택과 중복 제공되지 않습니다.</li>
                        <li>  ※ 회원 특전에 관하여 보다 자세한 내용은 신라리워즈 약관을 참고해 주십시오.</li>
                        <li>  ※ 제휴호텔 : 소주호텔 [Suzhou Jinji Lake Shilla Hotel (중국 쑤저우)]</li>
                    </ul>
                </div>     
            </div>
            </article>
        </div>
    </section>
    <footer>
      <jsp:include page="../Main/footer.jsp" />
    </footer>
</body>
</html>