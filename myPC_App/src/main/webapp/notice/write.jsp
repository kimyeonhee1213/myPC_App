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

table {
	margin-left: auto;
	margin-right: auto;
}

h2{
	font-family: 'BMJUA' !important;
	text-align: center;
}
</style>
</head>
<body>
<%@ include file="../nav.jsp" %>
<h2>공지사항 작성</h2>
<form name="form1" method="post" action="${path}/notice_servlet/insert.do">
<table border="1" width="50%">
 <tr>
  <td>작성자</td>
  <td><input name="userid" id="userid" size="40"></td>
 </tr>
 <tr>
  <td>비밀번호</td>
  <td><input type="password" name="passwd" id="passwd" size="40"></td>
 </tr>
 <tr>
  <td>제목</td>
  <td><input name="title" id="title" size="40"></td>
 </tr>
 <tr>
  <td>내용</td>
   <td><textarea rows="5" cols="55" name="content" id="content"></textarea></td>
 </tr>
 <tr align="center">
  <td colspan="2">
   <input type="submit" id="btnSave" value="확인">
   <input type="reset" value="취소">
  </td>
 </tr>
</table>
</form>

</body>
</html>