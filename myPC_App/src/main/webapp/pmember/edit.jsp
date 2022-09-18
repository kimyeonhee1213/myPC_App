<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
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
	if(userole.val() == ""){
		alert("등급을 선택하세요");
		userole.focus();
		return;
	}
	document.form1.action="${path}/pmember_servlet/update.do";
	document.form1.submit();
}

function member_delete(){
	if(confirm("삭제하시겠습니까?")){
		document.form1.action="${path}/pmember_servlet/delete.do";
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
<h2>회원정보 수정/삭제</h2>
<form name="form1" id="form1" method="post">
<div id="div1">
<table border="1" width="500px">
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
  <td><input name="phone" id="phone" size="40" value="${dto.phone}"></td>
 </tr>
 <tr>
  <td>등급</td>
  <td><input value="${dto.userole}" readonly="readonly"></td>
 </tr>
 <tr align="center">
  <td colspan="2">
   <!-- 수정,삭제를 위한 게시물 번호처리 -->
   <input type="hidden" name="userid" value="${dto.userid}">
   <input type="button" value="수정" onclick="member_update()">
   <input type="button" value="삭제" onclick="member_delete()">
   <input type="button" value="목록"
    onclick="location.href='${path}/pmember_servlet/list.do'">
  </td>
 </tr>
</table>
</div>
</form>
</body>
</html>