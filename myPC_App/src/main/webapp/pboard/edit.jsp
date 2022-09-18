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
$(function(){
	$("#btnUpdate").click(function(){
		document.form1.action="${path}/pboard_servlet/update.do";
		document.form1.submit();
	});
	$("#btnDelete").click(function(){
		if(confirm("삭제하시겠습니까?")){
			document.form1.action="${path}/pboard_servlet/delete.do";
			document.form1.submit();			
		}	
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
<h2>수정/삭제</h2>
<form name="form1" method="post" enctype="multipart/form-data">
<table border="1" style="width: 100%">
 <tr>
  <td>아이디</td>
  <td><input name="userid" id="userid" value="${dto.userid}"></td>
 </tr>
 <tr>
  <td>게시판 선택</td>
  <td><select name="boardtype" id="boardtype">
		<option value="청소">청소</option>
		<option value="정리">정리</option>
		<option value="빨래">빨래</option>
		<option value="집밥">집밥</option>
		<option value="기타" selected>기타</option>
	</select>
</td>
 </tr>
 <tr>
 <tr>
  <td>제목</td>
  <td><input name="subject" id="subject" size="60" value="${dto.subject}"></td>
 </tr>
 <tr>
  <td>본문</td>
  <td>
   <textarea rows="5" cols="60" name="content" id="content">${dto.content}</textarea>
  </td>
 </tr>
 <tr>
  <td>첨부파일</td>
  <td>
   <c:if test="${dto.filesize > 0 }">
				${dto.filename} ( ${dto.filesize / 1024} kb )
				<input type="checkbox" name="fileDel">첨부파일 삭제
				<br>
			</c:if>
  <input type="file" name="file1"></td>
 </tr>
 <tr>
 <td colspan="2" align="center">
  <input type="hidden" name="num" value="${dto.num}">
		<input type="button" value="수정" id="btnUpdate">
		<input type="button" value="삭제" id="btnDelete">
 </td> 
 </tr>
</table>

</form>
</body>
</html>