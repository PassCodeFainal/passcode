<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판</title>
</head>
<body>

새글쓰기|답글    최신목록|목록|윗글|아랫글
<table>
	<tr><td>제목|작성된 part| 스크랩하기</td></tr>
	<tr><td>작성자|조회수|추천수|등록일</td></tr>
	<tr><td>글내용</td></tr>
	<tr><td>첨부파일</td></tr>
	<tr><td>댓글 수 | 스크랩하기</td></tr>
</table>

<form action='' method='post'>
<textarea rows="3" cols="10">댓글 작성</textarea> 
<input type="submit" value="등록">
</form>

<table>
<!-- for -->
<tr><td>댓글 작성 아이디 | 작성일</td></tr>
<tr><td>댓글 내용</td></tr>
<!-- for -->
</table>

새글쓰기|답글    최신목록|목록|윗글|아랫글

</body>
</html>