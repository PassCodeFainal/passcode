<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("m_id");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>id 중복검사</title>
<link href="../style/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<b><%=id %></b>
<%
if(b){
%>
   는 이미 사용중인 id입니다.<p/>
   <a href="#" 
   onclick="opener.document.reg.id.focus(); window.close()">닫기</a>
<%   
}else{
%>
   는 사용가능합니다.<p/>
   <a href="#" 
   onclick="opener.document.reg.pw1.focus(); window.close()">닫기</a>
<%
}
%>
</body>
</html>

 --%>


<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberMgr" class="mh.MemberDao" />
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("m_id");
boolean b = memberMgr.checkId(id); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>id 중복검사</title>
<link href="../style/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<b><%=id %></b>
<%
if(b){
%>
   는 이미 사용중인 id입니다.<p/>
   <a href="#" 
   onclick="opener.document.reg.id.focus(); window.close()">닫기</a>
<%   
}else{
%>
   는 사용가능합니다.<p/>
   <a href="#" 
   onclick="opener.document.reg.pw1.focus(); window.close()">닫기</a>
<%
}
%>
</body>
</html>
  --%>