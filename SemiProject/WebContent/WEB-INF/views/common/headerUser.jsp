<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.vo.Member,java.util.ArrayList"%>
<% Member loginUser1=(Member)session.getAttribute("loginUser"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신우대학교 메인</title>
<style>
   .questionIcon {
      font-size: 80%;
      margin-top: 20%;
      color: #6785FF;
   }
   
   .header-btn1{
      padding-left: 0px;
   }
   
   #question {
      cursor: pointer;
   }
</style>
</head>
 <body>
    <header>
        <!-- Header Start -->
        <div class="header-area">
            <div class="main-header header-sticky">
                <!-- Logo -->
                <div class="header-left">
                    <div class="logo">
                        <a href="index.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
                    </div>
                    <div class="menu-wrapper  d-flex align-items-center">
                        <!-- Main-menu -->
                        <div class="main-menu d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="index.html">도서관 소개</a></li>
                                    <li><a href="<%= request.getContextPath() %>/reqbookForm.bo">도서 신청</a></li>
                                    <li><a href="searchBook.sr">도서 검색</a></li>
                                    <li><a href="<%= request.getContextPath() %>/reviewList.rv">독후감</a></li>
                                    <li><a href="<%= request.getContextPath() %>/myPage.me">마이페이지</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="header-right d-none d-lg-block">
                    <a id="question" onclick="location.href='<%= request.getContextPath() %>/questionList.li'" class="header-btn1">
                       <span class="questionIcon"><i class="far fa-comment-dots"></i>&nbsp;&nbsp;1:1 문의</span>
                    </a>
                    <a onclick="window.open('alarmList.al?mId=<%= loginUser1.getMemberId() %>', 'alarmList', 'width=500, height=270');" class="header-btn1"><img src="assets/img/icon/bell.png" alt=""></a>
                    <button type="button" class="genric-btn primary circle" id="login" onclick="location.href='<%= request.getContextPath() %>/logout.me'">로그아웃</button>
            </div>
         </div>   
      </div>      
        <!-- Header End -->
    </header>
</body>
</html>