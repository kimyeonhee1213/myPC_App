<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빨래 꿀팁</title>
<style type="text/css">
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

/* Black buttons with extra padding and without rounded borders */
.btn {
	padding: 10px 20px;
	background-color: #333;
	color: #f1f1f1;
	border-radius: 0;
	transition: .2s;
}

/* On hover, the color of .btn will transition to white with black text */
.btn:hover, .btn:focus {
	border: 1px solid #333;
	background-color: #fff;
	color: #000;
}

.modal-header, h4, .close {
	background-color: #333;
	color: #fff !important;
	text-align: center;
	font-size: 30px;
}

.modal-header, .modal-body {
	padding: 40px 50px;
}

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
</style>

</head>
<body>
	<%@ include file="../nav.jsp"%>

	<div id="wash" class="bg-1">
		<div class="container">
			<h3 class="text-center">빨래 꿀팁</h3>
			<p class="text-center">막상 하려고 보니 많은 빨래 종류들에 당황한 사람들을 위한 꿀팁</p>
			<ul class="list-group">
				<li class="list-group-item">속옷 세탁 꿀팁<span
					class="label label-danger">new</span></li>
					<li class="list-group-item">이불 세탁 꿀팁<span
					class="label label-danger">new</span></li>
				<li class="list-group-item">수건 세탁 꿀팁</li>
				<li class="list-group-item">누런 얼룩 제거 꿀팁<span
					class="label label-danger">new</span></li>
			</ul>

			<div class="row text-center">
			<h3>속옷 세탁 꿀팁</h3>
				<div class="col-sm-4">
					<div class="thumbnail">
					<img src="../images/underwear.jpg" alt="속옷">
					<p><strong>손빨래 속옷 세탁</strong></p>
					<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#wash1" aria-expanded="false" aria-controls="wash1">
    					방법 보기</button></p>
					<div class="collapse" id="wash1">
					  <div class="card card-body">
					   <p style="color: red;">※속옷은 무조건 단독 세탁※</p>
						<p>1. 30도정도의 미지근한 물에 중성세제 넣고 속옷을 담근다.</p>
						<p>2. 손상되지 않게 물에서 부드럽게 흔들거나 조물조물 주무른다.</p>
						<p>3. 깨끗한 물에 3회 정도 헹군다.</p>
						<p>4. 마른 수건에 얹어 물기를 가볍게 제거한다.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
					<img src="../images/laundry.jpg" alt="속옷">
					<p><strong>세탁기로 속옷 세탁</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#wash2" aria-expanded="false" aria-controls="wash2">
    					방법 보기</button></p>
					<div class="collapse" id="wash2">
					  <div class="card card-body">
					    <p style="color: red;">※속옷은 무조건 단독 세탁※</p>
						<p>1. 세탁망에 속옷을 넣는다.</p>
						<p>2. 브래지어의 경우는 후크를 잠근 상태로 넣어야 손상이 덜하다.</p>
						<p>3. 중성세재를 사용하여 세탁한다.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
					<img src="../images/underwear2.jpg" alt="건조">
					<p><strong>건조하는 법</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#wash3" aria-expanded="false" aria-controls="wash3">
    					방법 보기</button></p>
					<div class="collapse" id="wash3">
					  <div class="card card-body">
					    <p style="color: red;">※통풍이 잘 되는 그늘에 말리는 게 좋다.※</p>
						<p>옷걸이나 빨래 집게 를 사용해 건조대에 넌다.</p>
					  </div>
					</div>
					</div>
				</div>
			</div>
			
			
			<!-- 이불, 수건 세탁 꿀팁 -->
			<div class="row text-center">
			<h3>이불, 수건 세탁 꿀팁</h3>
				<div class="col-sm-4">
					<div class="thumbnail">
					<img src="../images/bedding.jpg" alt="이불">
					<p><strong>이불 세탁</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#wash4" aria-expanded="false" aria-controls="wash4">
    					방법 보기</button></p>
					<div class="collapse" id="wash4">
					  <div class="card card-body">
					   <p style="color: red;">※이불세탁은 한달에 한번 하기를 권장※</p>
						<p>1. 액상 중성세제를 사용하여 이불 세탁하기</p>
						<p>2. 섬유 손상을 막기 위해선 찬물이나 30도 이하에서 세탁하기</p>
						<p>3. 세탁기 안에 이불 꽉 채워서 세탁하지 않기</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
					<img src="../images/towel.jpg" alt="수건">
					<p><strong>뽀송뽀송한 수건 세탁</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#wash5" aria-expanded="false" aria-controls="wash5">
    					방법 보기</button></p>
					<div class="collapse" id="wash5">
					  <div class="card card-body">
						<p style="color: red;">※수건은 되도록이면 단독 세탁※</p>
						<p style="color: red;">※수건은 되도록이면 한번에 10장이하로 돌리기※</p>
						<p>1. 통돌이 세탁기는 물을 고수위, 드럼세탁기는 울코스로 돌리기</p>
						<p>2. 수건에는 섬유유연제를 쓰지 않기</p>
						<p>3. 중성세제를 쓰되, 울샴푸는 쓰지 않고 세제양은 절반으로 줄이기</p>
						<p>4. 수건 탈수 시 강탈수로 하기</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
					<img src="../images/dog_towel.jpg" alt="강아지수건">
					<p><strong>뻣뻣한 수건 버리는 법</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#wash6" aria-expanded="false" aria-controls="wash6">
    					방법 보기</button></p>
					<div class="collapse" id="wash6">
					  <div class="card card-body">
					    <p>뻣뻣해서 버려야하는 수건은 유기견 보호센터에 기부하면 좋다.</p>
						<p>강아지들은 샤워 후 수건을 많이 사용하기 때문에 기부하면 좋은 일도 함께 할 수 있다.</p>
					  </div>
					</div>
					</div>
				</div>
			</div>
			
			
			<!-- 누런얼룩제거 -->
			<div class="row text-center">
			<h3>누런 얼룩 제거</h3>
				<div class="col-sm-6">
					<div class="thumbnail">
					<img src="../images/white.jpg" alt="하얀옷">
					<p><strong>옷 누런 얼룩 제거</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#wash7" aria-expanded="false" aria-controls="wash7">
    					방법 보기</button></p>
					<div class="collapse" id="wash7">
					  <div class="card card-body">
					    <p style="color: red;">준비물: 과탄산소다, 중성세제(주방 세제), 미지근한 물, 고무장갑</p>
						<p>1. 60도 정도의 물에 과탄산소다 4스푼, 주방세제 3번을 짠다.</p>
						<p>2. 고무장갑을 끼고 세제를 잘 풀어준다.</p>
						<p>3. 30분에서 1시간정도 담궈둔다.</p>
						<p>4. 물에 여러번 헹군다.</p>
						<p>5. 약하게 탈수해서 건조한다.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="thumbnail">
					<img src="../images/pillow.jpg" alt="베개">
					<p><strong>베개 누런 얼룩 제거</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#wash8" aria-expanded="false" aria-controls="wash8">
    					방법 보기</button></p>
					<div class="collapse" id="wash8">
					  <div class="card card-body">
					    <p style="color: red;">준비물: 과탄산소다, 베이킹소다, 고무줄이나 운동화끈, 칫솔</p>
						<p>1. 베개를 고무줄이나 운동화끈으로 3등분으로 묶는다.</p>
						<p>2. 물에 베이킹소다, 과탄산소다, 세탁세재를 2티스푼씩 넣고 칫솔에 묻혀 얼룩을 지운다.</p>
						<p>3. 세탁기에 넣고 울코스로 돌린다.</p>
						<p>4. 고무줄을 풀고 평평하게 눕혀서 건조한다.</p>
						<p>5. 건조한 뒤 손으로 베개를 탁탁 두드려준다.</p>
					  </div>
					</div>
					</div>
				</div>
				</div>
			</div>
		</div>
<footer class="container-fluid bg-4 text-center">
  <div style="background-color: #CCE5FF; padding-top: 5px; padding-bottom: 5px;">
 	 <p>Email : yeonhe1213@naver.com</p>
  	<p>Made By Kim yeon hee</p>
  </div> 
</footer>		
</body>
</html>