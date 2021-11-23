<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, book.model.vo.Book, review.model.vo.PageInfo"%>
    
<%
	ArrayList<Book> cList = (ArrayList<Book>)request.getAttribute("cList");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
%>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
  <title>adminSearchResult</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
  
  <style>
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
        
        .searchResults{
        	float: left;
        	padding-top: 50px;
        	padding-left: 100px;
        } 
        
      	.deleteButton{
      		float: left;
			padding-left: 5%;
			padding-top: 110px;
      	}
		
		.container{
			padding-top: 50px;
		}
		       
        .result{
        	width: 800px;
        	 display: inline-block;
        }
        
         .category{
         width:20%;
         float: right;
         position: absolute; top:350px; right:0px;
         min-height:1px;
         padding-right:15px;
       	 display: inline-block;
         }
         
         .paging{
         	float: left;
         	padding-left: 40%;
         }
         
         .bookName{
         	text-decoration: none;
         	color: black;
         }
         .image{
         	background: skyblue;
         	width: 200px;
         	height: 300px;
         	margin-top: 10px;
         }
         
         .totalBook{
         	background: pink;
         	width: 800px;
         	height: 300px;
         	
         }
         textarea {
		    width: 100%;
		    height: 6.25em;
		    border: none;
		    resize: none;
		  }
		  .list-display{
		  	display: inline-block;
		  }
		  .whole{
		  	width: 1500px;
		  	height: 400px;
		  }
  </style>
</head>
<body>
	<!-- ? Preloader Start -->
	<div id="preloader-active">
		<div class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle">
					<div class="preloader-img pere-text">
						<img src="assets/img/logo/loder.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Preloader Start -->
	   <%@ include file="../common/header.jsp" %>
	<main>
		<!--? Hero Start -->
		<div class="slider-area2 section-bg2 hero-overly" style="background-color: #6785FF; height: 200px;">
			<div class="slider-height2 d-flex align-items-center" style="background-color: #6785FF; height: 200px;">
				<h2 id="currentMenu">도서 검색</h2>
			</div>
		</div>
		<div class="container">
			<div class="searchResults">
				<h3 class="mb-20">검색 결과</h3>
				<ul class="noneList">
					<li><i class="fas fa-check-circle"></i> '지구끝의 온실' 검색 결과</li>
					<li><i class="fas fa-check-circle"></i> 총 '5'개의 검색 결과가 있습니다.</li>
				</ul>
				<hr>
			</div>
			<div>
			<div class="deleteButton">
				<input type="button" class="genric-btn info circle" class="allBtn" onclick="selectOne();" value="전체 선택">
				<input type="button" class="genric-btn danger circle" onclick="deleteBook();" value="삭제">
			</div>
	     	<% 	for (int i = 0; i < cList.size(); i++) { %>
	 		<div >	
			 <div class="list-display whole">
					<div class="list-display check">
						<input type="checkbox" name="checkbox" onclick="selectOne();">
					</div>
	     	 		<div class="list-display image"><h2>책 사진 자리</h2></div>
     	 			<div class="list-display totalBook">
	     	 			<ul>
	     	 				<li><%= cList.get(i).getBookTitle() %></li>
	     	 				<li><%= cList.get(i).getBookNo() %></li>
	     	 				<li><%= cList.get(i).getAuthor() %> | <%= cList.get(i).getPublisher() %> | <%= cList.get(i).getReleaseDate() %></li>
	     	 				<li><textarea readonly><%= cList.get(i).getBookInfo() %></textarea></li>
	     	 				<li>[대출 : <%= cList.get(i).getRentTotal() %> / 2] &nbsp; &nbsp;&nbsp; <input type="button" class="genric-btn danger circle" onclick="deleteBook();" value="삭제"></li>
	     	 				<li>
	     	 			</ul>
					</div>
			     </div> 
				</div>
	         <% 	} %>
             </div>
		 </div>
	


		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		<aside>
		<div class="category">
			<div class="blog_right_sidebar">
				<aside class="single_sidebar_widget search_widget">
					<form action="#">
						<div class="form-group">
							<div class="input-group mb-3">
							<input type="text" class="form-control" placeholder='Search Keyword'
							onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Keyword'">
								<div class="input-group-append">
								<button class="btns" type="button"><i class="ti-search"></i></button>
								</div>
							</div>
						</div>
						<button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
						type="submit">검색</button>
					</form>
				</aside>
				<aside class="single_sidebar_widget post_category_widget">
					<h4 class="widget_title" style="color: #2d2d2d;">Category</h4>
					<ul class="list cat-list">
						<li>
							<a href="#" class="d-flex"><p>전체 000</p></a>
						</li>
						<li>
							<a href="#" class="d-flex"><p>소설/시 100</p></a>
						</li>
						<li>
							<a href="<%= request.getContextPath() %>/cateList.cl" class="d-flex"><p>경제/경영200</p></a>
						</li>
						<li>
							<a href="#" class="d-flex"><p>자기계발 300</p></a>
						</li>
						<li>
							<a href="#" class="d-flex"><p>인문/사회400</p></a>
						</li>
						<li>
							<a href="#" class="d-flex"><p>역사/종교/예술 500 </p></a>
						</li>
						<li>
							<a href="#" class="d-flex"><p>과학/IT 600</p></a>
						</li>
						<li>
							<a href="#" class="d-flex"><p>취미/여행 700</p></a>
						</li>
						<li>
							<a href="#" class="d-flex"><p>어린이800</p></a>
						</li>
						<li>
							<a href="#" class="d-flex"><p>언어 900</p></a>
						</li>
					</ul>
				</aside>
				
			</div>
		</div>
		<!-- sidebar end -->
		
		</aside>
		
		
		
        <div class="pagingArea" align="center">
        <!-- 맨처음으로 -->
        <button onclick="location.href='<%= request.getContextPath() %>/searchBook.sr?currentPage=1'">&lt;&lt;</button>
        <!-- 이전 페이지 -->
        <button id="beforeBtn" onclick="location.href='<%=request.getContextPath()%>/searchBook.sr?currentPage=<%= pi.getCurrentPage()-1 %>'">&lt;</button>
        <script>
        	if(<%= pi.getCurrentPage()%> <=1 ){
        		$('#beforeBtn').prop('disabled', true);
        	}
        </script>
		<!-- 숫자버튼 -->
		<% for(int p = pi.getStartPage(); p <= pi.getEndPage(); p++) { %>
		<%		if(p == pi.getCurrentPage()) { %>
					<button id="choosen" disabled><%= p %></button>
		<% 		} else {%>
					<button id="numBtn" onclick="location.href='<%= request.getContextPath()%>/searchBook.sr?currentPage=<%= p %>'"><%= p %></button>
		<%		} %>
		<%	}	 %>
		<!-- 다음페이지로 -->
		<button id="afterBtn" onclick="location.href='<%= request.getContextPath()%>/searchBook.sr?currentPage=<%= pi.getCurrentPage()+1 %>'">&gt;</button>
		<script>
			if(<%= pi.getCurrentPage() %> >= <%= pi.getMaxPage() %>){
				$('#afterBtn').prop('disabled', true);
			}
		</script>
		<!-- 맨 끝으로 -->
		<button onclick="location.href='<%= request.getContextPath() %>/searchBook.sr?currentPage=<%=pi.getMaxPage() %>'">&gt;&gt;</button>
       </div>               
	</main>
	<!-- Blog Area End -->
	
	<%@ include file="../common/footer.jsp" %>
	
	
	<!-- Scroll Up -->
	<div id="back-top" >
	 <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>
	

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