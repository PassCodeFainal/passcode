<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>나의 활동사항</title>
</head>
<body>
<div id="license1" style="height: 400px;">
<table border="1">
	<tr><th>취득일자</th><th>만료일자</th><th>자격명</th><th>발행처</th><th>비고</th><th>수정/삭제</th></tr>
	<tr><td>-----</td><td>-----</td><td>-----</td><td>-----</td><td>-----</td><td>수정/삭제</td></tr>
</table>
</div>
페이징처리<br/>
검색
<div id="license2" style="height: 200px; margin-top: 50px;">
자격증 추가 +
<form>
<table border="1">
	<tr><th>취득일자</th><th>만료일자</th><th>자격명</th><th>발행처</th><th>비고</th></tr>
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
		</td>
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
	</tr>
</table>
</form>
</div>
</body>
</html>