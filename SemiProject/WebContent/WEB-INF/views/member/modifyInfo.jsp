<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="member.vo.Member" %>
<% 
	Member m = (Member)request.getAttribute("m"); 
	String phone = m.getPhone();
	String number1 = null;
	String number2 = null;
	String[] selectedNum = new String[5];
	if(phone != null){
		number1 = phone.substring(0, 3);
		number2 = phone.substring(3);
		
		switch(number1){
		case "010": selectedNum[0] = "selected"; break;
		case "011": selectedNum[1] = "selected"; break;
		case "016": selectedNum[2] = "selected"; break;
		case "018": selectedNum[3] = "selected"; break;
		case "019": selectedNum[4] = "selected"; break;
		}
	}
	
	String address = m.getAddress();
	String address1 = null;
	String address2 = null;
	String[] selectedAddress = new String[16];
	
	if(address != null){
		address1 = address.split(" ")[0];
		address2 = address.substring(address.indexOf(address1) + address1.length() + 1);
		
// 		switch(address1){
// 		case "강원도": selectedNum[0] = "selected"; break;
// 		case "경기도": selectedNum[1] = "selected"; break;
// 		case "경상남도": selectedNum[2] = "selected"; break;
// 		case "경상북도": selectedNum[3] = "selected"; break;
// 		case "광주광역시": selectedNum[4] = "selected"; break;
// 		case "대구광역시": selectedNum[5] = "selected"; break;
// 		case "대전광역시": selectedNum[6] = "selected"; break;
// 		case "부산광역시": selectedNum[7] = "selected"; break;
// 		case "서울특별시": selectedNum[8] = "selected"; break;
// 		case "울산광역시": selectedNum[9] = "selected"; break;
// 		case "인천광역시": selectedNum[10] = "selected"; break;
// 		case "전라남도": selectedNum[11] = "selected"; break;
// 		case "전라북도": selectedNum[12] = "selected"; break;
// 		case "제주특별자치도": selectedNum[13] = "selected"; break;
// 		case "충청남도": selectedNum[14] = "selected"; break;
// 		case "충청북도": selectedNum[15] = "selected"; break;
// 		}
	}
	
	String email = m.getEmail();
	String email1 = email.split("@")[0];
	String email2 = email.split("@")[1];
	
	
	
	String[] selectedEmail = new String[5];
	switch(email2){
	case "naver.com": selectedEmail[0] = "selected"; break;
	case "gmail.com": selectedEmail[1] = "selected"; break;
	case "daum.net": selectedEmail[2] = "selected"; break;
	case "nate.com": selectedEmail[3] = "selected"; break;
	default: selectedEmail[4] = "selected"; break;
	}
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>내 정보 수정</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery-3.6.0.min.js"></script>
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
	
	#modifyTable {
		width: 40%;
		height: 600px;
		margin: auto;
	}
	
	.category {
		font-weight: bold;
		font-family: 'Gowun Dodum', sans-serif;
		width: 150px;
	}
	
	input:read-only {
		background-color: #dedede
	}
	
	#notice1 {
		text-align: center;
		font-size: 3px;
		font-family: 'Gowun Dodum', sans-serif;
	}
	
	#Btns {
		text-align: center;
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
		<div class="slider-area2 section-bg2 hero-overly" style="background-color: #6785FF; height: 150px;">
			<div class="slider-height2 d-flex align-items-center" style="background-color: #6785FF; height: 150px;">
				<h3 id="currentMenu">내 정보 수정</h3>
			</div>
		</div>
		<br> <br>

		<form id="modifyForm" action="<%=request.getContextPath()%>/modify.info" method="post" onsubmit="return send();">
			<table id="modifyTable">
				<tr>
					<td class="category">학번</td>
					<td colspan="2">
						<div id="studentNo"><%= m.getMemberId() %></div>
					</td>
				</tr>
				<tr>
					<td class="category">이름</td>
					<td colspan="2">
						<div id="name"><%= m.getMemberName() %></div>
					</td>
				</tr>
				<tr>
					<td class="category">학과</td>
					<td colspan="2">
						<div id="major"><%= m.getDepartment() %></div>
					</td>
				</tr>
				<tr>
					<td class="category">비밀번호</td>
					<td colspan="3">
						<div class="mt-10">
							<input type="password" name="password" id="pwdCheck" onfocus="this.placeholder = ''" class="single-input">
							<input type="hidden" name="passwordInput">
						</div>
						<span id="notice1">비밀번호를 변경하지 않으려면 빈칸으로 두세요.</span>

					</td>
				</tr>
				<tr>
					<td class="category">비밀번호 확인</td>
					<td colspan="3">
						<div class="mt-10">
							<input type="password" name="passConfirm" onfocus="this.placeholder = ''" class="single-input">
						</div>
					</td>
				</tr>
				<tr>
					<td class="category">전화번호</td>
					<td width="1%">
						<div class="mt-10">
							<div class="phone" id="number1">
								<select name="number1" id="pppp">
									<option>국번 선택</option>
									<option value="010" <%= selectedNum[0] %>>010</option>
									<option value="011" <%= selectedNum[1] %>>011</option>
									<option value="016" <%= selectedNum[2] %>>016</option>
									<option value="018" <%= selectedNum[3] %>>018</option>
									<option value="019" <%= selectedNum[4] %>>019</option>
								</select>
							</div>
						</div>
					</td>
					<td colspan="2">
						<div class="mt-10">
							<input type="text" name="number2" class="single-input" placeholder="- 제외" onfocus="this.placeholder = ''" onblur="this.placeholder = '- 제외'"
								   value="<%= number2 == null ? "" : number2 %>">
						</div>
					</td>
				</tr>
				<tr>
					<td class="category">이메일</td>
					<td colspan="2">
						<div>
							<input type="text" name="email1" required class="single-input" value="<%= email1 %>">
						</div>
					</td>
					<td>
						<div>
							<select class="email" name="email2" onChange="selectEmail(this)">
								<option value="naver.com" <%= selectedEmail[0] %>>@naver.com</option>
								<option value="gmail.com" <%= selectedEmail[1] %>>@gmail.com</option>
								<option value="daum.net" <%= selectedEmail[2] %>>@daum.net</option>
								<option value="nate.com" <%= selectedEmail[3] %>>@nate.com</option>
								<option value="etc" <%= selectedEmail[4] %>>기타</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td class="category">주소</td>
					<td colspan="3">
						<input class="single-input" type="text" name="address1" readonly value="<%= address1 %>"/>
					</td>
					<td width="100px" style="padding-left: 10px;">
						<button type="button" class="genric-btn info-border" onclick="openZipSearch()">검색</button>
					</td>
				</tr>
				<tr>
					<td class="category">상세 주소</td>
					<td colspan="3">
						<input class="single-input" type="text" name="address2" value="<%= address2 %>"/>
					</td>
				</tr>

				<script>
					function openZipSearch() {
						new daum.Postcode({
							oncomplete: function(data) {
								$('[name=address1]').val(data.address);
								$('[name=address2]').val(data.buildingName);
							}
						}).open();
					}
				</script>
<!-- 				<tr> -->
<!-- 					<td class="category">주소</td> -->
<!-- 					<td> -->
<!-- 						<div class="mt-10"> -->
<!-- 							<select class="address" name="address1"> -->
<!-- 								<option>시/도</option> -->
<%-- 								<option value="강원도" <%= selectedAddress[0] %>>강원도</option> --%>
<%-- 								<option value="경기도" <%= selectedAddress[1] %>>경기도</option> --%>
<%-- 								<option value="경상남도" <%= selectedAddress[2] %>>경상남도</option> --%>
<%-- 								<option value="경상북도" <%= selectedAddress[3] %>>경상북도</option> --%>
<%-- 								<option value="광주광역시" <%= selectedAddress[4] %>>광주광역시</option> --%>
<%-- 								<option value="대구광역시" <%= selectedAddress[5] %>>대구광역시</option> --%>
<%-- 								<option value="대전광역시" <%= selectedAddress[6] %>>대전광역시</option> --%>
<%-- 								<option value="부산광역시" <%= selectedAddress[7] %>>부산광역시</option> --%>
<%-- 								<option value="서울특별시" <%= selectedAddress[8] %>>서울특별시</option> --%>
<%-- 								<option value="울산광역시" <%= selectedAddress[9] %>>울산광역시</option> --%>
<%-- 								<option value="인천광역시" <%= selectedAddress[10] %>>인천광역시</option> --%>
<%-- 								<option value="전라남도" <%= selectedAddress[11] %>>전라남도</option> --%>
<%-- 								<option value="전라북도" <%= selectedAddress[12] %>>전라북도</option> --%>
<%-- 								<option value="제주특별자치도" <%= selectedAddress[13] %>>제주특별자치도</option> --%>
<%-- 								<option value="충청남도" <%= selectedAddress[14] %>>충청남도</option> --%>
<%-- 								<option value="충청북도" <%= selectedAddress[15] %>>충청북도</option> --%>
<!-- 							</select> -->
<!-- 						</div> -->
<!-- 					</td> -->
<!-- 					<td colspan="2"> -->
<!-- 						<div class="mt-10"> -->
<!-- 							<input type="text" name="address2" class="single-input" placeholder="도로명 주소 입력" onfocus="this.placeholder = ''"  -->
<%-- 								   onblur="this.placeholder = '도로명 주소 입력'" value="<%= address2 == null ? "" : address2 %>"> --%>
<!-- 						</div> -->
<!-- 					</td> -->
<!-- 				</tr> -->
				<tr>
					<td colspan="6">
						<div class="mt-10">
							<br> <br>
							<div id="Btns">
								<input type="submit" class="genric-btn info circle" value="정보 수정 ">
								&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="reset" class="genric-btn danger circle" value="수정 취소">
							</div>
						</div>
					</td>
				</tr>

			</table>
		</form>

	</main>
	<%@ include file="../common/footer.jsp" %>
	<div id="back-top" >
   		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>

	<!-- java script -->
	<script>
		function selectEmail(ele) {
			var $ele = $(ele);
			var $email2 = $('input[name=email2]'); 
			if ($ele.val() == "etc") {
				$email2.attr('readonly', false);
				$email2.val('');
			} else {
				$email2.attr('readonly', true);
				$email2.val($ele.val());
			}
		}
		
		function send(){
			var pwd1 = document.getElementsByName('password');
			var pwd2 = document.getElementsByName('passConfirm'); 
			var pwInput = document.getElementsByName('passwordInput');
			
			if(pwd1[0].value == pwd2[0].value){
				if(pwd1[0].value == ""){
					pwInput[0].value = 0;
				} else{
					pwInput[0].value = 1;
				}
				return true;
			} else{
				alert('비밀번호가 같지 않습니다.');
				pwd2.focus();
				return false;
			}
			
			 var pw = $("#pwdCheck").val();
			 var num = pw.search(/[0-9]/g);
			 var eng = pw.search(/[a-z]/ig);
			 var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

			 if(pw.length < 8 || pw.length > 20){

			  alert("8자리 ~ 20자리 이내로 입력해주세요.");
			  return false;
			 }else if(pw.search(/\s/) != -1){
			  alert("비밀번호는 공백 없이 입력해주세요.");
			  return false;
			 }else if(num < 0 || eng < 0 || spe < 0 ){
			  alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
			  return false;
			 }else {
			   console.log("통과"); 
			    return true;
			 }
		}
	</script>

	<!-- JS here -->

	<script src="<%=request.getContextPath()%>/assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="<%=request.getContextPath()%>/assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/popper.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="<%=request.getContextPath()%>/assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="<%=request.getContextPath()%>/assets/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
	<script src="<%=request.getContextPath()%>/assets/js/wow.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/animated.headline.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.magnific-popup.js"></script>

	<!-- Date Picker -->
	<script src="<%=request.getContextPath()%>/assets/js/gijgo.min.js"></script>
	<!-- Nice-select, sticky -->
	<script src="<%=request.getContextPath()%>/assets/js/jquery.nice-select.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.sticky.js"></script>

	<!-- counter , waypoint,Hover Direction -->
	<script src="<%=request.getContextPath()%>/assets/js/jquery.counterup.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/waypoints.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.countdown.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/hover-direction-snake.min.js"></script>

	<!-- contact js -->
	<script src="<%=request.getContextPath()%>/assets/js/contact.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.form.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.validate.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/mail-script.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="<%=request.getContextPath()%>/assets/js/plugins.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/all.min.js"></script>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</body>
</html>