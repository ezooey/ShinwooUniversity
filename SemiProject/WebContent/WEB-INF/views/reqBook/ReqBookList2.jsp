<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, reqBook.model.vo.ReqBook"%>
<%
	ReqBook r = (ReqBook)request.getAttribute("r"); 
	ArrayList<ReqBook> list = (ArrayList)request.getAttribute("list");
%>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>도서 신청 사유</title>
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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js" ></script>
<script type="text/javascript">

    function send() {

        var data = document.myform.sender.value;

        window.opener.sendMeData(data)

        window.close();

    }

</script>

</head>
<body>
		<h2 align="center">신청도서 상세 페이지</h2>
		<div class="tableArea">
				<table style="border:1">
					<tr>
						<th>제목</th>
						<td colspan="3" width="300px">
							<%= r.getReqBookTitle() %>
							<input type="hidden" size="50" name="title">
						</td>				
					</tr>
					<tr>
						<th>작성자</th>
						<td>
							<%= r.getReqBookWriter() %>
							<input type="hidden" name="nickName">
						</td>
						<th>작성일</th>
						<td>
							<%= r.getReqBookDate() %>
							<input type="hidden" name="date">
						</td>
					</tr>
					<tr>
						<th>도서 신청 사유</th>
					</tr>
					<tr>
						<td colspan="4">
							<textarea name="content" cols="60" rows="5" style="resize:none;"  readonly><%= r.getReqBookComment() %></textarea> 
							<input type="hidden" name="no" >
						</td>
					</tr>
				</table>
		</div>	
		<br>
		<form action="<%= request.getContextPath() %>/reqBook.def" method="post">
		<h3 align="center">도서 신청 거절 사유 </h3>
				<table>
					<tr>
						<td><textarea id="reason1" name="reason" cols="60" rows="5" style="resize:none;" placeholder="거절사유를 입력하시오"></textarea></td>
					</tr>
				</table>
		<br><br>
		<div class="bottomBtn" align="center">
    	<input type="button" class="genric-btn primary circle" value="거절" onclick="reject();">
    	<input type="button" class="genric-btn primary circle" value="승인" onclick="location.href='<%= request.getContextPath() %>/reqBook.confi?reqNo=<%= r.getReqBookNo() %>'">
    	</div>
 		</form>
 
		<script>
			function reject (){
				var Rreason = document.getElementById('reason1').value;
				location.href='<%= request.getContextPath() %>/reqBook.def?reqNo=<%= r.getReqBookNo() %>&&reason=' + Rreason;
			}
		</script>
	
</body>

</html>
