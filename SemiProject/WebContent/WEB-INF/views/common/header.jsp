<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신우대학교 메인</title>
</head>
 <body>
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
                    <button type="button" class="genric-btn primary circle" id="login">로그인</button>
				</div>
			</div>	
		</div>		
        <!-- Header End -->
    </header>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="member.vo.Member,java.util.ArrayList" %>
<% Member loginUser=(Member)session.getAttribute("loginUser"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% if(loginUser == null){ %>
	<%@ include file="../common/headerVisitor.jsp" %>
	<%} else if(loginUser.getMemberType().equals("MASTER")){ %>
	<%@ include file="../common/headerAdmin.jsp" %>
	<%} else if(loginUser.getMemberType().equals("user")){ %>
	<%@ include file="../common/headerUser.jsp" %>
	<%} %>
>>>>>>> ad7d00f2c6f4e3643c20c6a451564c43fb4d504f
</body>
</html>