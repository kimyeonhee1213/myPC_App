<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>게시글 쓰기</title>
<%@ include file="../include/header.jsp" %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="/myPC_App/include/js/bootstrap.bundle.js"></script>
<script type="text/javascript">
$(function() {
	$("#btnSave").click(function() {
		var userid=$("#userid").val();
		var subject=$("#subject").val();
		var content=$("#content").val();
		var passwd=$("#passwd").val();
		if(userid==""){
			alert("아이디를 입력하세요.");
			$("#userid").focus();
			return;
		}
		if(subject==""){
			alert("제목을 입력하세요.");
			$("#subject").focus();
			return;
		}
		if(content==""){
			alert("내용을 입력하세요.");
			$("#content").focus();
			return;
		}
		if(passwd==""){
			alert("비밀번호를 입력하세요.");
			$("#passwd").focus();
			return;
		}
		document.form1.submit();
	});
});
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
</style>
</head>
<body>
<%@ include file="../nav.jsp"%>
<h2>글쓰기</h2>
<form name="form1" method="post" enctype="multipart/form-data" 
action="${path}/pboard_servlet/insert.do">
<table border="1" style="width: 100%">
 <tr>
  <td>아이디</td>
  <td><input name="userid" id="userid"></td>
 </tr>
  <tr>
  <td>게시판 선택</td>
  <td>
	<select name="boardtype" id="boardtype">
		<option value="청소">청소</option>
		<option value="정리">정리</option>
		<option value="빨래">빨래</option>
		<option value="집밥">집밥</option>
		<option value="기타" selected>기타</option>
	</select>
</td>
 </tr>
 <tr>
  <td>제목</td>
  <td><input name="subject" id="subject" size="60"></td>
 </tr>
 <tr>
  <td>본문</td>
  <td>
   <textarea rows="5" cols="60" name="content" id="content"></textarea>
  </td>
 </tr>
 <tr>
  <td>첨부파일</td>
  <td><input type="file" name="file1"></td>
 </tr>
 <tr>
  <td>비밀번호</td>
  <td><input type="password" name="passwd" id="passwd"></td>
 </tr>
 <tr>
 <td colspan="2" align="center">
  <input type="button" value="확인" id="btnSave">
 </td> 
 </tr>
</table>

</form>

</body>
</html>