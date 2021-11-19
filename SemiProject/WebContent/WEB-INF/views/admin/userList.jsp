<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD:SemiProject/WebContent/WEB-INF/views/reqBook/ReqBookList.jsp
    pageEncoding="UTF-8" import="java.util.ArrayList, reqBook.vo.ReqBook"%>
<%
	ArrayList<ReqBook> list = (ArrayList)request.getAttribute("list");
=======
    pageEncoding="UTF-8" import="java.util.ArrayList, admin.model.vo.*" %>
					 
<%
	ArrayList<UserList> uList = (ArrayList)request.getAttribute("uList");

	/* PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage(); */
>>>>>>> ad7d00f2c6f4e3643c20c6a451564c43fb4d504f:SemiProject/WebContent/WEB-INF/views/admin/userList.jsp
%>
<!doctype html>
<html class="no-js">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
       
    <title>adminUserList</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>


    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

 <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="css/main.css">
    <!-- educate icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/educate-custon-icon.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css">

    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css/data-table/bootstrap-table.css">
    <link rel="stylesheet" href="css/data-table/bootstrap-editable.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>

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
    <link rel="stylesheet" type="text/css" href="/css/datatables.min.css"/>
    
	<!-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs5/dt-1.11.3/datatables.min.css"/>
	<script type="text/javascript" src="https://cdn.datatables.net/v/bs5/dt-1.11.3/datatables.min.js"></script> -->
	
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
	
	<script type="text/javascript">
		jQuery(function($){ 
			$("#foo-table").DataTable(); 
		}); 
	</script>

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
        
        .searchBar{
        	padding-top: 10%;
        	padding-left: 60%;
        }
        .paging1{
        	padding-left: 47%;
        }
        .updateInfo {
		  background: white;
		  border: none;
		  color: blue;
		  text-align: center;
		  text-decoration: none;
		 
		  font-size: 16px;
		
		  cursor: pointer;
		}

        .fa-image {
            position: absolute;
            top: 50%;
            margin-top: 12px;
            margin-left: 1%;
            z-index: 1;
        }

        #imagePreview {
            margin-top: 20px;
            border: 1px solid #eee;
        }

        #imageP {
            margin-top: 20px;
            visibility: hidden;
        }

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
    <%@ include file="../common/header.jsp" %>
    <main>
        <!--? Hero Start -->
<<<<<<< HEAD:SemiProject/WebContent/WEB-INF/views/reqBook/ReqBookList.jsp
        <div class="slider-area2 section-bg2 hero-overly" style="background-color: #6785FF; height: 100px;">
            <div class="slider-height2 d-flex align-items-center" style="background-color: #6785FF; height: 100px;">
                <h2 id="currentMenu">도서 신청</h2>
            </div>
        </div>

        
        <!-- Static Table Start -->
       
        <div style="width :300px; height : 200pxpx; background : bule;"></div>
        <div class="data-table-area mg-b-15;" >
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="sparkline13-list">
                            <div class="sparkline13-hd">
                            </div>
                            <div class="sparkline13-graph">
                              <div class="datatable-dashv1-list custom-datatable-overright">
                                    <div id="toolbar">
                                    	<select>
                                    		<option>대기중</option>
                                    		<option>승인</option>                                     
                                    		<option>거절</option>                        	
                                    	</select>                                 
                                    </div>
                                    <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                        data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar" style="text-align : center;">
                                        <thead  style="text-align : center;">
                                            <tr>
                                                <th data-field="state" data-checkbox="true"></th>
                                                <th data-field="id">학번</th>
                                                <th data-field="name" data-editable="true">도서명</th>
                                                <th data-field="email" data-editable="true">저자</th>
                                                <th data-field="phone" data-editable="true">출판사</th>
                                                <th data-field="task" data-editable="true">신청자 성함 </th>
                                                <th data-field="date" data-editable="true">신청날짜</th>
                                                <th data-field="action">진행상태</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                              <% if(list.isEmpty()) {%>
											<tr>
												<td colspan="5">존재하는 공지사항이 없습니다.</td>
											</tr>
											<%} else { 

												for(int i = 0; i < list.size(); i++){%>
											<tr>
												<td><%= list.get(i).getReqBookNo() %></td>
												<td><%= list.get(i).getReqBookTitle() %></td>
												<td><%= list.get(i).getReqBookDate() %></td>
												<td><%= list.get(i).getReqBookPub() %></td>
												<td><%= list.get(i).getReqBookAuthor() %></td>
												<td><%= list.get(i).getReqBookContent() %></td>
												<td><%= list.get(i).getReqBookReason() %></td>
												<td><%= list.get(i).getStatus() %></td>
												<td><%= list.get(i).getReqWriterId() %></td>
								
											</tr>
										<%} %>
									<%} %>
								</table>
							</div>
				
                       </div>
                    </div>
                  </div>
               </div>
            </div>
        </div>
       
	<script type="text/javascript">

	function button_event1(){

	if (confirm("정말 승인하시겠습니까??") == true){    

   	 document.form.submit();

		}else{   //취소

   		 return;

		}

	}



</script>


<input type="button" value="승인" class="btn btn-dark" onclick="button_event1();" style="float: right; margin-left: 10px;">	
    
   
<script type="text/javascript">

function button_event2(){

if (confirm("정말 거절하시겠습니까??") == true){    

	window.open('address','window_name','width=430,height=500,location=no,status=no,scrollbars=yes');

}else{   

    return;

}

}


</script>

 <input type="button" value="거절" class="btn btn-dark" onclick="button_event2();" style="float: right; margin-left: 10px;">	       
    

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
=======
        <div class="slider-area2 section-bg2 hero-overly" style="background-color: #6785FF; height: 200px;">
            <div class="slider-height2 d-flex align-items-center" style="background-color: #6785FF; height: 200px;">
                <h2 id="currentMenu">회원 목록</h2>
            </div>
        </div>

        <!--? Start Align Area -->
        <div class="whole-wrap">
            <div class="container box_1170">
                <div class="section-top-border">
                    <div class="row">
                        <div class="col-md-8 mt-sm-30">
                            
                        </div>
                    </div>
                </div>
        <table id="foo-table" class="table table-bordered">
        <thead>
	        <tr align="center">  
	           	<th>아이디</th>
			    <th>이름</th>
			    <th>학과</th>
			    <th>전화번호</th>
			    <th>주소</th>
			    <th>이메일</th>
			    <th>변경</th>  
	        </tr>  
        </thead>
        <tbody>
	        <% for (int i = 0; i < uList.size(); i++) { %>
	        <tr>
	        	<td><%= uList.get(i).getMemberId() %></td>
	        	<td><%= uList.get(i).getMemberName() %></td>
	        	<td><%= uList.get(i).getDepartment() %></td>
	        	<td><%= uList.get(i).getPhone() %></td>
	        	<td><%= uList.get(i).getAddress() %></td>
	        	<td><%= uList.get(i).getEmail() %></td>
	        	<td><button class="updateInfo" onclick="location.href='<%= request.getContextPath() %>/updateInfoForm.ui'">변경</button></td>
	        </tr>
	        <% } %>
        </tbody>
      </table>  
		<!-- <script>
			function update(){
				var updateWindow = window.open('updateInfoForm.ui', 'updateInfoForm','width=500, height=250');
			}
		</script> -->
		<%-- <div class="pagingArea" align="center">
		<!-- 맨 처음으로 -->
			<button onclick="location.href='<%= request.getContextPath() %>/userList.ul?currentPage=1'">&lt;&lt;</button>
			<!-- 이전 페이지로 -->
			<button id="beforeBtn" onclick="location.href='<%=request.getContextPath()%>/userList.ul?currentPage=<%=pi.getCurrentPage()-1%>'">&lt;</button>
			<script>
				if(<%= pi.getCurrentPage() %> <= 1){
					$('#beforeBtn').prop('disabled', true);
				}
			</script>
			<!-- 숫자버튼 -->
			<% for(int p = pi.getStartPage(); p <= pi.getEndPage(); p++){ %>
			<%		if(p == pi.getCurrentPage() ){ %>
						<button id="choosen" disabled><%= p %></button>
			<%		} else { %>
						<button id="numBtn" onclick="location.href='<%= request.getContextPath() %>/userList.ul?currentPage=<%= p %>'"><%= p %></button>
			<%		} %>
			<% } %>
			<!-- 다음 페이지로 -->
			<button id="afterBtn" onclick="location.href='<%= request.getContextPath()%>/userList.ul?currentPage=<%= pi.getCurrentPage()+1 %>'">&gt;</button>
			<script>
				if(<%= pi.getCurrentPage() %> >= <%= pi.getMaxPage() %>){
					$('#afterBtn').prop('disabled', true);
				}
			</script>
			<!-- 맨 끝으로 -->
			<button onclick="location.href='<%= request.getContextPath() %>/userList.ul?currentPage=<%=pi.getMaxPage() %>'">&gt;&gt;</button>
		</div> --%>
		
		<!-- table end -->	
     </div>
 </div>
        <!-- End Align Area -->
    </main>
>>>>>>> ad7d00f2c6f4e3643c20c6a451564c43fb4d504f:SemiProject/WebContent/WEB-INF/views/admin/userList.jsp
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
    
<<<<<<< HEAD:SemiProject/WebContent/WEB-INF/views/reqBook/ReqBookList.jsp
    
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- wow JS
		
		============================================ -->
    <script src="js/jquery-price-slider.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="js/jquery.meanmenu.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
 
    <!-- data table JS
		============================================ -->
    <script src="js/data-table/bootstrap-table.js"></script>
    <script src="js/data-table/tableExport.js"></script>
    <script src="js/data-table/data-table-active.js"></script>
    <script src="js/data-table/bootstrap-table-editable.js"></script>
    <script src="js/data-table/bootstrap-editable.js"></script>
    <script src="js/data-table/bootstrap-table-resizable.js"></script>
    <script src="js/data-table/colResizable-1.5.source.js"></script>
    <script src="js/data-table/bootstrap-table-export.js"></script>
    <!--  editable JS
		============================================ -->
    <script src="js/editable/jquery.mockjax.js"></script>
    <script src="js/editable/mock-active.js"></script>
    <script src="js/editable/select2.js"></script>
    <script src="js/editable/moment.min.js"></script>
    <script src="js/editable/bootstrap-datetimepicker.js"></script>
    <script src="js/editable/bootstrap-editable.js"></script>
    <script src="js/editable/xediable-active.js"></script>
=======
>>>>>>> ad7d00f2c6f4e3643c20c6a451564c43fb4d504f:SemiProject/WebContent/WEB-INF/views/admin/userList.jsp

    <!-- data table JS
		============================================ -->
    <script src="js/data-table/bootstrap-table.js"></script>
    <script src="js/data-table/tableExport.js"></script>
    <script src="js/data-table/data-table-active.js"></script>
    <script src="js/data-table/bootstrap-table-editable.js"></script>
    <script src="js/data-table/bootstrap-editable.js"></script>
    <script src="js/data-table/bootstrap-table-resizable.js"></script>
    <script src="js/data-table/colResizable-1.5.source.js"></script>
    <script src="js/data-table/bootstrap-table-export.js"></script>
  
   
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