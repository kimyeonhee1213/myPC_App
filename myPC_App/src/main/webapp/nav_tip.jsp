<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>네비게이션바</title>
<%@ include file="../include/header.jsp" %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #CCE5FF;">
  <div class="container-fluid">
    <a class="navbar-brand" href="/myPC_App/index.jsp">자취 꿀팁 저장소</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <%
    String userid = (String)session.getAttribute("userid");
    String name = (String)session.getAttribute("name");
    session.setMaxInactiveInterval(60*50);
    if(userid == null){%>
    	<div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="/myPC_App/notice/notice.jsp">공지사항</a></li>
        <li><a href="/myPC_App/index.jsp#zip">꿀팁 모음집</a></li>
        <li><a href="/myPC_App/pboard/index.jsp">꿀팁 게시판</a></li>
        <li class="dropdown">
          <button type="button" class="btn btn-info dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            각종 꿀팁
          </button>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="/myPC_App/tip/clean.jsp">청소 꿀팁</a></li>
            <li><a class="dropdown-item" href="/myPC_App/tip/arrangement.jsp">정리 꿀팁</a></li>
            <li><a class="dropdown-item" href="/myPC_App/tip/wash.jsp">빨래 꿀팁</a></li>
            <li><a class="dropdown-item" href="/myPC_App/tip/eat.jsp">집밥 꿀팁</a></li>
          </ul>
      </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      	<li><a href="/myPC_App/pmember/join.jsp">Join</a></li>
        <li><a href="/myPC_App/pmember/login.jsp"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
      </ul>
    </div>    	 
     <%}else if(userid.equals("admin")){%>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="/myPC_App/notice/notice_admin.jsp">공지사항 관리</a></li>
        <li><a href="/myPC_App/pboard/index_admin.jsp">꿀팁 게시판 관리</a></li>
        <li><a href="/myPC_App/pmember/list.jsp">회원 관리</a></li>
        <li class="dropdown">
          <button type="button" class="btn btn-info dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            각종 꿀팁
          </button>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="/myPC_App/tip/clean.jsp">청소 꿀팁</a></li>
            <li><a class="dropdown-item" href="/myPC_App/tip/arrangement.jsp">정리 꿀팁</a></li>
            <li><a class="dropdown-item" href="/myPC_App/tip/wash.jsp">빨래 꿀팁</a></li>
            <li><a class="dropdown-item" href="/myPC_App/tip/eat.jsp">집밥 꿀팁</a></li>
          </ul>
      </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/myPC_App/pmember_servlet/logout.do">${name}님&nbsp;&nbsp;<span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
      </ul>
    </div>
    <%}else {%>
    		<div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="/myPC_App/notice/notice.jsp">공지사항</a></li>
        <li><a href="/myPC_App/index.jsp#zip">꿀팁 모음집</a></li>
        <li><a href="/myPC_App/pboard/index.jsp">꿀팁 게시판</a></li>
        <li class="dropdown">
          <button type="button" class="btn btn-info dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            각종 꿀팁
          </button>
         <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="/myPC_App/tip/clean.jsp">청소 꿀팁</a></li>
            <li><a class="dropdown-item" href="/myPC_App/tip/arrangement.jsp">정리 꿀팁</a></li>
            <li><a class="dropdown-item" href="/myPC_App/tip/wash.jsp">빨래 꿀팁</a></li>
            <li><a class="dropdown-item" href="/myPC_App/tip/eat.jsp">집밥 꿀팁</a></li>
          </ul>
      </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/myPC_App/pmember_servlet/view_my.do?userid=${userid}">마이페이지</a></li>
        <li><a href="/myPC_App/pmember_servlet/logout.do">${name}님&nbsp;&nbsp;<span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
      </ul>
    </div>    
    <%}%>

  </div>
</nav>
</body>
</html>