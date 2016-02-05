<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>컨설팅</title>
<style type="text/css">
#coun_manager{
	height: 250px;
}
#coun_after{
	height: 400px;
}
</style>
</head>
<body>
<jsp:include page="../index/index_top.jsp"/>
<!-- 내용 -->

<div id="coun_manager">
	<jsp:include page="managerList.jsp"/>
</div>

<div id="coun_after">
<%
String loc = request.getParameter("loc");

if(loc==null){
	loc = "afterlist";
}

if(loc.equals("afterlist")){
%>
	<jsp:include page="afterList.jsp"/>
<%	
}else if(loc.equals("afterdetail")){
%>
	<jsp:include page="afterDetail.jsp"/>
<%	
}else if(loc.equals("afterwrite")){
%>
	<jsp:include page="afterWrite.jsp"/>
<%	
}
%>
</div>

<!-- 내용 -->
<%-- <jsp:include page="../index/index_bottom.jsp"/> --%>
</body>
</html>