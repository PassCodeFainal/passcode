<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>컨설팅 후기</title>
</head>
<body>

<div class=counafterlist>
	새글쓰기|최근목록
	<form name="coun" action="coun.go">
		<table border="1">
			<tr><th>번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>조회수</th></tr>
			
			<tr><td>번호</td><td><a href="coun.go?loc=afterdetail">제목</a></td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
			
			<tr><td colspan='5'>페이징</td></tr>
		</table>
	</form>
	<a href="coun.go?loc=afterwrite">새글쓰기</a>|검색|최근목록
	</div>

</body>
</html>