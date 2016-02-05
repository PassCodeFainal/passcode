<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>   
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%

	String eno1= request.getAttribute("eno").toString();
	String pno = request.getAttribute("pno").toString();
	String mno = request.getAttribute("mno").toString();
	String lano1 = request.getAttribute("lano").toString();
	String eno2 = Integer.toString(Integer.parseInt(eno1)+1);
	String eno3 = Integer.toString(Integer.parseInt(eno2)+1);
	String lano2 = Integer.toString(Integer.parseInt(lano1)+1);
	String lano3 = Integer.toString(Integer.parseInt(lano2)+1);
	SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
	Date now = new Date();
	String date = String.format("%tY-%<tm-%<td", now);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<form name="resume" action="pass.go" method="post">
		<input type="hidden" value="re_ins" name="loc" /> 
		<table border="1">
			<tr>
				<td colspan="6" align="center">신상정보
				<input type="hidden" value="<%=pno%>" name="pro_no"/></td>
				<input type="hidden" value="aa" name="pro_id" />
			</tr>
			<tr>
				<td rowspan="4" colspan="2" width="20%">이미지</td>
			</tr>
			<tr>
				<th>성명</th>
				<td><input type="text" name="pro_name" /></td>
				<th>영문 성명</th>
				<td><input type="text" name="pro_ename" /></td>
			</tr>
			<tr>
				<th>지원 구분</th>
				<td><input type="text" name="pro_part" /></td>
				<th>희망 연봉</th>
				<td><input type="text" name="pro_pay" /></td>
			</tr>
			<tr>
				<th>휴대폰</th>
				<td><input type="text" name="pro_tel" /></td>
				<th>이메일</th>
				<td><input type="text" name="pro_mail" /></td>
			</tr>
			<tr>
				<td colspan="2">이미지넣기</td>
				<th>주소</th>
				<td colspan="3" width="70px"><input type="text"
					name="pro_address" /></td>
			</tr>
		</table>
		 <table border="1">
			<tr>
				<td colspan="6" align="center">학력사항
				<input type="hidden" value="<%=eno1%>" name="edu_no1">
			<input type="hidden" value="<%=eno2%>" name="edu_no2">
			<input type="hidden" value="<%=eno3%>" name="edu_no3">
			<input type="hidden" value="aa" name="edu_id" /></td>
			</tr>
			<tr>
				<th width="60">학교명</th>
				<th width="60">전공</th>
				<th width="60">부전공</th>
				<th width="20">학점</th>
				<th width="30">입학일</th>
				<th width="30">졸업일</th>
			</tr>
			<tr>
				<td width="60"><input type="text" name="edu_school1" /></td>
				<td width="60"><input type="text" name="edu_major1" /></td>
				<td width="60"><input type="text" name="edu_submajor1" /></td> 
			    <td width="20"><input type="text" name="edu_grade1" /></td>
				<td width="30"><input type="text" name="edu_sdate1" value="<%=date%>"/></td>
				<td width="30"><input type="text" name="edu_edate1" value="<%=date%>"/></td>
			</tr>
			<tr>
				<td width="60"><input type="text" name="edu_school2" /></td>
				<td width="60"><input type="text" name="edu_major2" /></td>
				<td width="60"><input type="text" name="edu_submajor2" /></td>
				<td width="20"><input type="text" name="edu_grade2" /></td>
			 	<td width="30"><input type="text" name="edu_sdate2" value="<%=date%>"/></td>
				<td width="30"><input type="text" name="edu_edate2" value="<%=date%>"/></td> 
			</tr>
			<tr>
				<td width="60"><input type="text" name="edu_school3"/></td>
				<td width="60"><input type="text" name="edu_major3"/></td>
				<td width="60"><input type="text" name="edu_submajor3" /></td>
				<td width="20"><input type="text" name="edu_grade3" /></td>
				<td width="30"><input type="text" name="edu_sdate3" value="<%=date%>" /></td>
				<td width="30"><input type="text" name="edu_edate3" value="<%=date%>"/></td> 
			</tr> 
		</table>
		<table border="1">
		<tr>
				<td colspan="6" align="center">병력사항
				<input type="hidden" value="<%=mno%>" name="mil_no">
				<input type="hidden" value="aa" name="mil_id"/>
				</td>
				
		</tr>
		<tr>
				<th width="60">병역</th>
				<th width="60">군별</th>
				<th width="60">계급</th>
				<th width="20">병과</th>
				<th width="30">입대일</th>
				<th width="30">전역일</th>
			</tr>
			
			<tr>
				<td width="60"><input type="text" name="mil_div"/></td>
				<td width="60"><input type="text" name="mil_group"/></td>
				<td width="60"><input type="text" name="mil_class"/></td> 
			    <td width="20"><input type="text" name="mil_lance"/></td>
				<td width="30"><input type="text" name="mil_sdate" value="<%=date%>"/></td>
				<td width="30"><input type="text" name="mil_edate" value="<%=date%>"/></td>
			</tr>
		</table>
		
		<table border="1">
		<tr>
				<td colspan="6" align="center">어학 능력
				<input type="hidden" value="<%=lano1%>" name="lang_no1">
				<input type="hidden" value="<%=lano2%>" name="lang_no2">
				<input type="hidden" value="<%=lano3%>" name="lang_no3">
				<input type="hidden" value="aa" name="lang_id"/>
				</td>
				
		</tr>
		<tr>
				<th width="60">구분</th>
				<th width="60">자격명</th>
				<th width="60">등급</th>
				<th width="20">기관</th>
				<th width="30">취득일</th>
				<th width="30">만료일</th>
			</tr>
			
			<tr>
				<td width="60"><input type="text" name="lang_div1"/></td>
				<td width="60"><input type="text" name="lang_title1"/></td>
				<td width="60"><input type="text" name="lang_class1"/></td> 
			    <td width="20"><input type="text" name="lang_institute1"/></td>
				<td width="30"><input type="text" name="lang_sdate1" value="<%=date%>"/></td>
				<td width="30"><input type="text" name="lang_edate1" value="<%=date%>"/></td>
			</tr>
			
				<tr>
				<td width="60"><input type="text" name="lang_div2"/></td>
				<td width="60"><input type="text" name="lang_title2"/></td>
				<td width="60"><input type="text" name="lang_class2"/></td> 
			    <td width="20"><input type="text" name="lang_institute2"/></td>
				<td width="30"><input type="text" name="lang_sdate2" value="<%=date%>"/></td>
				<td width="30"><input type="text" name="lang_edate2" value="<%=date%>"/></td>
			</tr>
			
				<tr>
				<td width="60"><input type="text" name="lang_div3"/></td>
				<td width="60"><input type="text" name="lang_title3"/></td>
				<td width="60"><input type="text" name="lang_class3"/></td> 
			    <td width="20"><input type="text" name="lang_institute3"/></td>
				<td width="30"><input type="text" name="lang_sdate3" value="<%=date%>"/></td>
				<td width="30"><input type="text" name="lang_edate3" value="<%=date%>"/></td>
			</tr>
			
		</table>
		
		
		
		
		
		
		<input type="submit" value="저장"/>
		
	</form> 
</body>
</html>