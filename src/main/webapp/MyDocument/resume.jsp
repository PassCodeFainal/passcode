<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String loc_save = (String)request.getAttribute("loc_save");
	if (loc_save == null) {
		loc_save = "index";
	}
	String id = (String) session.getAttribute("idKey");
	Date now = new Date();
	String date = String.format("%tY-%<tm-%<td", now);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">
table class="table" {
	border-collapse: collapse;
	border-spacing: 0;
}

input {
	width: 98%
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	$("#pro_load").click(function() {
		if ($('#re_id').val()=="null") {
			alert("로그인 후 이용가능합니다.")
			return;
		} else {
			url = "pass.go?loc=loadPro";
			window.open(url,"post","toolbar=no, width=350, height=300," 
					+"top=200, left=300, status=yes, scrollbars=yes, menubar=no");
			}});
	$("#edu_load").click(function() {
		if ($('#re_id').val()=="null") {
			alert("로그인 후 이용가능합니다.")
			return;
		} else {
		url = "pass.go?loc=loadEdu";
		window.open(url, "post", 
				"toolbar=no, width=350, height=300, top=200, left=300, status=yes, scrollbars=yes, menubar=no");
		}
	});	
	$("#mil_load").click(function() {
		if ($('#re_id').val()=="null") {
			alert("로그인 후 이용가능합니다.")
			return;
		} else {
			url = "pass.go?loc=loadMil";
			window.open(url,"post","toolbar=no, width=350, height=300," 
					+"top=200, left=300, status=yes, scrollbars=yes, menubar=no");
			}});
	$("#add_school").click(function() {
				$("#school").append("<tr id='school_tr'><td><input type='hidden' name='edu_no'/>"
						+ "<input type='text' name='edu_school' />"
						+ "</td><td><input type='text' name='edu_major' />"
						+ "</td><td><input type='text' name='edu_submajor' /></td>"
						+ "<td><input type='text' name='edu_grade' /></td>"
						+ "<td><input type='text' name='edu_sdate' /></td>"
						+ "<td><input type='text' name='edu_edate' /></td>"
						+ "<td><font id='del_school' onclick='del()'>-</font></td>"
						+ "</tr>");
		});
	$("#add_lang").click(function() {
		$("#language").append("<tr id='lang_tr'>"
				+"<td><input type='hidden' name='lang_no'/>"
			    +"<input type='text' name='lang_div' /></td>"
				+"<td><input type='text' name='lang_title' /></td>"
				+"<td><input type='text' name='lang_class' /></td>"
				+"<td><input type='text' name='lang_institute' /></td>"
				+"<td><input type='text' name='lang_sdate' /></td>"
				+"<td><input type='text' name='lang_edate' /></td>"
				+"<td><font id='del_lang' onclick='del()'>-</font></td>"
				+"</tr>"
				);
	});
	$("#save").click(function() {
		if ($('#re_id').val()=="null") {
			alert("로그인 후 이용가능합니다.")
			
			return;
		} else {
			resume.submit();
			return;
		}
	})
});
	function del() {
		var edu_school = document.getElementsByName("edu_school");
		for(var i=edu_school.length;i>0;i--){
			if(edu_school[i-1].value==""){
				if(i-1!=0){
				$("#school_tr").next().remove();
				return;
				}else{
				$("#school_tr").remove();
				return;
				}
			}
		}
		var lang_div = document.getElementsByName("lang_div");
		for(var i=lang_div.length;i>0;i--){
			if(lang_div[i-1].value==""){
				if(i-1!=0){
				$("#lang_tr").next().remove();
				return;
				}else{
				$("#lang_tr").remove();
				return;
				}
			}
		}		
	}
</script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, 
minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>Artificial Reason</title>
<link rel="shortcut icon"
href="<%=request.getContextPath()%>/bootstrap/assets/img/favicon.png" />
<meta name="description" content="">
</head>
<body>
	<jsp:include page="../css/script.jsp"></jsp:include>
	<jsp:include page="../index/index_top.jsp"></jsp:include>
	<div class="container">
		<form name="resume" action="pass.go" method="post">
			<input type="hidden" id="re_id" name="intro_id" value="<%=id%>" />
			 <input type="hidden" name="loc_save" value="<%=loc_save%>" /> 
			 <input type="hidden" value="<%=id%>" name="edu_id" />
			 <input type="hidden" value="re_ins" name="loc" />
			<table class="table table-bordered" border="1" id="profile">
				<tr>
					<td colspan="6" align="center">신상정보 
					<input type="hidden" name="pro_no" /> 
					<input type="hidden" name="pro_update" value="n" />
					<button type="button" id="pro_load" class="btn btn-block btn-ar btn-primary">불러오기</button>
					<input type="hidden" value="<%=id%>" name="pro_id" />
					</td>
				</tr>
				<tr>
					<td rowspan="4" colspan="2"><img></td>
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
					<td colspan="2"><input type="file" name="pro_image"></td>
					<th>주소</th>
					<td colspan="3"><input type="text" name="pro_address" /></td>
				</tr>
			</table>
			<table class="table" border="1" id="school">
				<tr>
					<td colspan="7" align="center">학력사항 
					<button type="button"
						 id="edu_load" class="btn btn-block btn-ar btn-primary" >불러오기</button>
					</td>
				</tr>
				<tr>
					<th>학교명</th>
					<th>전공</th>
					<th>부전공</th>
					<th>학점</th>
					<th>입학일</th>
					<th>졸업일</th>
					<th><font id="add_school">+</font></th>
				</tr>
				<tr id="school_tr">
					<td><input type="hidden" name="edu_no" /> 
					<input type="hidden" name="edu_update" value="n" /> 
					<input type="text" name="edu_school" /></td>
					<td><input type="text" name="edu_major" /></td>
					<td><input type="text" name="edu_submajor" /></td>
					<td><input type="text" name="edu_grade" /></td>
					<td><input type="text" name="edu_sdate" /></td>
					<td><input type="text" name="edu_edate" /></td>
					<td><font id="del_school" onclick="del()">-</font></td>
				</tr>
			</table>
			<table class="table" border="1" id="military">
				<tr>
					<td colspan="6" align="center">병력사항 
					<input type="hidden" name="mil_no" /> 
						<input type="hidden" name="mil_update" value="n" />
						<button type="button" id="mil_load" class="btn btn-block btn-ar btn-primary">불러오기</button>
						<input type="hidden" value="<%=id%>" name="mil_id" />
					</td>
				</tr>
				<tr>
					<th>병역</th>
					<th>군별</th>
					<th>계급</th>
					<th>병과</th>
					<th>입대일</th>
					<th>전역일</th>
				</tr>
				<tr>
					<td><input type="text" name="mil_div" /></td>
					<td><input type="text" name="mil_group" /></td>
					<td><input type="text" name="mil_class" /></td>
					<td><input type="text" name="mil_lance" /></td>
					<td><input type="text" name="mil_sdate" /></td>
					<td><input type="text" name="mil_edate" /></td>
				</tr>
			</table>
			<table class="table" border="1" id="language">
				<tr>
					<td colspan="7" align="center">어학 능력 <input type="hidden"
						value="aa" name="lang_id" />
					</td>

				</tr>
				<tr>
					<th>구분</th>
					<th>자격명</th>
					<th>등급</th>
					<th>기관</th>
					<th>취득일</th>
					<th>만료일</th>
					<th><font id="add_lang">+</font></th>
				</tr>

				<tr id="lang_tr">
					<td><input type='hidden' name='lang_no'/>
					<input type="text" name="lang_div" /></td>
					<td><input type="text" name="lang_title" /></td>
					<td><input type="text" name="lang_class" /></td>
					<td><input type="text" name="lang_institute" /></td>
					<td><input type="text" name="lang_sdate" /></td>
					<td><input type="text" name="lang_edate" /></td>
					<td><font id="del_lang" onclick="del()">-</font></td>
				</tr>
			</table>
			<button type="reset" class="btn btn-block btn-ar btn-primary">다시쓰기</button>
			<button type="button" id="save" class="btn btn-block btn-ar btn-primary">저장</button>
		</form>
	</div>
	<jsp:include page="../index/index_bottom.jsp"></jsp:include>

</body>
</html>