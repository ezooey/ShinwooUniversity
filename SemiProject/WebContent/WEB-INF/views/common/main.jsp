<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="member.vo.Member,java.util.ArrayList" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>신우대학교 메인</title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="https://fontawesome.com/v5.15/icons/search?style=solid"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

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


	<link rel="stylesheet" type="text/css" href="/plugin/slick/slick.css" />
	<link rel="stylesheet" type="text/css" href="/plugin/slick/slick-theme.css" />

	<script type="text/javascript" src="/js/jquery.js"></script>
	<script type="text/javascript" src="/plugin/slick/slick.js"></script>

	<link rel="stylesheet" type="text/css"
		href="https://cdn.datatables.net/v/bs5/dt-1.11.3/datatables.min.css" />
	<script type="text/javascript" src="https://cdn.datatables.net/v/bs5/dt-1.11.3/datatables.min.js"></script>

	<link href="https://www.jqueryscript.net/css/jquerysctipttop.css">
	<script src="<%= request.getContextPath() %>/js/jquery-3.6.0.min.js"></script>


	<style>
		#slider {
			position: relative;
			overflow: hidden;
			margin: 20px auto 0 auto;
			border-radius: 4px;
			width: 300px;
			height: 300px;
		}

		#slider ul {
			position: relative;
			margin: 0;
			padding: 0;
			height: 200px;
			list-style: none;
			left: 0px;
		}

		#slider ul li {
			position: relative;
			display: block;
			float: left;
			margin: 0;
			padding: 0;
			width: 300px;
			height: 300px;
			background: #ccc;
			text-align: center;
			line-height: 300px;
		}

		a.prev,
		a.next {
			position: absolute;
			top: 40%;
			z-index: 999;
			display: block;
			padding: 4% 3%;
			width: auto;
			height: auto;
			background: #2a2a2a;
			color: #fff;
			text-decoration: none;
			font-weight: 600;
			font-size: 18px;
			opacity: 0.8;
			cursor: pointer;
		}

		a.prev:hover,
		a.next:hover {
			opacity: 1;
			-webkit-transition: all 0.2s ease;
		}

		a.prev {
			border-radius: 0 2px 2px 0;
		}

		a.next {
			right: 0;
			border-radius: 2px 0 0 2px;
		}

		body {
			line-height: 1.6
		}

		ul.tabs {
			margin: 0px;
			padding: 0px;
			list-style: none;
		}

		ul.tabs li {
			background: none;
			color: #222;
			display: inline-block;
			padding: 10px 15px;
			cursor: pointer;
		}

		.tab-content {
			display: none;
			padding: 5px;
		}

		ul.tabs li.current {
			background: #ededed;
			color: #222;
		}

		.tab-content.current {
			display: inherit;
		}

		#currentMenu {
			color: white;
			padding: 20px;
			font-size: 40px;
			font-weight: 700;
		}

		#login {
			margin: 20px;
		}

		.reqTitle {
			padding-top: 10px;
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
			padding: 40px;
		}

		.searchBar {
			padding-top: 10%;
			padding-left: 60%;
		}

		.paging1 {
			padding-left: 47%;
		}

		body {
			background-image: url('#');
			background-repeat: no-repeat;
			background-position: center;
			background-size: cover;
			margin: 0;
			padding: 0;
		}


		#wholewhole {
			width: auto;
			background-color: #6785FF;
		}

		#wholeslide-div {
			width: 1130px;
			height: 350px;
			padding-left: 100px;
			padding-right: 100px;
			background-color: #6785FF;
			margin: 0 auto;
		}

		#slider-div {
			width: 1130px;
			height: 300px;
			background-color: #6785FF;
			padding-top: 20px;
			padding-right: 0px;
			position: absolute;
			left: 50%;
			transform: translateX(-50%);
		}

		.bookimage {
			width: 95%;
			height: auto;
			margin-top: 35px;
			margin-left: 20px;
			max-width: 90%;
			height: auto;
			display: block;
			box-shadow: 0 11px 11px rgba(0, 0, 0, 0.22), 0 9px 9px rgba(0, 0, 0, 0.27);
			transition: all 0.3s cubic-bezier(.25, .8, .25, 1);
			border-radius: 6.5%;
		}

		.bookimage:hover {
			box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22);
			transform: scale(1.08);
			top: 0;
			left: 0;
			opacity: 0.915;
		}

		.book-div {
			width: 400px;
			height: 300px;
			padding: 0px 40px 0px 0px;
		}

		.center {
			text-align: center;
		}

		#searchForm {
			width: 430px;
			height: 50px;
			border: solid #6785FF 2px;
			position: absolute;
			left: 50%;
			transform: translateX(-50%);
		}

		#searchOption {
			width: 20px;
			height: 45px;
			border: 0px;
			padding-right: 30px;
			margin-top: 2px;
		}

		#keyword {
			width: 253px;
			height: 40px;
			border: 0px; 
			background: none;
			padding-left: 10px;
		}

		#searchButton {
			width: 60px;
			height: 45px;
			border: 0px;
		}

		#latestBook {
			display: none;
		}

		.order {
			cursor: pointer;
		}

		.left {
			padding-left: 20%;
		}

		.container {
			background: #f9f9ff;
		}

		ul.ul1 {
			list-style: none;
			width: 1000px;
			margin: 0 auto;
		}

		img.bookimg {
			padding-bottom: 10px;
			cursor: pointer;
			display: inline-block;
			margin: 0 auto;
			align: center;
			height: 230px;
			width: 150px;
		}

		li.booklist {
			padding-left: 35px;
			padding-right: 35px;
		}

		.listop {
			text-decoration-line: none;
			color: #666;
			font-weight: bolder;
			overflow: hidden;
			word-break: break-all;
			display: block;
			width: 170px;
		}

		.bookName {
			width: 148px;
			max-height: 30px;
		}

		.centerBook {
			display: flex;
			justify-content: center;
		}

		#newsdiv {
			padding-top: 500px;
		}

		#footerdiv {
			height: 200px;
			background: lightgray;
			text-align: center;
		}

		.back {
			background: #f9f8ff;
		}
		
		.title{
			color: black;
			cursor: pointer;
			overflow: hidden;
			word-break: break-all;
			display: block;
			width: 149px;
			text-align: center;
		}
		a.title:hover{
			color: #6785FF;
		}
		
		#popularLi, #popularLi2{
 			display: flex;
			justify-content: center;
		}
		#recentLi, #recentLi2{
			display: none;
			justify-content: center;
		}
		.orderBtn{
			cursor: pointer;
		}
	</style>
	<script src="slider.js"></script>
</head>

<body>
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
			<div id="wholewhole">
				<div id="wholeslide-div">
					<div id="slider-div">
						<div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book1.png"
									class="bookimage"></a></div>
						<div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book2.png"
									class="bookimage"></a></div>
						<div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book3.png"
									class="bookimage"></a></div>
						<div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book4.png"
									class="bookimage"></a></div>
						<div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book5.png"
									class="bookimage"></a></div>
						<div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book1.png"
									class="bookimage"></a></div>
						<div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book2.png"
									class="bookimage"></a></div>
						<div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book3.png"
									class="bookimage"></a></div>
						<div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book4.png"
									class="bookimage"></a></div>
						<div class="book-div"><a href="https://www.google.com"><img src="sample/image/book5.png"
									class="bookimage"></a></div>
					</div>
				</div>
			</div>
			<script>
				$(function () {
					$('#slider-div').slick({
						slide: 'div',
						infinite: true,
						slidesToShow: 3,
						slidesToScroll: 1,
						speed: 4000,
						arrows: true,
						dots: true,
						autoplay: true,
						autoplaySpeed: 5000,
						pauseOnHover: false,
						vertical: false,
						prevArrow: "<button type='button' class='slick-prev'>Previous</button>",
						nextArrow: "<button type='button' class='slick-next'>Next</button>",
						dotsClass: "slick-dots",
						draggable: true,

						responsive: [
							{
								breakpoint: 960,
								settings: {
									slidesToShow: 3
								}
							},
							{
								breakpoint: 768,
								settings: {
									slidesToShow: 2
								}
							}
						]
					});
				})

			</script>
			<br><br><br>

			
			<div id="searchForm">
				<select id="selectOption" >
					<option id="book_title" value="book_title" >도서명</option>
					<option id="author" value="author">저자</option>
				</select>
				<input type="search" id="keyword" name="q" value="">
				<button id="searchButton" type="button" title="검색" style="background:none;" onclick="search();">
					<i class="fas fa-search fa-lg" style="background:none; color:#6785FF;"></i>
				</button>
			</div>
			<br><br>
			<br><br>
			<script>
               function search(){
                  
                  var selectOption = document.getElementById("selectOption").value;
                  var keyword = document.getElementById("keyword").value;
                  location.href="<%= request.getContextPath()%>/searchBook.sr?category=" + selectOption + "&&kword=" + keyword;
                  
                  
               }
            
            </script>

<!-- 			<form name="bookList"> -->
			<div style="background: #fdfdff">
				<div id="listDiv" class="left">&nbsp;&nbsp;
					<a id="popOrder" class="orderBtn" style="padding-right: 5px;"><b>인기순</b></a>
					<a id="recOrder" class="orderBtn"><b>최신순</b></a>
				</div>
				<br>
				<script>
					$('#popOrder').click(function(){
						$('#popularLi').css('display', 'flex');
						$('#popularLi2').css('display', 'flex');
						$('#recentLi').css('display', 'none');
						$('#recentLi2').css('display', 'none');
					});
					$('#recOrder').click(function(){
						$('#popularLi').css('display', 'none');
						$('#popularLi2').css('display', 'none');
						$('#popularList2').css('padding-top', '0px');
						$('#recentLi').css('display', 'flex');
						$('#recentLi2').css('display', 'flex');
					});
						
				</script>
				<script>
					$(function(){
						$.ajax({
							url: "popularList.bo",
							success: function(data) {
								for(var i = 0; i < 4; i++){
									var li1 = "<ul class='ul'>";
									li1 += "<li class='booklist'>";
									li1 += "<a href='<%= request.getContextPath() %>/bookDetail.bo?bNo=" + data[i].bookNo + "'>";
									li1 += "<img class='bookimg' src='<%= request.getContextPath() %>/image/" + data[i].changeName + "'>";
									li1 += "</a><br>";
									li1 += "<span>";
									li1 += "<a class='title' href='<%= request.getContextPath() %>/bookDetail.bo?bNo=" + data[i].bookNo + "'>" + data[i].bookTitle + "</a>";
									li1 += "</span></li>";
									$('#popularLi').append(li1);
								}
								for(var i = 4; i < data.length; i++){
									var li2 = "<li class='booklist'>";
									li2 += "<a href='<%= request.getContextPath() %>/bookDetail.bo?bNo=" + data[i].bookNo + "'>";
									li2 += "<img class='bookimg' src='<%= request.getContextPath() %>/image/" + data[i].changeName + "'>";
									li2 += "</a><br>";
									li2 += "<span>";
									li2 += "<a class='title' href='<%= request.getContextPath() %>/bookDetail.bo?bNo=" + data[i].bookNo + "'>" + data[i].bookTitle + "</a>";
									li2 += "</span></li>";
									
									$('#popularLi2').append(li2);
								}
							},
							error: function(data) {
								console.log(data);
								alert(data);
							}
						});
					});
				</script>
				<script>
					$(function(){
						$.ajax({
							url: "recentList.bo",
							success: function(data) {
								for(var i = 0; i < 4; i++){
									var li1 = "<ul class='ul'>";
									li1 += "<li class='booklist'>";
									li1 += "<a href='<%= request.getContextPath() %>/bookDetail.bo?bNo=" + data[i].bookNo + "'>";
									li1 += "<img class='bookimg' src='<%= request.getContextPath() %>/image/" + data[i].changeName + "'>";
									li1 += "</a><br>";
									li1 += "<span>";
									li1 += "<a class='title' href='<%= request.getContextPath() %>/bookDetail.bo?bNo=" + data[i].bookNo + "'>" + data[i].bookTitle + "</a>";
									li1 += "</span></li>";
									$('#recentLi').append(li1);
								}
								for(var i = 4; i < data.length; i++){
									var li2 = "<li class='booklist'>";
									li2 += "<a href='<%= request.getContextPath() %>/bookDetail.bo?bNo=" + data[i].bookNo + "'>";
									li2 += "<img class='bookimg' src='<%= request.getContextPath() %>/image/" + data[i].changeName + "'>";
									li2 += "</a><br>";
									li2 += "<span>";
									li2 += "<a class='title' href='<%= request.getContextPath() %>/bookDetail.bo?bNo=" + data[i].bookNo + "'>" + data[i].bookTitle + "</a>";
									li2 += "</span></li>";
									
									$('#recentLi2').append(li2);
								}
							},
							error: function(data) {
								console.log(data);
								alert(data);
							}
						});
					});
				</script>
				<div id="popularList">
					<ul class='ul' id="popularLi">
					</ul>
				</div>
				<div style="padding-top: 20px;" id="popularList2">
					<ul class='ul' id="popularLi2">
					</ul>
				</div>
				<div id="recenctList">
					<ul class='ul' id="recentLi">
					</ul>
				</div>
				<div style="padding-top: 20px;" id="recenctList2">
					<ul class='ul' id="recentLi2">
					</ul>
				</div>
			</div>

<!-- 			</form> -->
			<br><br>
			<hr width=60%>
			<br><br>

			<!--  -->
			<section class="wantToWork-area back">
				<div class="container">
					<div class="row">
						<div class="col-md-3"><br>
							<div id="jquery-script-menu">
								<div class="jquery-script-center">
									<div class="jquery-script-ads">
										<script type="text/javascript">
										</script>
										<script type="text/javascript"
											src="https://pagead2.googlesyndication.com/pagead/show_ads.js">
											</script>
									</div>
								</div>
							</div>

							<div id="slider">
								<a href="javascript:;" class="next"></a>
								<a href="javascript:;" class="prev"></a>
								<ul>
									<li>
										<a href="http://www.yes24.com/Product/Goods/91065309">
											<img class="rebook" src="http://image.yes24.com/goods/91065309/M" alt="달러구트 꿈 백화점">
										</a>
									</li>
									<li style="background: #aaa;">
										<a href="http://www.yes24.com/Product/Goods/93888691">
											<img class="rebook" src="http://image.yes24.com/goods/93888691/M" alt="2030 축의 전환">
										</a>
									</li>
									<li>
										<a href="https://image.yes24.com/goods/102396082">
											<img class="rebook" src="https://image.yes24.com/goods/102396082/M" alt="메타버스가 만드는 가상경제 시대가 온다">
										</a>
									</li>
									<li style="background: #aaa;">
										<a href="https://image.yes24.com/goods/100458192/M">
											<img class="rebook" src="https://image.yes24.com/goods/100458192/M" alt="꼬리에 꼬리를 무는 그날 이야기">
										</a>
									</li>
								</ul>
							</div>
							<script>
								$("#slider").sliderNd({
									delay: 200,
									autoplay: true,
									navigation: true
								});
							</script>
						</div><br><br>
						<div class="col-md-9 mt-sm-20">
							<div class="container">
								<ul class="tabs">
									<li class="tab-link current" data-tab="tab-2">
										<h2><b>독후감</b></h2>
									</li>
									<li class="tab-link" data-tab="tab-1">
										<h2><b>공지사항</b></h2>
									</li>
								</ul>
								<div id="tab-2" class="tab-content current">
									<div class="whole-wrap">
										<div class="progress-table">
											<div class="table-head">
												<div class="serial">#</div>
												<div class="country">도서명</div>
												<div class="country">글제목</div>
												<div class="country">작성자</div>
												<div class="visit">조회수</div>
											</div>
											<div>
												<div class="table-row">
													<div class="serial">#</div>
													<div class="country">도서명</div>
													<div class="country">글제목</div>
													<div class="country">작성자</div>
													<div class="visit">조회수</div>
												</div>
												<div>
													<div class="table-row">
														<div class="serial">#</div>
														<div class="country">도서명</div>
														<div class="country">글제목</div>
														<div class="country">작성자</div>
														<div class="visit">조회수</div>
													</div>
													<div class="table-row">
														<div class="serial">#</div>
														<div class="country">도서명</div>
														<div class="country">글제목</div>
														<div class="country">작성자</div>
														<div class="visit">조회수</div>
													</div>
													<div class="table-row">
														<div class="serial">#</div>
														<div class="country">도서명</div>
														<div class="country">글제목</div>
														<div class="country">작성자</div>
														<div class="visit">조회수</div>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>
								<div id="tab-1" class="tab-content">
									<div class="whole-wrap">
										<div class="progress-table">
											<div class="table-head">
												<div class="serial">#</div>
												<div class="country">제목</div>
												<div class="country">작성시간</div>
											</div>
											<div>
												<div class="table-row">
													<div class="serial">#</div>
													<div class="country">도서명</div>
													<div class="country">글제목</div>

												</div>
												<div>
													<div class="table-row">
														<div class="serial">#</div>
														<div class="country">도서명</div>
														<div class="country">글제목</div>
													</div>
													<div class="table-row">
														<div class="serial">#</div>
														<div class="country">도서명</div>
														<div class="country">글제목</div>
													</div>
													<div class="table-row">
														<div class="serial">#</div>
														<div class="country">도서명</div>
														<div class="country">글제목</div>

													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="header-right d-none d-lg-block" style=" float: right;">
						<button type="button" class="genric-btn primary circle" id="login">전체보기 > </button>
					</div>
				</div>

			</section>
			<script>
				$(document).ready(function () {

					$('ul.tabs li').click(function () {
						var tab_id = $(this).attr('data-tab');
						$('ul.tabs li').removeClass('current');
						$('.tab-content').removeClass('current');
						$(this).addClass('current');
						$("#" + tab_id).addClass('current');
					})
				})

			</script>

			<!-- End Align Area -->
		</main>
		<%@ include file="../common/footer.jsp" %>
		<div id="back-top" >
   			<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
		</div>

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
<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push(['_setAccount', 'UA-36251023-1']);
	_gaq.push(['_setDomainName', 'jqueryscript.net']);
	_gaq.push(['_trackPageview']);
	(function () {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	})();
</script>

</html>