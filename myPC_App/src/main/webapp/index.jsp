<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>자취 꿀팁 저장소</title>
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
  p {font-size: 16px;}
  
  .margin {margin-bottom: 45px;}
  
  #jumbotron {
  	height: 360px;
  	width: auto;
  	text-align: center;
  	padding-top: 100px;
  	background-color: #FFCCCC;
  }
  
  #board_about {
  	height: 360px;
  	width: 100%;
  	text-align: center;
  	padding-top: 50px;
  	background-color: #FFE5CC;
  }
  .form-control {
	border-radius: 0;
}

/* Remove rounded borders from list */
.list-group-item:first-child {
	border-top-right-radius: 0;
	border-top-left-radius: 0;
}

.list-group-item:last-child {
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

/* Remove border and add padding to thumbnails */
.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail p {
	margin-top: 15px;
	color: #555;
}


.btn {
	padding: 10px 20px;
	background-color: #333;
	color: #f1f1f1;
	border-radius: 0;
	transition: .2s;
}


.btn:hover, .btn:focus {
	border: 1px solid #333;
	background-color: #fff;
	color: #000;
}
 
</style>
<script>
$(document).ready(function(){
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    if (this.hash !== "") {
      event.preventDefault();
      var hash = this.hash;
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
        window.location.hash = hash;
      });
    } 
  });
}
</script>
<script type="text/javascript">
 $(function() {
	member_list();
});
 
function member_list() {
	$.ajax({
		type: "post",
		url: "${path}/pmember_servlet/list.do",
		success: function(result) {
			$("#memberList").html(result);
		}
	});
}
 </script>
 <c:if test="${param.message == 'join' }">
 <script>
  alert("회원가입 되었습니다.");
 </script>
</c:if>
 <c:if test="${param.message == 'delete_self' }">
 <script>
  alert("탈퇴가 완료되었습니다.");
 </script>
</c:if>
</head>
<body>
<%@ include file="nav.jsp" %>

<div class="jumbotron text-center" id="jumbotron">
  <h2>자취 꿀팁 저장소란?</h2> 
  <p>자취 꿀팁 저장소는 관리자가 정리 해놓은 꿀팁 뿐만 아니라 회원들이 적은 꿀팁 노하우들을 볼 수 있는 홈페이지입니다.</p> 
  <p>보는 것 뿐만 아니라 적을 수도 있으니 많은 이용 부탁드립니다!</p>
</div>

<div id="zip" class="bg-1">
		<div class="container">
			<h3 class="text-center">자취 꿀팁 모음.zip</h3>
			<ul class="list-group">
				<li class="list-group-item">청소 꿀팁<span
					class="label label-danger">new</span></li>
				<li class="list-group-item">정리 꿀팁<span
					class="label label-danger">new</span></li>
				<li class="list-group-item">빨래 꿀팁<span
					class="label label-danger">new</span></li>
				<li class="list-group-item">집밥 꿀팁<span
					class="label label-danger">new</span></li>
			</ul>

			<div class="row text-center">
				<div class="col-sm-3">
					<div class="thumbnail">
						<img src="/myPC_App/images/clean.jpg" alt="옷" width="400" height="300">
						<p>
							<strong>청소 꿀팁</strong>
						</p>
						<button type="button" class="btn btn-info" onclick="location.href='/myPC_App/tip/clean.jsp'">꿀팁
							보러가기</button>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="thumbnail">
						<img src="/myPC_App/images/kitchen.jpg" alt="주방" width="400" height="300">
						<p>
							<strong>정리 꿀팁</strong>
						</p>
						<button type="button" class="btn btn-info" onclick="location.href='/myPC_App/tip/arrangement.jsp'">꿀팁
							보러가기</button>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="thumbnail">
						<img src="/myPC_App/images/wash.jpg" alt="기타" width="400" height="300">
						<p><strong>빨래 꿀팁</strong></p>
						<button type="button" class="btn btn-info" onclick="location.href='/myPC_App/tip/wash.jsp'">꿀팁 보러가기</button>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="thumbnail">
						<img src="/myPC_App/images/eat.jpg" alt="기타" width="400" height="300">
						<p><strong>집밥 꿀팁</strong></p>
						<button type="button" class="btn btn-info" onclick="location.href='/myPC_App/tip/eat.jsp'">꿀팁 보러가기</button>
					</div>
				</div>
			</div>
		</div>
	</div>


<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <div style="background-color: #CCE5FF; padding-top: 5px; padding-bottom: 5px; padding-left: 0px; padding-right: 0px;">
 	 <p>Email : yeonhe1213@naver.com</p>
  	<p>Made By Kim yeon hee</p>
  </div> 
</footer>
</body>
</html>
