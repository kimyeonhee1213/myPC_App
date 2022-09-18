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
	text-align: center;
}

h3 {
	font-family: 'BMJUA' !important;
	font-weight: bold;
	text-align: center;
	margin-top: 50px; 
	margin-bottom: 50px;
}
#div1 {
	display: flex;
	justify-content: center;
	align-items:center;
}

#btn {
	margin-top : 20px;
	display: inline;
}

</style>

<c:if test="${param.message == 'error1' }">
 <script>
  alert("아이디 또는 비밀번호가 일치하지 않습니다.");
 </script>
</c:if>
<c:if test="${param.message == 'logout' }">
 <script>
  alert("로그아웃 되었습니다.");
 </script>
</c:if>
</head>
<body>
<%@ include file="../nav.jsp" %>
<h3>로그인 페이지</h3>
<div id="div1">
<form method="post" action="/myPC_App/pmember_servlet/login.do">
 <label for="userid" class="form-label">아이디</label>
 <input type="text" class="form-control" placeholder="아이디를 입력하세요" name="userid">
 <br>
 <label for="passwd" class="form-label">비밀번호</label>
 <input type="password" class="form-control" placeholder="비밀번호를 입력하세요" name="passwd">
 <br>
 	<button type="submit" class="btn btn-default">로그인</button>
 	<button type="button" class="btn btn-default" id="btnJoin" 
 	onclick="location.href='join.jsp'">회원가입</button>
</form>
</div>

</body>
</html>