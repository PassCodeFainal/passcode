<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="menu" style="height: 600px; width: 250px; float: left;">
		<%@ include file="MyActiveMenu.jsp"%>
</div>
<div id="main" style="height: 600px; margin-left: 250px;">
	<%
	if (request.getParameter("list") != null) {
		if (request.getParameter("list").equals("inter")) {
	%>
			<%@ include file="InterList.jsp"%>
	<%
		}else if(request.getParameter("list").equals("domestic")){
	%>
			<%@ include file="DomesticList.jsp"%>
	<%		
		}else if(request.getParameter("list").equals("career")){
	%>
			<%@ include file="CareerList.jsp"%>
	<%		
		}else if(request.getParameter("list").equals("license")){
	%>
			<%@ include file="LicenseList.jsp"%>
	<%		
		}else if(request.getParameter("list").equals("language")){
	%>
			<%@ include file="LanguageList.jsp"%>
	<%		
		}else if(request.getParameter("list").equals("private")){
	%>
			<%@ include file="PrivateList.jsp"%>
	<%		
		}
	}else{
	%>
		<%@ include file="ActiveHead.jsp"%>
	<%} %>
</div>
</body>
</html>