<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">
#option {
	background-color: white;
	width: auto;
	line-height: 30px;
	border: 5px groove;
	border-radius: 10px 10px 10px 10px/10px 10px 10px 10px;
	margin-top: 5%;
	height: 50px;
}

#option button {
	width: 23%;
}

#title {
	background-color: white;
	width: auto;
	line-height: 30px;
	border: 5px groove;
	border-radius: 10px 10px 10px 10px/10px 10px 10px 10px;
	margin-top: 5%;
	margin-top: 1%;
}

#main {
	height: 300px;
	margin-top: 3%;
}

#title_text {
	border: none;
	width: 50%;
}

button {
	width: 10%;
	height: 40px;
}

#hr {
	width: 98%;
}

#tx {
	border: none;
	height: 240px;
	width: 98%;
	max-width: 98%;
	overflow: hidden;
	flex-direction: column;
	cursor: auto;
	text-align: start;
	white-space: pre-wrap;
	word-wrap: break-word;
	background-color: undefined;
}
</style>
<script>
	$(document).ready(function() {
		$('#tx').keyup(function() {
			var inputlen = $(this).val().length;
			var leng = $('#dd').val();
			var remain = inputlen;
			$('#type_num').html(remain);
			if (remain == leng) {
				alert("글자수를 모두 채웠습니다.");
				$('#txt').val($('#tx').val());
			} else if (remain > leng) {
				alert("글자수를 모두 채웠습니다.");
				$('#tx').val($('#txt').val());
				$('#type_num').html(remain - 1);
			}

		})
		$('#save').click(function() {
			
			if ($('#intro_id').val()=="null") {
				alert("로그인 후 이용가능합니다.")
				return;
			} else {
				if($('#intro_name_text').val()==""){
					alert("제목을 입력하여 주세요.")
					return;
				}else if($('#title_text').val()==""){
					alert("질문을 입력하여 주세요.")
					return;
				}else if($('#tx').val()==""){
					alert("답변을 입력하여 주세요")
					return;
				}
				intro.submit();
				return;
			}
		}) 
		$('#reset').click(function() {
			$('#intro_name_text').val(null);
			$('#title_text').val(null);
			$('#tx').val(null);
		}) 
		
		$('#load').click(function() {
			if ($('#intro_id').val()=="null") {
				alert("로그인 후 이용가능합니다.")
				return;
			} else {
			url = "pass.go?loc=loadIntro";
			window.open(url, "post", 
					"toolbar=no, width=350, height=300, top=200, left=300, status=yes, scrollbars=yes, menubar=no");
			}
		})

	});
	

	
</script>
</head>
<%
	String suc = (String) request.getAttribute("suc");
	String id = (String)session.getAttribute("idKey");
%>
<body>
	<jsp:include page="../css/script.jsp"></jsp:include>
	<jsp:include page="../index/index_top.jsp"></jsp:include>
	<form action="pass.go?loc=saveIntro" method="post" name="intro">
		<input type="hidden" id="update" value="n" name="update"/>
		<input type="hidden" id="update_no" name="update_no"/>
		<div id="option">
			<input type="button" value="새로쓰기" id="reset">
			<input type="button" value="불러오기" id="load">
			<input type="button" value="저장하기" id="save">
		</div>
		<div id="title">
			<input type="hidden" id="intro_id" name="intro_id" value="<%=id%>" />
			 <span><input type="text" name="intro_title"
				placeholder="제목을 입력하여 주세요." id="intro_name_text"></span>
		</div>
		<div id="title">
			<span ><input type="text" id="title_text" name="intro_que"
				placeholder="질문을 입력하여 주세요."></span>
		</div>
		<div id="main">
			<textarea id="tx" placeholder="답변을 입력하여 주세요." name="intro_ans"></textarea>
			<input type="hidden" id="txt" />
			<hr id="hr" />
			<span id="type_num">0</span>/ <input type="text" id="dd"
				value="1000" />자
		</div>
	</form>
	<jsp:include page="../index/index_bottom.jsp"></jsp:include>
</body>
</html>