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
<script
	src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4e2e63f364b4331b"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript">
	var addthis_config = {
		"data_track_clickback" : true
	};

</script>
<body>
	<jsp:include page="index/index_top.jsp"></jsp:include>
	<!-- 자르기 시작 -->

	<%
		String loc  = (String)request.getAttribute("loc");
		
		if(loc==null){
			loc = "main";
			String ploc = request.getParameter("loc");
			if(ploc!=null){
				loc = ploc;
			}
		}
		if (loc.equals("main")) {
	%>
	<div class=totalCount>
		<p>지금도 000건의 이력서와</p>
		<p>000건의 자소서가</p>
		<p>작성되고 있습니다.</p>
	</div>
	<div class=jobPosting>
		<p>채용 공고 최신 리스트</p>
	</div>
	<div class=slider>
		<a href="coun.go?loc=afterlist">컨설팅 신청하러가기</a>
	</div>
	<%
		} else if (loc.equals("intro")) {
	%>
	<jsp:include page="MyDocument/introdution.jsp"></jsp:include>
	<%
		} else if (loc.equals("myac")) {
	%>
	<jsp:include page="MyDocument/MyActiveMain.jsp"></jsp:include>
	<%
		} else if (loc.equals("resume")) {
	%>
	<jsp:include page="MyDocument/resume.jsp"></jsp:include>
	<%
		} else if (loc.equals("afterlist")) {
	%>
	<jsp:include page="Coun/afterList.jsp"></jsp:include>
	<%
		} else if (loc.equals("afterdetail")) {
	%>
	<jsp:include page="Coun/afterDetail.jsp"></jsp:include>
	<%
		} else if (loc.equals("afterwrite")) {
	%>
	<jsp:include page="Coun/afterWrite.jsp"></jsp:include>
	<%
		} else if (loc.equals("-")) {
	%>

	<%
		} else if (loc.equals("scrape")) {
	%>
	<jsp:include page="MyPage/myScrape.jsp" />
	<%
		} else if (loc.equals("mywrite")) {
	%>
	<jsp:include page="MyPage/myWrite.jsp" />
	<%
		} else if (loc.equals("mycoun")) {
	%>
	<jsp:include page="MyPage/myCoun.jsp" />
	<%
		} else if (loc.equals("hirecal")) {
	%>
	<jsp:include page="Hire/hireCal.jsp" />
	<%
		} else if (loc.equals("hireinfo")) {
	%>
	<jsp:include page="Hire/hireInfo.jsp" />
	<%
		} else if (loc.equals("share")) {
	%>
	<jsp:include page="Info/share.jsp" />
	<%
		} else if (loc.equals("free")) {
	%>
	<jsp:include page="Info/free.jsp" />
	<%
		} else if (loc.equals("coun")) {
	%>
	<jsp:include page="Coun/coun.jsp" />
	<%
		} else if (loc.equals("myWriteDetail")) {
	%>
	<jsp:include page="MyPage/myWriteDetail.jsp" />
	<%
		} else if (loc.equals("myNewWrite")) {
	%>
	<jsp:include page="MyPage/myNewWrite.jsp" />
	<%
		} else if (loc.equals("myWriteUp")) {
	%>
	<jsp:include page="MyPage/myWriteUp.jsp" />
	<%
		} else if (loc.equals("mycoun")) {
	%>
	<jsp:include page="MyPage/myCoun.jsp" />
	<%
		} else if (loc.equals("hireinfodetail")) {
	%>
	<jsp:include page="Hire/hireInfoDetail.jsp" />
	<%
		} else if (loc.equals("register")) {
	%>
	<jsp:include page="Member/register.jsp" />
	<%
		} else if (loc.equals("login")) {
	%>
	<jsp:include page="Member/login.jsp" />
	<%
		}
	%>
	<%-- 	<jsp:include page="index/index_bottom.jsp"></jsp:include>
 --%>
</body>

</html>
<!--comment-->
