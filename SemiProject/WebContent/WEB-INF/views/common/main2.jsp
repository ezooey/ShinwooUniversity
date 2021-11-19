<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.vo.Member,java.util.ArrayList, write.vo.*"%>
 <%
	Member loginUser= (Member)session.getAttribute("loginUser");
    ArrayList<Write>list =(ArrayList)request.getAttribute("list");
%>
<!doctype html>
<html class="no-js">

<head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://fontawesome.com/v5.15/icons/search?style=solid"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>

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
  
  
	<link rel="stylesheet" type="text/css" href="/plugin/slick/slick.css"/>
	<link rel="stylesheet" type="text/css" href="/plugin/slick/slick-theme.css"/>

	<script type="text/javascript" src="/js/jquery.js"></script>
	<script type="text/javascript" src="/plugin/slick/slick.js"></script>
	
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs5/dt-1.11.3/datatables.min.css"/>
	<script type="text/javascript" src="https://cdn.datatables.net/v/bs5/dt-1.11.3/datatables.min.js"></script>
	
	<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" >
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" ></script>
	<style>


		#slider {position: relative;overflow: hidden;margin: 20px auto 0 auto;border-radius: 4px;width: 300px;height: 300px;}
		#slider ul {position: relative;margin: 0;padding: 0;height: 200px;list-style: none;left: 0px;}
		#slider ul li {position: relative;display: block;float: left;margin: 0;padding: 0;width: 300px;height: 300px;background: #ccc;text-align: center;line-height: 300px;}
		a.prev, a.next {position: absolute;top: 40%;z-index: 999;display: block;padding: 4% 3%;width: auto;height: auto;background: #2a2a2a;color: #fff;text-decoration: none;font-weight: 600;font-size: 18px;opacity: 0.8;cursor: pointer;}
		a.prev:hover, a.next:hover {opacity: 1;-webkit-transition: all 0.2s ease;}
		a.prev {border-radius: 0 2px 2px 0;}
		a.next {right: 0;border-radius: 2px 0 0 2px;}

	    
		body{
			line-height: 1.6
		}
		
		ul.tabs{
			margin: 0px;
			padding: 0px;
			list-style: none;
		}
		ul.tabs li{
			background: none;
			color: #222;
			display: inline-block;
			padding: 10px 15px;
			cursor: pointer;
		}
		
		.tab-content{
			display: none;
			padding: 15px;
		}
		
		.tab-content.current{
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
        
        .searchBar{
        	padding-top: 10%;
        	padding-left: 60%;
        }
        .paging1{
        	padding-left: 47%;
        }
        body {background-image: url('#');
  		background-repeat: no-repeat;
  		background-position: center;
  		background-size: cover;
      	margin: 0;
    	padding: 0;}
	
	
	#wholewhole{width:auto; background-color: #2980B9;}
	#wholeslide-div{width:1130px; height:350px; padding-left: 100px; padding-right: 100px;background-color: #2980B9;margin: 0 auto;}
	#slider-div{width:1130px; height:300px; background-color:#2980B9; padding-top:20px; padding-right:0px;}
	.bookimage{width:95%; height:auto; margin-top:35px; margin-left:20px;  max-width: 90%; height:auto; display: block;
	 			box-shadow: 0 11px 11px rgba(0,0,0,0.22), 0 9px 9px rgba(0,0,0,0.27);
  				transition: all 0.3s cubic-bezier(.25,.8,.25,1);
  				border-radius: 6.5%;
  			}
  	.bookimage:hover{box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22); transform:scale(1.08); top: 0; left: 0; opacity: 0.915;}
	.book-div{width:400px; height:300px; padding:0px 40px 0px 0px;}
	
	.center{text-align: center;}
	#searchForm{display: inline-block; width: 430px; height: 40px; border: solid #aacec2 4px;}
	#searchOption{width: 20%; height: 40px; border: 0px; padding-right: 14px;}
	#searchText{width:60%; height: 40px; border: 0px; background: none;}
	#searchButton{width: 60px; height: 40px; border: 0px;}
	#latestBook{display: none;}
	.order{cursor: pointer;}
	.left{padding-left: 20%;}
	
	.container{background:  f9f9ff;}
	
  	ul.ul1{list-style: none; width: 1000px; margin: 0 auto;}
	img.bookimg{
		padding-bottom: 10px; 
		cursor: pointer; 
		display: inline-block; 
		margin: 0 auto; 
		max-width: 100%;
		align: center;
		width: 150px; height: 230px;
	}
	li.booklist{display: list-item; float: left; width: 25%; padding-top: 10px;}
	.listop{
		text-decoration-line: none; 
		color: #666; 
		font-weight: bolder; 
		overflow: hidden; 
		word-break: break-all;
	  	display: block;
		width: 170px;
	}
	.bookName{width:148px; max-height: 30px;}
	.centerBook{justify-content: center; padding: 0px; margin: 0 auto;}
	
	#newsdiv{padding-top : 500px;}
	#footerdiv{height:200px; background:lightgray; text-align:center;}
        
        
        
        
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
    <header>
        <!-- Header Start -->
        <div class="header-area">
            <div class="main-header header-sticky">
                <!-- Logo -->
                <div class="header-left">
                    <div class="logo">
                        <a href="index.html"><img src="assets/img/logo/logo.png" alt=""></a>
                    </div>
                    <div class="menu-wrapper  d-flex align-items-center">
                        <!-- Main-menu -->
                        <div class="main-menu d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="index.html">도서관 소개</a></li>
                                    <li><a href="about.html">도서 신청 확인</a></li>
                                    <li><a href="services.html">도서 검색</a></li>
                                    <li><a href="contact.html">회원 목록</a></li>
                                    <li><a href="contact.html">대출 도서 목록</a></li>
                                    <li><a href="contact.html">도서관리</a></li>
                                    <li><a href="blog.html">독후감</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="header-right d-none d-lg-block">
                    <a href="#" class="header-btn1"><img src="assets/img/icon/bell.png" alt=""></a>
                    <button type="button" class="genric-btn primary circle" id="login">로그아웃</button>
				</div>
			</div>	
		</div>		
        <!-- Header End -->
    </header>
	<main>
   		<div id="wholewhole">
   			<div id = "wholeslide-div">
        		<div id="slider-div">
        		<div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book1.png" class="bookimage"></a></div>
        		<div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book2.png"class="bookimage"></a></div>
        		<div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book3.png"class="bookimage"></a></div>
	            <div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book4.png"class="bookimage"></a></div>
	            <div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book5.png"class="bookimage"></a></div>
	            <div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book1.png"class="bookimage"></a></div>
	            <div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book2.png"class="bookimage"></a></div>
	            <div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book3.png"class="bookimage"></a></div>
	            <div class="book-div"><a href="https://www.naver.com"><img src="sample/image/book4.png"class="bookimage"></a></div>
	            <div class="book-div"><a href="https://www.google.com"><img src="sample/image/book5.png"class="bookimage"></a></div>
       			</div>
   			</div>
   		</div>
	<script>
    $(function(){
      $('#slider-div').slick({
          slide: 'div',      
          infinite : true,      
          slidesToShow : 3,        
          slidesToScroll : 1,        
          speed : 4000,    
          arrows : true,        
          dots : true,       
          autoplay : true,            
          autoplaySpeed : 5000,        
          pauseOnHover : false,      
          vertical : false,        
          prevArrow : "<button type='button' class='slick-prev'>Previous</button>",      
          nextArrow : "<button type='button' class='slick-next'>Next</button>",      
          dotsClass : "slick-dots",    
          draggable : true,     
          
          responsive: [ 
              {  
                  breakpoint: 960, 
                  settings: {
                      slidesToShow:3
                  } 
              },
              { 
                  breakpoint: 768,
                  settings: {    
                      slidesToShow:2
                  } 
              }
          ]

      });
    })
    
	</script>
	<br><br><br>
		
	<form class="center" name="search">
	<div id="searchForm" class="center">
		<select id="searchOption">
			<option value="title" selected>도서명</option>
			<option value="author">저자</option>
		</select>
		<input type="search" id="searchText">
		<button id="searchButton" type="submit" title="검색" style="background:none;">
			<i class="fas fa-search fa-lg" style="background:none; color:#2980b9;"></i>
		</button>
	</div>
	<br><br>
	<hr width=60%>
	</form>
	<br><br>
	
	
	<form name="bookList">
		<div id="listDiv" class="left">
			<a onclick="bookOrder(this);" class="order"><b>인기순</b></a>&nbsp;
			<a onclick="bookOrder(this);" class="order"><b>최신순</b></a>
			<script>
				function bookOrder(book){
					if(book.innerText == "인기순"){
						document.getElementById("bestBook").style.display = "block";
						document.getElementById("latestBook").style.display = "none";
					} else if(book.innerText == "최신순") {
						document.getElementById("bestBook").style.display = "none";
						document.getElementById("latestBook").style.display = "block";
					}
						
				}
			</script>
		</div>
		<br>
		<div id="bestLatest">
			<div id="bestBook" class="centerBook">
				<ul class="ul1">
					<li class="booklist">
						<a class="listop" href="http://www.yes24.com/Product/Goods/91065309">
							<img class="bookimg" src="http://image.yes24.com/goods/91065309/M" alt="달러구트 꿈 백화점"><br>
						</a>
						<span class="bookName">
						<a class="listop" href="http://www.yes24.com/Product/Goods/91065309">
							달러구트 꿈 백화점
						</a>
						</span>
					</li>
					<li class="booklist">
						<a href="http://www.yes24.com/Product/Goods/93888691">
							<img class="bookimg" src="http://image.yes24.com/goods/93888691/M" alt="2030 축의 전환"><br>
						</a>
						<span class="bookName">
							<a class="listop" href="http://www.yes24.com/Product/Goods/93888691">2030 축의 전환</a>
						</span>
					</li>
					<li class="booklist">
						<a href="http://www.yes24.com/Product/Goods/67362730">
							<img class="bookimg" src="http://image.yes24.com/goods/67362730/M" alt="해커스 토익 기출 보카"><br>
						</a>
						<span class="bookName">
							<a class="listop" href="http://www.yes24.com/Product/Goods/67362730">해커스 토익 기출 보카</a>
						</span>
					</li>
					<li class="booklist">
						<a href="http://www.yes24.com/Product/Goods/16384156">
							<img class="bookimg" src="http://image.yes24.com/goods/16384156/M" alt="이토록 공부가 재미있어지는 순간"><br>
						</a>
						<span class="bookName">
						<a class="listop" href="http://www.yes24.com/Product/Goods/16384156">이토록 공부가 재미있어지는 순간</a>
						</span>
						<br>
					</li>
					<li class="booklist">
						<a href="http://www.yes24.com/Product/Goods/91065309">
							<img class="bookimg" src="http://image.yes24.com/goods/91065309/M" alt="달러구트 꿈 백화점"><br>
						</a>
						<span class="bookName">
						<a class="listop" href="http://www.yes24.com/Product/Goods/91065309">
							달러구트 꿈 백화점
						</a>
						</span>
					</li>
					<li class="booklist">
						<a href="http://www.yes24.com/Product/Goods/93888691">
							<img class="bookimg" src="http://image.yes24.com/goods/93888691/M" alt="2030 축의 전환"><br>
						</a>
						<span class="bookName">
							<a class="listop" href="http://www.yes24.com/Product/Goods/93888691">2030 축의 전환</a>
						</span>
					</li>
					<li class="booklist">
						<a href="http://www.yes24.com/Product/Goods/67362730">
							<img class="bookimg" src="http://image.yes24.com/goods/67362730/M" alt="해커스 토익 기출 보카"><br>
						</a>
						<span class="bookName">
							<a class="listop" href="http://www.yes24.com/Product/Goods/67362730">해커스 토익 기출 보카</a>
						</span>
					</li>
					<li class="booklist">
						<a href="http://www.yes24.com/Product/Goods/16384156">
							<img class="bookimg" src="http://image.yes24.com/goods/16384156/M" alt="이토록 공부가 재미있어지는 순간"><br>
						</a>
						<span class="bookName">
							<a class="listop" href="http://www.yes24.com/Product/Goods/16384156">이토록 공부가 재미있어지는 순간</a>
						</span>
					</li>
				</ul>
			</div>
			<div id="latestBook" class="centerBook">
				<ul class="ul1">
					<li class="booklist">
						<a href="http://www.yes24.com/Product/Goods/16384156">
							<img class="bookimg" src="http://image.yes24.com/goods/16384156/M" alt="이토록 공부가 재미있어지는 순간"><br>
						</a>
						<span class="bookName">
							<a class="listop" href="http://www.yes24.com/Product/Goods/16384156">이토록 공부가 재미있어지는 순간</a>
						</span>
					</li>
					<li class="booklist">
						<a href="http://www.yes24.com/Product/Goods/67362730">
							<img class="bookimg" src="http://image.yes24.com/goods/67362730/M" alt="해커스 토익 기출 보카"><br>
						</a>
						<span class="bookName">
							<a class="listop" href="http://www.yes24.com/Product/Goods/67362730">해커스 토익 기출 보카</a>
						</span>
					</li>
					<li class="booklist">
						<a href="http://www.yes24.com/Product/Goods/93888691">
							<img class="bookimg" src="http://image.yes24.com/goods/93888691/M" alt="2030 축의 전환"><br>
						</a>
						<span class="bookName">
							<a class="listop" href="http://www.yes24.com/Product/Goods/93888691">2030 축의 전환</a>
						</span>
					</li>
					<li class="booklist">
						<a href="http://www.yes24.com/Product/Goods/16384156">
							<img class="bookimg" src="http://image.yes24.com/goods/16384156/M" alt="이토록 공부가 재미있어지는 순간"><br>
						</a>
						<span class="bookName">
							<a class="listop" href="http://www.yes24.com/Product/Goods/16384156">이토록 공부가 재미있어지는 순간</a>
						</span>
						<br>
					</li>
					<li class="booklist">
						<a href="http://www.yes24.com/Product/Goods/91065309">
							<img class="bookimg" src="http://image.yes24.com/goods/91065309/M" alt="달러구트 꿈 백화점"><br>
						</a>
						<span class="bookName">
						<a class="listop" href="http://www.yes24.com/Product/Goods/91065309">
							달러구트 꿈 백화점
						</a>
						</span>
					</li>
					<li class="booklist">
						<a href="http://www.yes24.com/Product/Goods/67362730">
							<img class="bookimg" src="http://image.yes24.com/goods/67362730/M" alt="해커스 토익 기출 보카"><br>
						</a>
						<span class="bookName">
							<a class="listop" href="http://www.yes24.com/Product/Goods/67362730">해커스 토익 기출 보카</a>
						</span>
					</li>
					<li class="booklist">
						<a href="http://www.yes24.com/Product/Goods/93888691">
							<img class="bookimg" src="http://image.yes24.com/goods/93888691/M" alt="2030 축의 전환"><br>
						</a>
						<span class="bookName">
							<a class="listop" href="http://www.yes24.com/Product/Goods/93888691">2030 축의 전환</a>
						</span>
					</li>
					<li class="booklist">
						<a href="http://www.yes24.com/Product/Goods/91065309">
							<img class="bookimg" src="http://image.yes24.com/goods/91065309/M" alt="달러구트 꿈 백화점"><br>
						</a>
						<span class="bookName">
						<a class="listop" href="http://www.yes24.com/Product/Goods/91065309">
							달러구트 꿈 백화점
						</a>
						</span>
					</li>
				</ul>
			</div>
		</div>
	</form>
	<br><br>
	<hr width=60%>
	<br><br>
	
		
	<div class="container" >
		<div class="section-top-border">										
			<div class="row">
				<div class="col-md-3"><br>
					<div id="jquery-script-menu">
					 	<div class="jquery-script-center">
						 <div class="jquery-script-ads"><script type="text/javascript">
						</script>
						<script type="text/javascript"
						src="https://pagead2.googlesyndication.com/pagead/show_ads.js">
						</script></div>
						</div>
					</div>
					
	<div id="slider">
		 <a href="javascript:;" class="next">></a> 	
		 <a href="javascript:; " class="prev"><</a>	
		  <ul>
		    <li><a href="http://www.yes24.com/Product/Goods/91065309">
				<img class="rebook" src="http://image.yes24.com/goods/91065309/M" alt="달러구트 꿈 백화점"></a></li>
		    <li style="background: #aaa;"><a href="http://www.yes24.com/Product/Goods/93888691">
				<img class="rebook" src="http://image.yes24.com/goods/93888691/M" alt="2030 축의 전환"></a></li>
		    <li><a href="https://image.yes24.com/goods/102396082">
				<img class="rebook" src="https://image.yes24.com/goods/102396082/M" alt="메타버스가 만드는 가상경제 시대가 온다"></a></li>
		    <li style="background: #aaa;"><a href="https://image.yes24.com/goods/100458192/M">
				<img class="rebook" src="https://image.yes24.com/goods/100458192/M" alt="꼬리에 꼬리를 무는 그날 이야기"></a></li>
		  </ul>
		</div>
		<script>
		$("#slider").sliderNd({
			delay		:	200,
			autoplay	:	true,
			navigation	:	true
		});
		</script>
		</div>
			<div class="col-md-9 mt-sm-20" >
			    <div class="container">
				 <ul class="tabs">
					<li class="tab-link current" data-tab="tab-2"><h2><b>독후감</b></h2></li>
					<li class="tab-link" data-tab="tab-1"><h2><b>기사</b></h2></li>
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
					  <div class="header-right d-none d-lg-block" style= " float: right;">
		              <button type="button" class="genric-btn primary circle" id="login">전체보기 > </button></div>
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
</div>
</div>
   <script>
   $(document).ready(function(){
		
		$('ul.tabs li').click(function(){
			var tab_id = $(this).attr('data-tab');

			$('ul.tabs li').removeClass('current');
			$('.tab-content').removeClass('current');

			$(this).addClass('current');
			$("#"+tab_id).addClass('current');
		})

	})
   
  
   
   </script>
   
   
   
   
   
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
                                <h4>Contect</h4>
                                <ul>
                                    <li class="number"><a href="#">(02) 123-4567</a></li>
                                    <li><a href="#">shinwoo@universty.kr</a></li>
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
 <script>

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
 </html>
