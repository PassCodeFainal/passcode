<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>나의 활동사항</title>
</head>
<body>
<div id="domestic1" style="height: 400px;">
<table border="1">
	<tr><th>활동기간</th><th>분류</th><th>분류2</th><th>활동명</th><th>주최/주관</th><th>활동사항</th><th>수정/삭제</th></tr>
	<tr><td>-----</td><td>-----</td><td>-----</td><td>-----</td><td>-----</td><td>-----</td><td>수정/삭제</td></tr>
</table>
</div>
페이징처리<br/>
검색
<div id="domestic2" style="height: 200px; margin-top: 50px;">
대내활동 추가 +
<form>
<table border="1">
	<tr><th>활동기간</th><th>분류</th><th>분류2</th><th>활동명</th><th>주최/주관</th><th>활동사항</th></tr>
	<tr>
		<td>
			<select name="year"> 
		 	<%for(int i=2016; i>1949; i--){ %> 
		 		<option value="<%=i%>"><%=i %>년</option> 
		 	<%} %> 
		 	</select>&nbsp;
		 	<select name="month"> 
		 	<%for(int i=1; i<13; i++){ %> 
		 		<option value="<%=i%>"><%=i %>월</option> 
		 	<%} %> 
		 	</select>&nbsp;
		 	<select name="day"> 
		 	<%for(int i=1; i<32; i++){ %> 
		 		<option value="<%=i%>"><%=i %>일</option> 
		 	<%} %> 
		 	</select>
		 	<br/>
		 	~
		 	<select name="year"> 
		 	<%for(int i=2016; i>1949; i--){ %> 
		 		<option value="<%=i%>"><%=i %>년</option> 
		 	<%} %> 
		 	</select>&nbsp;
		 	<select name="month"> 
		 	<%for(int i=1; i<13; i++){ %> 
		 		<option value="<%=i%>"><%=i %>월</option> 
		 	<%} %> 
		 	</select>&nbsp;
		 	<select name="day"> 
		 	<%for(int i=1; i<32; i++){ %> 
		 		<option value="<%=i%>"><%=i %>일</option> 
		 	<%} %> 
		 	</select>
	 	</td>
		<td>
			<select>
			<option value="해외탐방 및 해외연수">해외탐방 및 해외연수</option>
			<option value="국내외봉사">국내외봉사</option>
			<option value="학생참여">학생참여-홍보대사, 체험단</option>
			<option value="공모전">공모전</option>
			<option value="교육 및 연수">교육 및 연수</option>
			<option value="동아리">동아리</option>
			<option value="기타">기타</option>
			</select>
		</td>
		<td>
			<input type="text"/>
		</td>
		<td>
			<input type="text"/>
		</td>
		<td>
			<input type="text"/>
		</td>
		<td>
			<textarea rows="3" cols="30">역할 및 상세 활동사항을 기입하여 주십시오</textarea>
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>