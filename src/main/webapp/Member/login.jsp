<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
function login(){
	   log.submit();
	}
function regi(){
	location.href = "index.jsp?loc=register";
}


</script>
<title>Insert title here</title>
</head>
<body>
<form action="member.go?loc=loginproc" method="post" name="log">
	<table>
		<tr><th>id</th><td><input type="text" name="mem_id"/></td></tr>
		<tr><th>passwd</th><td><input type="text" name="mem_pass"/></td></tr>
		<tr><td colspan="2"><!-- <input type="button" value="로그인" onclick="login()"/> -->
		<input type="hidden" name="cf" value="y"/>
		<input type="button" value="로그인" onclick="login()"/>
		<input type="button" value="회원가입" onclick="regi()"/></td></tr>		
	</table>
	</form>
</body>
</html>