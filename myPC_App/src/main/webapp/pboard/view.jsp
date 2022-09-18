<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>상세화면</title>
<%@ include file="../include/header.jsp" %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="/myPC_App/include/js/bootstrap.bundle.js"></script>
<script type="text/javascript">
$(function() {
	comment_list();
	$("#btnSave").click(function() {
		comment_add();
	});
	$("#btnList").click(function() {
		location.href="${path}/pboard_servlet/list.do";
	});
	$("#btnReply").click(function() {
		document.form1.action="${path}/pboard_servlet/reply.do";
		document.form1.submit();
	});
	$("#btnEdit").click(function() {
		document.form1.action="${path}/pboard_servlet/pass_check.do";
		document.form1.submit();
	});
});

function comment_add(){
	var param="pboard_num=${dto.num}&writer="+$("#writer").val()
	+"&content="+$("#content").val();
	$.ajax({
		type: "post",
		url: "${path}/pboard_servlet/comment_add.do",
		data: param,
		success: function(){
			$("#writer").val("");
			$("#content").val("");
			comment_list();
		}
	});
}

function comment_list(){
	$.ajax({
		type: "post",
		url: "${path}/pboard_servlet/commentList.do",
		data: "num=${dto.num}",
		success: function(result){
			$("#commentList").html(result);
		}
	});
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

table {
	margin-left: auto;
	margin-right: auto;
	table-layout: fixed;
}

th {
	color: #606060;
	text-align: center !important;
}
</style>

</head>
<body>
<%@ include file="../nav.jsp"%>
<h2>상세화면</h2>
<form name="form1" method="post">
<table border="1" style="width: 50%;" class="table">
 <tr>
  <th>날짜</th>
  <td>${dto.reg_date}</td>
  <th>조회수</th>
  <td>${dto.readcount}</td>
  <th>게시판 종류</th>
  <td>${dto.boardtype}</td>
 </tr>
 <tr>
 <th>아이디</th>
 <td>${dto.userid}</td>
 <th>제목</th> 
 <td colspan="3">${dto.subject}</td>
 </tr>
 <tr>
  <th>본문</th>
  <td colspan="5">${dto.content}</td>
 </tr>
 <tr>
  <th>비밀번호</th>
  <td>
   <input type="password" name="passwd" id="passwd">
   <c:if test="${param.message == 'error'}">
    <span style="color: red;">
     비밀번호가 일치하지 않습니다.
    </span>
   </c:if>
   </td>
  <th>&nbsp;첨부파일</th>  
   <td colspan="3">
 <c:if test="${dto.filesize > 0}">
    ${dto.filename}( ${dto.filesize} bytes )
    <a href="${path}/pboard_servlet/download.do?num=${dto.num}">[다운로드]</a>
   </c:if>
 </td>
 </tr>
 <tr>
  <td colspan="6" style="text-align: center !important;">
   <input type="hidden" name="num" value="${dto.num}">
   <input type="button" class="btn btn-dark" value="수정/삭제" id="btnEdit">
   <input type="button" class="btn btn-dark" value="답변" id="btnReply">
   <input type="button" class="btn btn-dark" value="목록" id="btnList">   
  </td>
 </tr>
</table>
</form>

<!-- 댓글 쓰기 폼 -->
<table border="1" style="width: 50%;" class="table">
 <tr>
  <td><input id="writer" placeholder="아이디"></td>
  <td>
   <button id="btnSave" class="btn btn-dark" type="button" style="float: right;">확인</button>
  </td>
 </tr>
 <tr>
  <td><textarea rows="5" cols="80" placeholder="내용을 입력하세요"
   id="content"></textarea></td>
 </tr>
</table>
<!-- 댓글 목록을 출력할 영역  -->
<div id="commentList"></div>
</body>
</html>