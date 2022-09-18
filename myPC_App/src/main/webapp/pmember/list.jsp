<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>게시판</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%
String context = request.getContextPath();
response.sendRedirect(context+"/pmember_servlet/list.do");
%>
</body>
</html>