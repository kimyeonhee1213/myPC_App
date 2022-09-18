<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script type="text/javascript">
function pValue() {
	document.getElementById("userId").value = opener.document.form1.id.value;
}

function idCheck() {
	var id = document.getElementById("userId").value;
	
	if(!id){
		alert("아이디를 입력하지 않았습니다.");
		return false;
	}else if((id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z")){
		alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
		return false;
	}else {
		
	}
}


function sendCheckValue() {
	opener.document.form1.idDuplication.value = "idCheck";
	opener.document.form1.id.value = document.getElementById("userId").value;
	if(opener != null){
		opener.chkForm = null;
		self.close();
	}
}
</script>
</head>
<body onload="pValue()">
<div id="wrap">
<br>
<b><font size="4" color="gray">아이디 중복체크</font></b>
<hr size="1" width="460">
<br>
<div id="chk">
	<form id="checkForm">
		<input name="idinput" id="userId">
		<input type="button" value="중복확인" onclick="idCheck()">	
	</form>
	<div id="msg"></div>
	<br>
	<input id="cancelBtn" type="button" value="취소" onclick="window.close()"><br>
	<input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()">
</div>
</div>
</body>
</html>