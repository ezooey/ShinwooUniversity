<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, book.model.vo.Book"%>
    
<%
	ArrayList<Book> bList = (ArrayList<Book>)request.getAttribute("bList");
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
       	
       	.tables{
       		padding-left: 50px;
       		padding-top: 200px;	
       	}
       	 
       	.tableResults{
    		padding-left: 50px;
       	}
		       
        .result{
        	width: 800px;
        	 display: inline-block;
        }
        
         .category{
         width:28%;
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
         	width: 200px;
         	height: 300px;
         
         }
         
         .totalBook{
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

	
	 
	 		<div >	
	     	 <% for (int i = 0; i < bList.size(); i++) { %>
				<div class="list-display">
					<div><input type="checkbox"></div>
		     	 		<div class="list-display image"><h2>책 사진 자리</h2></div>
	     	 			<div class="list-display totalBook">
		     	 			<ul>
		     	 				<li><%= bList.get(i).getBookTitle() %></li>
		     	 				<li><%= bList.get(i).getAuthor() %> | <%= bList.get(i).getPublisher() %> | <%= bList.get(i).getReleaseDate() %></li>
		     	 				<li><textarea readonly><%= bList.get(i).getBookInfo() %></textarea></li>
		     	 				<li>[대출 : <%= bList.get(i).getRentTotal() %> / 10]</li>
		     	 			</ul>
				     	 			
					</div>
			     </div> 
	         <% } %>
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