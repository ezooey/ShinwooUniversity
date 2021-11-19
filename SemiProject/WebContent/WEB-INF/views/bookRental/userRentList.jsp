<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, review.model.vo.*, member.vo.*, bookRental.model.vo.*"%>
<% 	ArrayList<BookRental> list = (ArrayList)request.getAttribute("list");
//Member loginUser= (Member)session.getAttribute("loginUser");
PageInfo pi = (PageInfo)request.getAttribute("pi");
%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
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


    <title>대출 도서 목록</title>
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
       /*
    header {
	height : 70px; 
	background : #aacec2; padding : 30px;
	font-size : 15px; font-weight : bold;
	padding-top: 10px; padding-bottom: 0px; z-index:1;
	}/*
 header {
	height : 70px; 
	background : #aacec2; padding : 30px;
	font-size : 15px; font-weight : bold;
	padding-top: 10px; padding-bottom: 0px; z-index:1;
	}
	
	header a {text-decoration : none; color : #404040;z-index:1; font-size:45px;}
	
	nav.bar li{display: inline-block; font-size: 20px; text-align : center;  padding-right: 100px;
	font-weight: bold; z-index:1;}
	
  	nav.bar{
  		height : 80px; background : #aacec2;  position:absolute;
  		position: sticky;
  		padding-top: 5px; padding-bottom: 0px; 
  		text-align : center; top: -20px;z-index:1;
  		padding-right: 0px;}
	
	.header-item a {text-align : center; text-decoration : none; color : #404040;
	display : block; padding : 10px 0px 0px 40px; line-height: 45px; text-align : center;}
	*/
   .firstdiv{background:#6785FF; height:200px; font-size:40px; text-align:left; padding-left:20px; padding-top:60px;font-weight : bold; color:white;
    	}
    	
    #personalInf{
    	margin-left:18%; margin-right:18%; border-radius: 2em;
    }
    
    .borrowed{
    	background:#d2e2e9; height:100px; padding-left:160px; font-size:30px; padding-top:20px;font-weight : bold; color:#404040
    }
    
    .personal{
    	font-size:20px;
    	}
    	
    
    .card img{
    	width:145px;
    }
    
    .imgdiv{
    	text-align:center; border-radius: 2em;
    	
    }
    
    .borrowed button{
    	margin-left:20px;
    	margin-top:-20px;
    	font-size:15px;
    }
    
    .bookpage{ text-align : center;
    	margin-top:40px;
    }
    
    .bookp{ display:inline-block;
    }
    #ddaydiv{background: rgba(255, 0, 0, 0.5);}
    #dday{color:red;}
    .card-title{font-size:20px;}
    .card-body{text-align:center;}
    .card-body button{margin-top:10px;}
    div.card{border-radius: 2em; margin-top:10px; opacity: 0.8; margin-left:20px; margin-right:20px;}
    .tableBody{height:60px;}
    th, td {
  vertical-align : middle;
}
    th.returnBook, td.returnBook {
  text-align: center;
}

    </style>
</head>
<body>
<!-- <header><a href ="http://www.naver.com">   신우대학교</a>
		<input type ="submit" value = "로그인" style=" float:right; width : 80px; height : 40px;
		 background-color : #5D5E60; color : white; font-weight : bold; border-radius: 5px;" >
		<a href ="http://www.naver.com"></a>
	</header>
	
	<nav class='bar'>	
		<ul>
			<li class = "header-item"><a href ="http://www.naver.com">도서관 소개</a></li>
			<li class = "header-item"><a href ="http://www.naver.com">도서신청</a></li>
			<li class = "header-item"><a href ="http://www.naver.com">마이페이지</a></li>
		</ul>
	</nav>-->
	
   <%@ include file="../common/header.jsp" %>
<div class="firstdiv">대출 도서 목록</div>
<p><br>
   <p><br>
    <div class="jumbotron" id="personalInf">
    <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">책 제목</th>
      <th scope="col">저자</th>
      <th scope="col">대출일</th>
      <th scope="col">예정 반납일</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
  	<% if(list.isEmpty()){ %>
		<tr>
			<td colspan="5">존재하는 공지사항이 없습니다.</td>
		</tr>
		<% } else{%>
				
		<%		String bookName = null;
				for(int i = 0; i < list.size(); i++){ %>
		<tr><% 		if(list.get(i).getBookTitle().length()>16){
					bookName = list.get(i).getBookTitle().substring(0, 16);
					}else{
					bookName = list.get(i).getBookTitle();
					}%>
					<th scope="row" class="invId"><%= bookName %></th>
					<td><%= list.get(i).getAuthor()%></td>
					<td><%= list.get(i).getRentalDate() %></td>
					<td><%= list.get(i).getReturnDate() %></td>
					<% if(list.get(i).getReturnYN().equals("N")){ %>
					 <td class="returnBook"><button type="button" class="genric-btn info circle" width="150pt" value="반납하긔" onclick="returnBtn(<%= list.get(i).getRentalCode() %>, '<%= list.get(i).getBookTitle() %>');">반납하기</button></td>
					<% }else{ %>
					<td align="center"><b>반납완료</b></td>
					<%} %>
				</tr>
		<%		} %>
		<% } %>
  	    <script>
	   	function returnBtn(rCode, bookName){
	    	var bool = confirm(bookName + "을(를)\n반납하시겠습니까?");
	    	if(bool == true){
		    	$.ajax({
	  				url:'returnBook.br',
	  				data:{rentCode : rCode},
	  				success:function(data){
	  					console.log(data);
	  					if(data.trim()=='1'){
	  						alert('반납되었습니다.');
	  						location.reload();
	  					}else{
	  						alert('반납실패!');
	  					}
	  				},
	  				error:function(data){
	  					console.log(data);
	  					
	  				}
	  			});
	    	}
	   	}
    </script>
  </tbody>
</table>
<div class= "pagingArea" align='center'>
			<!-- 맨처음으로 -->
			<button onclick="location.href='<%= request.getContextPath() %>/borrowList.br?currentPage=1'"><<</button>
			<!-- 이전 페이지로 -->
			<button   id="beforeBtn" onclick="location.href='<%= request.getContextPath() %>/borrowList.br?currentPage=<%= pi.getCurrentPage()-1 %>'"><</button>
			<script>
				if(<%= pi.getCurrentPage() %> <= 1){
					$('#beforeBtn').prop('disabled', true);
				}
			</script>
			<!-- 숫자버튼 -->
			<% for(int p = pi.getStartPage(); p<=pi.getEndPage(); p++){ %>
			<% 		if(p == pi.getCurrentPage()){ %>
						<button id = "choosen"   disable><%= p %></button>
			<%		}else{ %>
						<button id="numBtn" onclick="location.href='<%= request.getContextPath() %>/borrowList.br?currentPage=<%= p %>'"><%= p %></button>
			<% 			} %>
			<% } %>
			<!-- 다음페이지로 -->
			<button id="afterBtn" onclick="location.href='<%= request.getContextPath() %>/borrowList.br?currentPage=<%= pi.getCurrentPage()+1 %>'">></button>
			<script>
				if(<%= pi.getCurrentPage() %> >= <%= pi.getMaxPage() %>){
					$('#afterBtn').prop('disabled',true);
				}
			</script>
			<!-- 맨끝으로 -->
			<button  onclick="location.href='<%= request.getContextPath() %>/borrowList.br?currentPage=<%= pi.getMaxPage() %>'">>></button>
		</div>
									
    </div>
    </div>
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

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</body>
</html>