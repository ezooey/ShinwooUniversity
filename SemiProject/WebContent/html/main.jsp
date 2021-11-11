<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>신우도서관</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../assets/css/slicknav.css">
    <link rel="stylesheet" href="../assets/css/flaticon.css">
    <link rel="stylesheet" href="../assets/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="../assets/css/gijgo.css">
    <link rel="stylesheet" href="../assets/css/animate.min.css">
    <link rel="stylesheet" href="../assets/css/animated-headline.css">
    <link rel="stylesheet" href="../assets/css/magnific-popup.css">
    <link rel="stylesheet" href="../assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="../assets/css/themify-icons.css">
    <link rel="stylesheet" href="../assets/css/slick.css">
    <link rel="stylesheet" href="../assets/css/nice-select.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/all.min.css">
    
	<!-- 제이쿼리 불러오기 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="https://fontawesome.com/v5.15/icons/search?style=solid"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>

<style>
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

	
	body {background-image: url('#');
  		background-repeat: no-repeat;
  		background-position: center;
  		background-size: cover;
      	margin: 0;
    	padding: 0;}
	
	li> a:hover{color : white;}
	
	#news{/*margin : margin-left auto; margin-right: auto;*/
		margin-left:100px; margin-right:100px;
		text-align: justify; padding-top: 100px;}
			
	table img {display:block; margin:auto;}		

	#news tr td {padding : 5px;}
	table a{text-decoration : none; color : black;}
	table span {font-weight : bold; font-size : 20px;}
	main { padding : 0px;}

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
                        <a href="index.html"><img src="../assets/img/logo/logo.png" alt=""></a>
                    </div>
                    <div class="menu-wrapper  d-flex align-items-center">
                        <!-- Main-menu -->
                        <div class="main-menu d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="index.html">도서관 소개</a></li>
                                    <li><a href="about.html">도서 신청</a></li>
                                    <li><a href="services.html">도서 검색</a></li>
                                    <li><a href="blog.html">독후감</a></li>
                                    <li><a href="contact.html">마이페이지</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="header-right d-none d-lg-block">
                    <a href="#" class="header-btn1"><img src="../assets/img/icon/bell.png" alt=""></a>
                    <button type="button" class="genric-btn primary circle" id="login">로그아웃</button>
                </div>
            </div>
        </div>

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
	
	 <table id = "news" >
	 	<tr>
		 	<td colspan = 2 ><img width = "500px" height = "300px" src = "https://image.newsis.com/2021/10/22/NISI20211022_0000852163_web.jpg?rnd=20211022091429" >
		 	<a href ="http://news.unn.net/"></a></td>
		 	<td colspan = 2><br><a href ="http://www.naver.com">
		 	<br><span>00대, 다음달  11일 ‘오징어게임’ 000 미술감독 초청 특강 </span><br> 
		 	채경선 감독은 상명대 예술대학 무대미술전공 99학번으로 제48회 대종상영화제, 2015년 제52회 대종상영화제에서 미술상을 수상했다.이날 채경선 감독은 후배들을 대상으로 영화미술 분야에 대한 특강과 대학생활에 대한 조언을 이야기할 예정이다.
		 	</a></td>
	 	</tr>
	 	<tr>
		 	<td>
			 	<a href ="http://www.lecturernews.com/news/articleView.html?idxno=78830">
			 	<img width = "250px" height = "200px" src = "http://cdn.lecturernews.com/news/photo/202110/78830_282230_2924.jpg" >
			 	</a>
				<br><a href ="http://www.lecturernews.com/news/articleView.html?idxno=78830">
				<br><span>00대학교 도서관,‘000 작가’초청 북 콘서트 마련.</span><br><br>[한국강사신문 김순복 기자] 00대학교는 지역민들과의 소통을 통해 지역과 동행하기 위해 노력하고 있는 00대학교 도서관이 『완전한 행복』의 정유정 작가를 초청, 지역민과 함께하는 북 콘서트를 개최한다고 21일 밝혔다.</a>
		 	</td>
		 	<td>
			 	<a href ="http://www.naver.com">
			 	<img width = "250px" height = "200px" src = "sample/image/시설.jpg" >
			 	</a>
				<br><a href ="http://www.naver.com">
				<br><span>00대학교 중앙도서관 '학생 중심 공간'으로 새단장</span><br><br>국립 00대학교는 교내 중앙도서관에 학생 중심의 개방·공유형 창의·융합 학습공간과 취·창업 지원 공간 플랫폼 등 교육혁신 인프라를 구축했다고 28일 밝혔다.이번 교육혁신 인프라 구축은 포스트 코로나에 대비한 미래교육체제 전환의 하나로 추진했다.</a>
		 	</td>
		 	<td>
			 	<a href ="http://www.lecturernews.com/news/articleView.html?idxno=78656">
			 	<img width = "250px" height = "200px" src ="http://cdn.lecturernews.com/news/photo/202110/78656_281922_3511.jpg" >
			 	</a>
				<br><a href ="http://www.lecturernews.com/news/articleView.html?idxno=78656">
				<br><span>00대학교 도서관, 000도서관과 공동 프로젝트 영상 공개</span><br><br>00대학교는 본교 도서관과 000도서관이 10개월에 걸쳐 진행된 영상 제작 공동프로젝트를 마치고 10월 1일 한국어와 프랑스어로 함께 제작한 영상을 동시에 공개했다고 19일 밝혔다. 영상은 양 기관 홈페이지 및 유튜브 채널에서 볼 수 있다.</a>
		 	</td><br>
		 	<td>
			 	<a href ="http://mobile.busan.com/view/busan/view.php?code=2021102109330915828">
			 	<img width = "250px" height = "200px" src = "http://www.busan.com/nas/wcms/wcms_data/photos/2021/10/21/2021102109321470605_l.jpg" ></a>
				<br><a href ="http://mobile.busan.com/view/busan/view.php?code=2021102109330915828">
				<br><span>00대 도서관 「PNU SF Day」 강연회 [과학, SF를 만나다] 개최</span><br><br> 부산대학교 도서관(관장 설문원·문헌정보학과 교수)은 28일 오후 2시부터 교내 중앙도서관 1층 복합문화공간에서 「PNU SF Day」 강연회 ‘과학, SF를 만나다’를 ‘인간과 바이러스의 오징어게임?’이라는 주제로 개최한다고 21일 밝혔다.</a>
		 	</td>
	 	</tr> 
	 </table>
	<br><br>
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
            $('input[name=reqDate]').css('color', 'gray');
            console.log(now);
        });

        $("#reqBook").submit(function(){
            alert("도서 신청이 완료되었습니다.");
        });
    </script>
    <!-- JS here -->

    <script src="../assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="../assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="../assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="../assets/js/owl.carousel.min.js"></script>
    <script src="../assets/js/slick.min.js"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="../assets/js/wow.min.js"></script>
    <script src="../assets/js/animated.headline.js"></script>
    <script src="../assets/js/jquery.magnific-popup.js"></script>

    <!-- Date Picker -->
    <script src="../assets/js/gijgo.min.js"></script>
    <!-- Nice-select, sticky -->
    <script src="../assets/js/jquery.nice-select.min.js"></script>
    <script src="../assets/js/jquery.sticky.js"></script>

    <!-- counter , waypoint,Hover Direction -->
    <script src="../assets/js/jquery.counterup.min.js"></script>
    <script src="../assets/js/waypoints.min.js"></script>
    <script src="../assets/js/jquery.countdown.min.js"></script>
    <script src="../assets/js/hover-direction-snake.min.js"></script>

    <!-- contact js -->
    <script src="../assets/js/contact.js"></script>
    <script src="../assets/js/jquery.form.js"></script>
    <script src="../assets/js/jquery.validate.min.js"></script>
    <script src="../assets/js/mail-script.js"></script>
    <script src="../assets/js/jquery.ajaxchimp.min.js"></script>

    <!-- Jquery Plugins, main Jquery -->
    <script src="../assets/js/plugins.js"></script>
    <script src="../assets/js/main.js"></script>
    <script src="../assets/js/all.min.js"></script>

</body>
</html>