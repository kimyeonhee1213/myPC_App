<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>내 정보 수정</title>
<%@ include file="../include/header.jsp" %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="/myPC_App/include/js/bootstrap.bundle.js"></script>
<script type="text/javascript">
function member_update(){
	var form1 = $("#form1");
	var name = $("#name");
	var passwd = $("#passwd");
	var phone = $("#phone");
	var userole = $("#userole");
	if(name.val() == ""){
		alert("이름을 입력하세요");
		name.focus();
		return;
	}
	if(passwd.val() == ""){
		alert("비밀번호를 입력하세요");
		passwd.focus();
		return;
	}
	if(phone.val() == ""){
		alert("전화번호를 입력하세요");
		phone.focus();
		return;
	}
	document.form1.action="${path}/pmember_servlet/update_self.do";
	document.form1.submit();
}

function member_delete(){
	if(confirm("탈퇴하시겠습니까?")){
		document.form1.action="${path}/pmember_servlet/delete_self.do";
		document.form1.submit();
	}
}
</script>
<style type="text/css">
@font-face {
    font-family: 'BMJUA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
* { 
	font-family: 'BMJUA';
	font-weight: bold;
	font-size: 16px;
}

h2{
	font-family: 'BMJUA' !important;
	text-align: center;
}

#div1 {
	display: flex;
	justify-content: center;
	align-items:center;
}
</style>
</head>
<body>
<h2>마이페이지</h2>
<form name="form1" id="form1" method="post">
<div id="div1">
<table border="1" width="50%">
 <tr>
  <td>이름</td>
  <td><input name="name" id="name" size="40" value="${dto.name}"></td>
 </tr>
 <tr>
  <td>아이디</td>
  <td><input value="${dto.userid}" readonly="readonly"></td>
 </tr>
 <tr>
  <td>비밀번호</td>
  <td><input type="password" name="passwd" id="passwd" size="40"></td>
 </tr>
 <tr>
  <td>전화번호</td>
  <td><input type="tel" name="phone" id="phone" size="40" value="${dto.phone}"></td>
 </tr>
  <tr>
  <td>우편번호</td>
  <td><input name="zipcode" id="zipcode" size="40" value="${dto.zipcode}"></td>
 </tr>
  <tr>
  <td>주소</td>
  <td><input name="address" id="address" size="40" value="${dto.address}"></td>
 </tr>
   <tr>
  <td>상세 주소</td>
  <td><input name="address2" id="address2" size="40" value="${dto.address2}"></td>
 </tr>
  <tr>
  <td>이메일</td>
  <td><input type="email" name="email" id="email" size="40" value="${dto.email}"></td>
 </tr>
 <tr align="center">
  <td colspan="2">
  <input type="hidden" name="userid" value="${dto.userid}">
   <input type="button" value="수정" onclick="member_update()">
   <input type="button" value="탈퇴" onclick="member_delete()">
  </td>
 </tr>
</table>
</div>
</form>
</body>
</html>