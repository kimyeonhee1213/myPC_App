<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>공지사항 리스트</title>
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

table{
	table-layout: fixed;
}

a {font-size: 16px;}

.margin {margin-bottom: 45px;}

h2{
	font-family: 'BMJUA' !important;
	text-align: center;
}

p{
	font-size: 14px;
}
</style>

</head>
<body>
<%@ include file="../nav.jsp" %>


<h2>공지사항</h2>
<p>${count}개의 공지사항이 있습니다.</p>
	<c:forEach var="dto" items="${list}">
			<table border="1" width="100%" class="table">
				<tr>
					<th>번호</th>
					<th colspan="2">제목</th>
					<th colspan="3">내용</th>
					<th>작성자</th>
					<th>날짜</th>
				</tr>
				<tr>
					<td>${dto.idx}</td>
					<td><a href="${path}/notice_servlet/view.do?idx=${dto.idx}">${dto.title}</a><td>
					<td colspan="3">${dto.content}</td>
					<td>${dto.userid}</td>
					<td>${dto.post_date}</td>
				</tr>
			</table>
	</c:forEach>
</body>
</html>