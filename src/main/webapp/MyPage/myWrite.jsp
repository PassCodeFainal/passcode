<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>나의 게시글</title>
</head>
<body>
<!-- 내용 -->

	<div class=mywritemain>
	새글쓰기|최근목록
	<form name="mywrite" action="mypage.go">
		<table border="1">
			<tr><th>번호</th><th>제목</th><th>작성위치</th><th>작성일</th><th>조회수</th><th>수정|삭제</th></tr>
			
			<tr><td>번호</td><td><a href="mypage.go?loc=writedetail">제목</a></td><td>작성위치</td><td>작성일</td><td>조회수</td><td>수정|삭제</td></tr>
			
			<tr><td colspan='5'>페이징</td></tr>
		</table>
	</form>
	<a href="mypage.go?loc=newwrite">새글쓰기</a>|검색|최근목록
	</div>
	
<!-- 내용 -->
</body>
</html>