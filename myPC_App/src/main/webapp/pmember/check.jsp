<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>아이디 중복 확인</title>
<%@ include file="../include/header.jsp" %>
<script type="text/javascript">
const use = document.getElementById("useBtn");
function IdChk() {
	var exp1 = /^[A-Za-z0-9]{4,10}$/;
	if(document.form2.userid.value == ""){
		alert("아이디를 입력하세요");
		document.form2.userid.focus();
	}else if(!exp1.test(document.form2.userid.value)){
		alert("아이디는 영문, 숫자를 사용한 4~10자리로 입력");
	}
	document.form2.action="${path}/pmember_servlet/idCheck.do";
	document.form2.submit();
}

function pValue() {
	document.getElementById("userid").value = opener.document.form1.userid.value;
}

function sendCheckValue() {
	opener.document.form1.idDuplication.value = "idCheck";
	opener.document.form1.userid.value = document.form2.userid.value;
	if(opener != null){
		opener.chkForm = null;
		self.close();
	}
}
</script>
</head>
<body onload="pValue()">
<%String id = request.getParameter("userid");
if(id == null){
	id = "";
}

String jungbokid = (String)request.getAttribute("jungbokid");

String result = "";

if(jungbokid == "" && (id.length() > 3 && id.length() < 11)){
	result = id + "는 사용하셔도 됩니다";
}else if(jungbokid == null || id == ""){
	result = "";
}else if(id.length() < 4 || id.length() > 10){
	result = "아이디는 영문, 숫자를 사용한 4~10자리로 입력";
}else {
	result = id + "는 이미 있습니다.";
	
}
%>
<div>
<b><font size="4" color="gray">아이디 중복체크</font></b>
<form method="post" name="form2" id="form2">
	<input class="form-control" name="userid" id="userid" value="<%=id%>">
	<input type="button" class="form-control" onclick="IdChk()" value="아이디 중복 확인"><br>
  <p style="color: red;"><%=result%></p>
  <input id="cancelBtn" type="button" value="취소" onclick="window.close()">
  <input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()"> 
</form>
</div>
</body>
</html>