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
  $(function() {
	$("#btnWriter").click(function() {
		<c:if test="${userid == null}">
		  alert("로그인 후 사용하세요.");
		  location.href="${path}/pmember/login.jsp";
		</c:if>
		 <c:if test="${userid != null}">
		  location.href="${path}/pboard/write.jsp";
		</c:if>
		
	});
	
	$("#btnDelete").click(function(){
		if(confirm("삭제하시겠습니까?")){
			location.href="${path}/pboard_servlet/delete2.do";			
		}	
	});
}); 

//페이지 처리
function list(page){
	location.href="${path}/pboard_servlet/list.do?curPage="+page;
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

#btnWriter {
	float: right;
	margin-bottom: 10px;
	margin-right: 10px;
}
</style>
<script type="text/javascript">

</script>
</head>
<body>
<%@ include file="../nav.jsp"%>
<h2>게시판</h2>
<form name="form1" method="post" action="${path}/pboard_servlet/search.do">
<select name="search_option">
 <option value="userid">아이디</option>
 <option value="subject">제목</option>
 <option value="boardtype">게시판 종류</option>
  <option value="content">내용</option>
 <option value="all">아이디+제목+게시판 종류+내용</option>
</select>
<input name="keyword">
<button id="btnSearch" class="btn btn-dark">검색</button>
<!-- 제출기능이 있다. html5전용 button태그  -->
</form>


<button id="btnWriter" class="btn btn-danger">글쓰기</button>
<table border="1" style="width: 100%;" class="table">
 <tr>
  <th>번호</th>
  <th>게시판 종류</th>
  <th>작성자</th>
  <th>제목</th>
  <th>날짜</th>
  <th>조회수</th>
  <th>첨부파일</th>
  <th>다운로드</th>
  <th>IP주소</th>
 </tr>
 <c:forEach var="dto" items="${list}">
 <c:choose>
  <c:when test="${dto.show == 'y'}">
  <tr>
   <td>${dto.num}</td>
   <td>${dto.boardtype}</td>
   <td>${dto.userid}</td>
   <td>
   <!-- 답글 들여쓰기 --> 
   <c:forEach var="i" begin="1" end="${dto.re_level}">
    &nbsp;&nbsp;
   </c:forEach>
   <a href="${path}/pboard_servlet/view.do?num=${dto.num}">${dto.subject}</a>
   <!-- 댓글 갯수 표시 -->
   <c:if test="${dto.comment_count > 0}">
    <span style="color: red;">(${dto.comment_count})</span>
   </c:if> 
   </td>
   <td>${dto.reg_date}</td>
   <td>${dto.readcount}</td>
   <td align="left">
    <c:if test="${dto.filesize > 0}">
      <a href="${path}/pboard_servlet/downlaod.do?num=${dto.num}">
       <img src="../images/file.gif">
      </a>
    </c:if>
   </td>
  <%--  <td>${dto.filename}</td> --%>
   <td>${dto.down}</td>
   <td>${dto.ip}</td>
  </tr>
  </c:when>
  <c:otherwise>
  
   <tr>
    <td>${dto.num}</td>
    <td colspan="7" align="center">삭제된 게시물입니다.</td>
   </tr>
  </c:otherwise>
  </c:choose> 
 </c:forEach>
 <!-- 페이지 네비게이션 출력 -->
 <tr>
   <td colspan="9" align="center">
	   <c:if test="${page.curPage > 1}">
	    <a href="#" onclick="list('1')">[처음]</a>
	   </c:if>
	   <c:if test="${page.curBlock > 1}">
	    <a href="#" onclick="list('${page.prevPage}')">[이전]</a>
	   </c:if>
	   <c:forEach var="num" begin="${page.blockStart}" end="${page.blockEnd}">
	    <c:choose>
	     <c:when test="${num == page.curPage}">
	      <span style="color: red">${num}</span>
	     </c:when>
	     <c:otherwise>
	      <a href="#" onclick="list('${num}')" >${num}</a>
	     </c:otherwise> 
	    </c:choose>
	   </c:forEach>
	   <c:if test="${page.curBlock < page.totBlock }">
	    <a href="#" onclick="list('${page.nextPage}')">[다음]</a>
	   </c:if>
	   <c:if test="${page.curPage < page.totPage}">
	    <a href="#" onclick="list('${page.totPage}')">[끝]</a>
	   </c:if>
   </td>
  </tr>
 
 
</table>
</body>
</html>