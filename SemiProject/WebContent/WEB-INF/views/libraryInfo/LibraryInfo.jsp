<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>도서관 안내</title>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0527d6f2f395b41b673b23327aa137d2"></script>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="assets/css/gijgo.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/animated-headline.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/all.min.css">

    <style>
    
    table.type03 {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  border-top: 1px solid #ccc;
  border-left: 3px solid #369;
  margin : 20px 10px;
}
table.type03 th {
  width: 147px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #153d73;
  border-right: 1px solid #ccc;
  border-bottom: 1px solid #ccc;

}
table.type03 td {
  width: 349px;
  padding: 10px;
  vertical-align: top;
  border-right: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}
        #currentMenu {
            color: white;
            padding: 20px;
            padding-left: 2.5%;
            font-size: 30px;
            font-weight: 700;
        }

        #login {
            margin: 20px;
        }

        .reqTitle {
            padding-top: 5px;
            padding-bottom: 3px;
            display: block;
        }

        .bottomBtn {
            float: right;
            padding-top: 20px;
        }
        .bottomBtn input {
            margin: 10px;
        }

        .noneList {
            list-style: none;
        }

        .fa-check-circle {
            color: #6785FF;
        }

        .section-top-border {
            padding-top: 30px;
            padding-bottom: 30px;
        }
        
        #homeNav{padding-left: 150px; padding-top: 15px;}
        #homeNav>a{color: #666;}
        .bookInfo{padding-left: 150px; padding-top: 25px; position: relative;}
        #detail_simple{position: relative;}
        #detail_simple>a{position: absolute;}
        #ebookTag{
        	cursor: default;
        	font-size: 13px;
	        text-align: center; 
	        width: 75px; 
	        height: 23px; 
	        color: white; 
	        background: rgba(102, 102, 102, 0.7); 
	        z-index: 999;
        }
        #bookName{
        	padding-left: 330px; 
        	text-decoration: none; 
        	margin-bottom: 30px;
        }
        #title{color: black; margin-bottom: 0px;}
        .simpleInfo{
        	font-size: 13px; 
        	color: #666;
        	cursor: default;
        }
        #epub{
        	text-align: center;
        	display: inline-block;
        	width: 40px;
        	border-radius: 5px;
        	font-size: 8px; 
        	background: lightgray; 
        	color: black;
        	cursor: default;
        }
        #borrow{
        	text-align: center;
        	display: inline-block;
        	width: 120px;
        	height: 42px;
        	padding-top: 10px;
        	padding-bottom: 10px;
        	margin-top: 25px;
        	border-radius: 5px;
        	background: #6785FF;
        	color: white;
        	font-size: 15px;
			font-weight: bold;
			cursor: pointer;
			border: 1px solid dimgray;
        }
        #count{
        	display: inline-block;
        	text-align: center;
        	margin-left: 15px;
        	padding-top: 10px;
        	padding-bottom: 10px;
        	padding-left: 10px;
        	padding-right: 10px;
        	border-radius: 5px;
        	border: 1px solid gray;
        	font-size: 15px;
         	font-weight: bold;
         	background: lightgray;
        	color: dimgray;
        	cursor: default;
        }
        #tabBar{
        	position: relative; 
        	display: inline-block; 
        	text-align: center; 
        	margin: 0 auto;}
        #barLi{list-style: none; display: inline-block; margin: 0 auto;}
        #tab1{float: left;}
        #bookIntro{
        	display: inline-block; 
        	width: 100px;
        	padding-top: 7px;
        	padding-bottom: 7px;
        	float: left;
        	background: #6785ff;
        	color: white;
        	font-weight: bold;
        	
        	border-radius: 5px;
        	cursor: default;
        }
        #contents{
        	background: #f8f8f8;
        	color: dimgray;
        }
        #bookIntro{border: 2px solid lightgray;}
        #introduce{
        	margin-top: 30px;
        	margin-left: 150px;
        	margin-right: 150px;
        	display: flex;
  			justify-content: center;
        	padding-bottom: 25px;
        	text-align: left;
        	color: dimgray;
        	border: 0px;
        }
        #separate{
        	text-align: center;
        	margin: 0px auto;
        	width: 1000px;
        	color: #6785ff;
        }
        hr{border-bottom: #888;}
        
        

    </style>
</head>

 <body onload="initialize()">
    <!-- ? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/loder.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
    <%@ include file="../common/header.jsp" %>
    <main>
        <!--? Hero Start -->
        <div class="slider-area2 section-bg2 hero-overly" style="background-color: #6785FF; height: 100px;">
            <div class="slider-height2 d-flex align-items-center" style="background-color: #6785FF; height: 100px;">
                <h2 id="currentMenu">도서관 소개</h2>
            </div>
        </div>
        
		<br>
		<br>
		<br>
		<br>
		
		<div class="container">
		<div class="row">
		<div class="section-tittle text-center mb-55">
               <h2>신우 대학교 </h2>
             </div>
			<div class="section-top-border text-right">
					<h3 class="mb-30"><B>신우대학교 Vision</B></h3>
						<div class="row">
												<div class="col-md-9">
													<p class="text-right">Over time, even the most sophisticated, memory packed computer can begin
														대한민국의 IT기술의 변화를 선도하여 IT인력양성의 기준을 제시합니다.
														1998년, 경실련Hitel 정보교육원으로 시작했던 KH정보교육원은 국제경쟁력을 갖춘 IT기술자 양성교육을 실현할 수 있는 평생교육시스템을 구축해왔습니다.
														IT인재양성을 위해 달려온 KH정보교육원은 그 공로를 인정받아 2016년 노동부장관상을 수상하며 대한민국을 대표하는 IT교육기관으로 성장했습니다.
														KH정보교육원은 여기에 머무르지 않고 더 높은 수준의 IT교육환경을 위해 힘찬 도약을 하고 있습니다.</p>
												</div>
												
												<br>
												
												<h3 class="mb-30"><B>신우대학교 MISSION</B></h3>
												<div class="row">
												<div class="col-md-9">
												<p class="text-right">기술교육을 통해 최적화된 인재양성
													'정부,기업'의 참여와 협력을 통해 실업극복과
													경제 활성화를 위한 정보기술 전문 교육의
													새로운 협력모델 창출
													고급기술교육을 통해 전문인 양성

													전문적인 기술교육훈련을 통해 국가사회 발전과
													근로자의 자아실현에 이바지하며 전문인 양성과
													취업알선 및 실업에 관한 다양한 사업과 연구를 지속
													
													
												</p>
												</div>
												
												<div class="col-md-3">
													<img src="https://www.iei.or.kr/resources/images/main/main_renewal/sub/sub02/2020-2016/2020_img.jpg" alt="" class="img-fluid">
												</div>
											</div>
										</div>
		
		<div class="section-tittle text-center mb-55">
                            <span class="element">소개</span>
                            <h2>찾아오시는 길</h2>
                        </div>
		
    	<div id="map" style="width:100%; height:400px; text-align : center"></div>
    	
			
        <script>
        var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
        var options = { //지도를 생성할 때 필요한 기본 옵션
        	center: new kakao.maps.LatLng(37.499004439707626, 127.0329105219902), //지도의 중심좌표.
        	level: 3 //지도의 레벨(확대, 축소 정도)
        };
        var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
        
        
        var markerPosition  = new kakao.maps.LatLng(37.499004439707626, 127.0329105219902); 

     // 마커를 생성합니다
     var marker = new kakao.maps.Marker({
         position: markerPosition
     });

     // 마커가 지도 위에 표시되도록 설정합니다
     marker.setMap(map);
     
        </script>        
        <br>
		<br>
		<div class="guide">
		<div class="guideBox">
		</div>
		<div class="guideContent">
     	</div>
     	<table class="type03" style="width:100%;">
					<tr>
						<th >주소</th>
						<td>신우대학교는 지하철 2호선 역삼역에 인근에 위치하고 있으며, 역삼역 지하철에서 도보로 5~10분이 소요됩니다.</td>
					</tr>
					<tr>
						<th scope="row" >주소</th>
						<td >서울특별시 강남구 테헤란로 14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F </td>
					</tr>
					<tr>
						<th scope="row" >전화번호</th>
						<td>T: 1544-9970 / F: 02-562-2378</td>
					</tr>
				
			</table>
			</div>
		
		<br>
		<br>
		
		 
         <div class="section-tittle text-center mb-55">
             <span class="element">도서 이용</span>
                <h2>대출 및 반납</h2>
         </div> 
         <table class="type03" style="width: 100%"> 
        			
        			<tr>	
						<th>대출방법</th>
						<td>홈페이지에서 도서를 검색한 후 도서상태 및 대출 가능여부를 확인합니다.
							로그인 후 학번을 입력후에 대출받습니다.
							대출시 마이페이지에서 본인의 대출내역과 반납예정일등을 모니터에서 직접 확인합니다.
							도서 반납은 14일 후 자동으로 반납됩니다. 
						</td>
					</tr>	
        			 <tr>
        			 	<th>셀프반납 </th>
						<td>이용방법 : 로그인 후   > 마이페이지  > 대출한 도서 리스트 확인  > 대출 신청
						</td>
					</tr>
					<tr>
						<th>도서 신청 </th>
						<td>희망 도서 신청 권수 1인당 월 1권, 1년에 10권으로 제한  </td>
					</tr>
					<tr>	
						<th>희망 도서 진행 절차 </th>
						<td>신청한 도서가 절차를 거쳐 신청이 승인되는 경우 신청자에게 대출 우선권 부여</td>
					</tr>	
        	 </table>
        </div>
	</div>            
             
        <!-- End Align Area -->
    </main>
    <footer>
        <!-- Footer Start-->
        <div class="footer-area footer-padding">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="single-footer-caption mb-30">
                                <!-- logo -->
                                <div class="footer-logo mb-35">
                                    <a href="index.html"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                                </div>
                                <div class="footer-tittle">
                                    <div class="footer-pera">
                                        <p>(C)SHINWOO UNIVERSITY LIBRARY ALL RIGHTS RESERVED</p>
                                    </div>
                                </div>
                                <!-- social -->
                                <div class="footer-social">
                                    <a href="#"><i class="fab fa-twitter"></i></a>
                                    <a href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                    <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Services </h4>
                                <ul>
                                    <li><a href="#">- 주요 전화번호</a></li>
                                    <li><a href="#">- 개인정보처리방침</a></li>
                                    <li><a href="#">- 무단수집거부</a></li>
                                    <li><a href="#">- 원격지원</a></li>
                                    <li><a href="#">- 찾아오는길</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Contact</h4>
                                <ul>
                                    <li class="number"><a href="#">(02) 123-4567</a></li>
                                    <li><a href="#">shinwoo@university.kr</a></li>
                                    <li><a href="#">서울시 강남구 역삼로</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer-bottom area -->
        <div class="footer-bottom-area section-bg2" data-background="assets/img/gallery/footer-bg.png">
            <div class="container">
                <div class="footer-border">
                    <div class="row d-flex align-items-center">
                        <div class="col-xl-12 ">
                            <div class="footer-copy-right text-center">
                                <p>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;
                                    <script>document.write(new Date().getFullYear());</script> All rights reserved |
                                    This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a
                                        href="https://colorlib.com" target="_blank">Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End-->
    </footer>
    <!-- Scroll Up -->
    <div id="back-top">
        <a title="1:1 문의" href="#"><i class="fas fa-question"></i></a>
    </div>
    <script>
        $(function () {
            var now = new Date();
            var year = now.getFullYear();
            var month = now.getMonth() + 1;
            var date = now.getDate();
            $('input[name=reqDate]').val(year + '-' + month + '-' + date);
            console.log(now);
        });
    </script>
    <!-- JS here -->

    <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="./assets/js/popper.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="./assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="./assets/js/owl.carousel.min.js"></script>
    <script src="./assets/js/slick.min.js"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="./assets/js/wow.min.js"></script>
    <script src="./assets/js/animated.headline.js"></script>
    <script src="./assets/js/jquery.magnific-popup.js"></script>

    <!-- Date Picker -->
    <script src="./assets/js/gijgo.min.js"></script>
    <!-- Nice-select, sticky -->
    <script src="./assets/js/jquery.nice-select.min.js"></script>
    <script src="./assets/js/jquery.sticky.js"></script>

    <!-- counter , waypoint,Hover Direction -->
    <script src="./assets/js/jquery.counterup.min.js"></script>
    <script src="./assets/js/waypoints.min.js"></script>
    <script src="./assets/js/jquery.countdown.min.js"></script>
    <script src="./assets/js/hover-direction-snake.min.js"></script>

    <!-- contact js -->
    <script src="./assets/js/contact.js"></script>
    <script src="./assets/js/jquery.form.js"></script>
    <script src="./assets/js/jquery.validate.min.js"></script>
    <script src="./assets/js/mail-script.js"></script>
    <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

    <!-- Jquery Plugins, main Jquery -->
    <script src="./assets/js/plugins.js"></script>
    <script src="./assets/js/main.js"></script>
    <script src="./assets/js/all.min.js"></script>

</body>

</html>