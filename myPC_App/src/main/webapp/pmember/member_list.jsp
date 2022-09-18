<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원목록</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="include/js/bootstrap.bundle.min.js"></script>
<%@ include file="../include/header.jsp" %>
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

h1 {
	font-family: 'BMJUA' !important;
	text-align: center;
}

table {
	table-layout: fixed;
}
</style>
</head>
<body>
<%@ include file="../nav.jsp" %>
    <h1>회원정보 목록</h1>
    <p>${count}명의 회원이 등록되어있습니다.</p>
        <c:forEach var="dto" items="${list}"> 
        	<form method="post" action="${path}/pmember_servlet/view.do">
        		<input type="hidden" name="userid" value="${dto.userid}">
        		<table border="1" class="table">
			        <tr>
			        	<th>이름</th>
			            <th>아이디</th>
			            <th>전화번호</th>
			            <th>가입일</th>
			            <th>등급</th>
			        </tr>
			        <tr>
			        	<td>${dto.name}</td>
			        	<td>${dto.userid}</td>
			        	<td>${dto.phone}</td>
			        	<td>${dto.regdate}</td>
			        	<td>${dto.userole}</td>
			        	<td><input type="submit" class="btn btn-info" value="수정/삭제"></td>
			        </tr>
		        </table>
        	</form>
        </c:forEach>
    <br>
</body>
</html>