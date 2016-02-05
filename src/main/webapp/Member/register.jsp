<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="js/script.js"></script>
<script type="text/javascript">
window.onload = function(){
	document.getElementById("idCheck").onclick = idCheck;
}

function idCheck(){
	if(reg.id.value === ""){
		alert("id를 입력하시오");
		reg.id.focus();
	}else{
		url = "idcheck.jsp?id=" + reg.id.value;
		window.open(url, "id", "width=300,height=150,left=150,top=150");
		reg.conf.value = "true";
	}
}

function inputCheck(){
	if(reg.pw1.value != reg.pw2.value){
		alert("비밀번호가 서로 다릅니다.")
		reg.pw1.value = "";
		reg.pw2.value = "";
		reg.pw1.focus();
		return;
	}
	
	
	if(reg.na.value === ""){
		alert("이름을 입력하시오");
		reg.name.focus();
		return;
	}else if(reg.id.value === ""){
		alert("아이디를 입력하시오");
		reg.id.focus();
		return;
	}else if(reg.pw1.value === ""){
		alert("비밀번호를 입력하시오");
		reg.pw1.focus();
		return;
	}else if(reg.tel1.value === ""){
		alert("전화번호를 입력하시오");
		reg.tel1.focus();
		return;
	}else if(reg.email0.value === ""){
		alert("이메일을 입력하시오");
		reg.email0.focus();
		return;
	}else if(reg.address.value === ""){
		alert("주소를 입력하시오");
		reg.address1.focus();
		return;
	}
	
	if(reg.conf.value != "true" ){
		alert("중복확인을 해주세요.")
		return;
	}
	
	document.reg.submit();
}
</script>
</head>
<body>
<!--  전체자료 시작-->

	<form method="post" action="member.go?loc=register" name="register">
	<p/>
 <div class="form-group has-success">
 <input type="hidden" name="loc" value="register"/>
    <input type="text" class="form-control" id="name" placeholder="이름" style="width: 50%" name="mem_name">
  </div>
  <div class="form-group ">
    <input type="text"   id="id" placeholder="아이디" style="width: 40%" name="mem_id">
    <input type="button" value="중복확인" id="idCheck">
  </div>
  
  <div class="form-group has-error">
    <input type="password" class="form-control" id="pw1" placeholder="비밀번호" style="width: 50%" name="mem_pass">
  </div>
   <div class="form-group has-error">
    <input type="password" class="form-control" id="pw2" placeholder="비밀번호확인" style="width: 50%">
  </div>
  <div class="form-group has-success">
    <input type="text" class="form-control" id="nick" placeholder="닉네임" style="width: 50%" name="mem_nickname">
  </div>
  <div class="form-group has-success">
    <input type="text" class="form-control" id="birth" placeholder="생년월일" style="width: 50%" name="mem_birth" 
    value="2016-02-01">
  </div>
  
  <div class="form-group">
    <input type="text" id="email0" class="" name="mem_mail1" placeholder="이메일" style="width: 30%"> @
	 <select name="mem_mail2" style="height: 28px;">
    						<option value="">이메일선택
							<option value="naver.com">naver.com
							<option value="hanmail.net">hanmail.net
							<option value="gmail.com">gmail.com
	</select>
  </div>
	<input type="submit" value="전송"/>
 <!-- <input type="button"  id="register" value="회원가입" onClick="inputCheck" style="margin-left: 40%">
 --> <!-- <button type="submit" class="btn btn-default" id="back">뒤로가기</button> -->
<!-- right자료 끝-->
<hr/>

</form>
<!-- 전체자료 끝 -->
</div>
</body>
</html>