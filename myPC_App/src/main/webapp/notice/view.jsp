<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</style>
</head>
<body>
<%@ include file="../nav.jsp"%>
<h2>상세화면</h2>
<table border="1" style="width: 40%;" class="table">
 <tr>
 <th>작성자</th>
 <td>${dto.userid}</td>
 </tr>
 <tr>
 <th>제목</th> 
 <td>${dto.title}</td>
 </tr>
 <tr>
  <th>본문</th>
  <td>${dto.content}</td>
 </tr>
</table>
</body>
</html>