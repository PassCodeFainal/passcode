<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>이력서 닷컴</title>
<meta charset="utf-8">
</head>
<link rel="stylesheet" href="css/style.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script
	src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4e2e63f364b4331b"></script>
<script type="text/javascript">
	var addthis_config = {
		"data_track_clickback" : true
	};
	function logout() {
		location.href = "member.go?loc=logout";
	};
</script>
<body>
		<div id=header>
			<div class=logo>
				<a href="pass.go?loc=main"><img src="img/logo.png"></a>
			</div>
			<div class=navMenu>
				<ul>
					<li><a>나의 서류</a>
						<ul>
							<li><a href="pass.go?loc=resume">이력서</a></li>
							<li><a href="pass.go?loc=intro">자기소개서</a></li>
							<li><a href="pass.go?loc=myac">나의 활동 내역</a></li>
						</ul></li>
					<li><a>나의 페이지</a>
						<ul>
							<li><a href="">-</a></li>
							<li><a href="mypage.go?loc=scrape">스크랩글관리</a></li>
							<li><a href="mypage.go?loc=mywrite">게시글관리</a></li>
							<li><a href="mypage.go?loc=mycoun">컨설팅</a></li>
						</ul></li>
					<li><a>채용공고</a>
						<ul>
							<li><a href="">채용달력</a></li>
							<li><a href="hire.go?loc=hireinfo">채용정보게시판</a></li>
						</ul></li>
					<li><a>정보마당</a>
						<ul>
							<li><a href="info.go?loc=share">정보공유게시판</a></li>
							<li><a href="info.go?loc=free">자유게시판</a></li>
						</ul></li>
				</ul>
				<div class=login>
				
				
					<%	
					
					String memid = (String)session.getAttribute("idKey");
					if(memid==null){ %>
					<a href="member.go?loc=login"><img src="img/login.png"></a>
					<%}else{ %>
					<% out.print(memid+"님 환영합니다." ); %>
					<input type="button" value="로그아웃" onclick="logout()"/>
					<%} %>
					
				</div>
			  </div>
            
        </div>
        <div id=main>
            
            <div class=myForm>
                <div class=myFormContents>
                    
                    
                    
                    <div class=snsAddthisBox>
                        <div class=faceTweet>    
                            <div class="addthis_toolbox addthis_default_style addthis_32x32_style" id=snsBtn>
                                <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                                <a class="addthis_button_tweet"></a>
                            </div>
                        </div>
                        <div class="addthis_toolbox addthis_default_style addthis_32x32_style" id=print>
                            <a class="addthis_button_gmail"></a>
                            <a class="addthis_button_print"></a>
                        </div>
                    </div>
                    
	
</body>
</html>