<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
String result = (String)request.getAttribute("result");
String loc_save = (String)request.getAttribute("loc_save");
if(loc_save==null){
	loc_save = "index";
}
%>
<script type="text/javascript">
window.onload = function(){
	var result = document.getElementsByName("result");
	if("<%=result%>"=="null"){
	}else{
		alert("<%=result%>");
	}
	
}


function logout() {
	location.href = "member.go?loc=logout&loc_save=<%=loc_save %>";
}
function membermodify(){
	location.href = "member.go?loc=modify";
}

</script>
</head>
<body>

<header id="header-full-top" class="hidden-xs header-full">
    <div class="container">
        <div class="header-full-title">
            <h1 class="animated fadeInRight"><a href="index.jsp">artificial <span>reason</span></a></h1>
            <p class="animated fadeInRight">Clean and elegant theme</p>
        </div>
        <nav class="top-nav">
           
                    <!-- 로그인 폼 -->
                    <% 
                    String memid = (String)session.getAttribute("idKey");
					if(memid==null){
					%>
            <div class="dropdown animated fadeInDown animation-delay-11">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Login</a>
                <div class="dropdown-menu dropdown-menu-right dropdown-login-box animated fadeInUp">
                    <form role="form" action="member.go?loc=membercheck" method="post" name="login">
                        <h4>Login Form</h4>
                        <div class="form-group">
                        <input type="hidden" name="loc_save" value="<%=loc_save %>">
                            <div class="input-group login-input">
                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                <input type="text" class="form-control" placeholder="Username" name="mem_id" id="id">
                            </div>
                            <br>
                            <div class="input-group login-input">
                                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                <input type="password" class="form-control" placeholder="Password" name="mem_pass" id="password">
                            </div>
                            <div class="checkbox pull-left">
                                <label>
                                    <input type="checkbox"> Remember me
                                </label>
                            </div>
                            <button type="submit" class="btn btn-ar btn-primary pull-right">Login</button>
                            <div class="clearfix"></div>
                        </div>
                    </form>
                </div>
            </div> <!-- dropdown -->
                    <%}else{out.print(memid + "님 환영합니다." ); %>
                    <input type="button" value="정보수정" onclick="membermodify()"/>
                    <input type="button" value="로그아웃" onclick="logout()"/>
                    <%} %>

            <div class="dropdown animated fadeInDown animation-delay-13">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-search"></i>회원가입</a>
                <div class="dropdown-menu dropdown-menu-right dropdown-search-box animated fadeInUp">
                    <form role="form">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button class="btn btn-ar btn-primary" type="button">Go!</button>
                            </span>
                        </div><!-- /input-group -->
                    </form>
                </div>
            </div> <!-- dropdown -->
        </nav>
    </div> <!-- container -->
</header> <!-- header-full -->
<nav class="navbar navbar-static-top navbar-default navbar-header-full yamm" role="navigation" id="header">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
     
        <!-- Collect the nav links, forms, and other content for toggling -->
     
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">나의서류</a>
                     <ul class="dropdown-menu dropdown-menu-left">
                        <li><a href="pass.go?loc=resume">이력서</a></li>
                        <li><a href="pass.go?loc=intro">자기소개서</a></li>
                        <li class="dropdown-submenu">
                                <a href="javascript:void(0);" class="has_children">나의 활동내역</a>
                                <ul class="dropdown-menu dropdown-menu-left">
                                <li><a href="page_about.html">대외활동내역</a></li>
                            </ul>
                        </li>
                      </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">나의페이지</a>
                     <ul class="dropdown-menu dropdown-menu-left">
                        <li><a href="index.html">-</a></li>
                        <li><a href="home_services.html">게시글관리</a></li>
                        <li><a href="home_full.html">컨설팅</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">채용공고</a>
                     <ul class="dropdown-menu dropdown-menu-left">
                        <li><a href="index.html">채용달력</a></li>
                        <li><a href="home_services.html">채용정보게시판</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">정보마당</a>
                     <ul class="dropdown-menu dropdown-menu-left">
                        <li><a href="blog.html">정보공유게시판</a></li>
                        <li><a href="blog_left.html">자유게시판</a></li>
                    </ul>
                </li>
               
             </ul>
              <ul class="top-nav-social hidden-sm" style="float: right;">
                <li><a href="#" class="animated fadeIn animation-delay-6 rss"><i class="fa fa-rss"></i></a></li>
                <li><a href="#" class="animated fadeIn animation-delay-7 twitter"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#" class="animated fadeIn animation-delay-8 facebook"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#" class="animated fadeIn animation-delay-9 google-plus"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#" class="animated fadeIn animation-delay-9 instagram"><i class="fa fa-instagram"></i></a></li>
                <li><a href="#" class="animated fadeIn animation-delay-8 vine"><i class="fa fa-vine"></i></a></li>
                <li><a href="#" class="animated fadeIn animation-delay-7 linkedin"><i class="fa fa-linkedin"></i></a></li>
                <li><a href="#" class="animated fadeIn animation-delay-6 flickr"><i class="fa fa-flickr"></i></a></li>
            </ul>
        </div><!-- navbar-collapse -->
    </div><!-- container -->
</nav>
</body>
</html>