<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style type="text/css">
#pwd-check{
  color : red;
}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- <script src="js/script.js"></script> -->
<script type="text/javascript">

	$(document).ready(function() { 
		
		   //2.닉네임 중복 체크	
		$('#nick').blur(function() {
			$.ajax({
				type : "POST",
				url : '/passcode/member.go',
				data : 'loc=nicknamecheck&mem_nickname=' + $('#nick').val(),
				dataType: 'JSON',
				success : function(data) {
					data = data.nick
					console.log(data)
					if(data == null){
						$('#NC').text('사용할 수 있는 닉네임 입니다.');
						$('#gojoin').removeAttr('disabled');
						return;
					}else{
						$('#NC').text('사용중인 닉네임 입니다. 다른 닉네임를 적어 주세요.');
						$('#gojoin').attr('disabled', 'disabled').focus();
					}
				},	
				error : function() {
					
					alert("닉네임 중복체크 에러");
				}
			});
		});
		
		
	
		//1. ID중복 체크 
		$('#id').blur(function() {
			$.ajax({
				type : "POST",
				url : '/passcode/member.go',
				data : 'loc=idcheck&mem_id=' + $('#id').val(),
				dataType: 'JSON',
				success : function(data) {
					data = data.more
					//console.log(data)
					if(data == null){
						$('#IC').text('사용할 수 있는 아이디 입니다.');
						$('#gojoin').removeAttr('disabled');
						return;
					}else{
						$('#IC').text('사용중인 아이디 입니다. 다른 아이디를 적어 주세요.');
						$('#gojoin').attr('disabled', 'disabled').focus();
					}
				},	
				error : function() {
					
					alert("아이디 중복체크 에러");
				}
			});
		});
	 
	
	
	});
	
	//3. 기본 입력폼 검사
	 function registerCheck() {
		if (reg.name.value === "") {
			alert("이름을 적어 주세요.");
			reg.name.focus();
			return;
		} else if (reg.id.value === "") {
			alert("아이디를 적어 주세요.");
			reg.id.focus();
			return;
		} else if (reg.pw1.value === "") {
			alert("비밀번호를 적어 주세요.");
			reg.pw1.focus();
			return;
		} else if (reg.pw1.value != reg.pw2.value) {
			alert("비밀번호가 다르거나, 입력하지 않았습니다.");
			reg.pw1.focus();
			return;
		} else if (reg.nick.value == "") {
			alert("닉네임을 적어 주세요.");
			reg.pw1.focus();
			return;
		} else if (reg.birth.value === "") {
			alert("생년월일을 적어 주세요.");
			reg.birth.focus();
			return;
		} else if (reg.mem_mail1.value === "") {
			alert("메일주소를 적어 주세요.");
			reg.mem_mail1.focus();
			return;
		} else if (reg.mem_mail2.value === "") {
			alert("메일주소를 선택해 주세요.");
			reg.mem_mail2.focus();
			return;
		}


		document.reg.submit();
		alert("회원가입을 축하합니다.");
	}
	 

   
		//4.비밀번호 체크
		function passwordCheck(){
        	p1 = document.forms[0];
        	pass1 = p1.mem_pass.value;
        	pass2 = p1.mem_pass2.value;

        	
        	if(pass1 != pass2){
        		document.getElementById("pwd-check").style.color = "red";
        		document.getElementById("pwd-check").innerHTML = "동일한 암호를 적어주세요.";
        		
        	}else{
        		document.getElementById("pwd-check").style.color = "black";
        		document.getElementById("pwd-check").innerHTML = "암호가 일치합니다."
        	}
        	
        	
        }
       	
        
		
		
/* 		ID중복 체크
		$('#id').blur(function() {
			$.ajax({
				type : "POST",
				url : '/passcode/member.go',
				data : 'loc=idcheck&mem_id=' + $('#id').val(),
				dataType: 'JSON',
				
				success : function(data) {
					
					data = data.more
					
					$(data).each(function(i, o){
						console.log(o["mem_id"])
						if(o["mem_id"] == null){
							$('#IC').text('사용할 수 있는 아이디 입니다.');
							$('#gojoin').removeAttr('disabled');
							return;
						}else{
							$('#IC').text('사용중인 아이디 입니다.');
							$('#gojoin').attr('disabled', 'disabled').focus();
						}
					})
				},	
				error : function() {
					//alert($(data));
					alert("aaa");
				}
			});
		}); */
		 
</script>
</head>
<body>
	<!--  전체자료 시작-->

	<form method="post" action="member.go?loc=register" name="reg">
		<p />
		<div class="form-group has-success">
			<input type="hidden" name="loc" value="register" /> <input
				type="text" class="form-control" id="name" placeholder="이름"
				style="width: 50%" name="mem_name">
		</div>
		
		<div class="form-group ">
			<input type="text" id="id" placeholder="아이디" style="width: 40%"
				name="mem_id"> <!-- <input type="button" value="중복확인"
				id="idCheck"> --><span id="IC"></span>
		</div>

		<div class="form-group has-error">
			<input type="password" class="form-control" id="pw1"
				placeholder="비밀번호" style="width: 50%" name="mem_pass">
				
		</div>
		
		<div class="form-group has-error">
			<input type="password" class="form-control" id="pw2"
				placeholder="비밀번호확인" onkeyup="passwordCheck()" style="width: 50%" name="mem_pass2">
		        <span id="pwd-check">동일한 암호를 적어주세요.</span> 
		</div>
		
		<div class="form-group ">
			<input type="text" id="nick" placeholder="닉네임"
				style="width: 40%" name="mem_nickname"> <!-- <input type="button" value="중복확인"
				id="nickCheck"> --><span id="NC"></span>
		</div>
		
		<div class="form-group has-success">
			<input type="text" class="form-control" id="birth" placeholder="생년월일 [2016-02-01 형식으로 적어 주세요.]"
				style="width: 50%" name="mem_birth">
		</div>

		<div class="form-group">
			<input type="text" id="email0" class="" name="mem_mail1"
				placeholder="이메일" style="width: 30%"> @ <select
				name="mem_mail2" style="height: 28px;">
				<option value="">이메일선택
				<option value="naver.com">naver.com
				<option value="hanmail.net">hanmail.net
				<option value="gmail.com">gmail.com
			</select>
		</div>
		<input type="button" value="전송" onclick="registerCheck()" id="gojoin">
		<!-- <input type="button"  id="register" value="회원가입" onClick="inputCheck" style="margin-left: 40%">
 -->
		<!-- <button type="submit" class="btn btn-default" id="back">뒤로가기</button> -->
		<!-- right자료 끝-->
		<hr />

	</form>
	<!-- 전체자료 끝 -->
	</div>
</body>
</html>