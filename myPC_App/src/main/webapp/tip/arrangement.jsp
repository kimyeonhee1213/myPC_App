<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정리 꿀팁</title>
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

	<div id="arrangement" class="bg-1">
		<div class="container">
			<h3 class="text-center">정리 꿀팁</h3>
			<p class="text-center">좁은 집을 위한 정리 꿀템들, 틈새공간 활용 정리 꿀템들을 모았다.</p>
			<ul class="list-group">
				<li class="list-group-item">옷 정리 꿀템<span
					class="label label-danger">new</span></li>
				<li class="list-group-item">주방 정리 꿀템<span
					class="label label-danger">new</span></li>
				<li class="list-group-item">기타 정리 꿀템<span class="badge">3</span></li>
			</ul>

			<div class="row text-center">
			<h3>옷 정리 꿀템</h3>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://shop.daiso.co.kr/mobile_new/product/product.do?prdMstCd=S0013448">
					<img src="../images/arrangement1.jpg" alt="바지걸이">
					</a>
					<p><strong>논슬립 바지걸이</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#clothes1" aria-expanded="false" aria-controls="clothes1">
    					방법 보기</button></p>
					<div class="collapse" id="clothes1">
					  <div class="card card-body">
					    <p>바지는 옷걸이에 걸때 흘러내리거나 하는 일이 많아 집게 옷걸이를 쓰곤 하는데 위의 바지걸이를 사용하면 바지에
						집게자국 날 걱정없이 바지를 정리할 수 있다.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://shop.daiso.co.kr/mobile_new/product/product.do?prdMstCd=S0014991">
					<img src="../images/arrangement2.jpg" alt="클리어 수납함">
					</a>
					<p><strong>클리어 수납함</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#clothes2" aria-expanded="false" aria-controls="clothes2">
    					방법 보기</button></p>
					<div class="collapse" id="clothes2">
					  <div class="card card-body">
					    <p>안입는 계절의 옷들 낮은 수납함을 활용해 침대 밑 공간에 쏙 넣어 수납할 수 있다.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
						<a target="_blank" href="https://shop.daiso.co.kr/mobile_new/product/product.do?prdMstCd=S0004942">
					<img src="../images/arrangement3.jpg" alt="도어 행거">
					</a>
					<p><strong>우드 도어 행거</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#clothes3" aria-expanded="false" aria-controls="clothes3">
    					방법 보기</button></p>
					<div class="collapse" id="clothes3">
					  <div class="card card-body">
					    <p>자취하면 수납공간이 부족한데 문에 위의 제품을 걸어 가방이나 자주입는 겉옷 등을 걸면 좋다.</p>
					  </div>
					</div>
					</div>
				</div>
			</div>
			
			
			<!-- 주방 정리 -->
			<div class="row text-center">
			<h3>주방 정리 꿀템</h3>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://shop.daiso.co.kr/mobile_new/product/product.do?prdMstCd=S0002522">
					<img src="../images/ref.jpg" alt="냉장고 수납바구니">
					</a>
					<p><strong>냉장고 수납 바구니</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#ref" aria-expanded="false" aria-controls="ref">
    					방법 보기</button></p>
					<div class="collapse" id="ref">
					  <div class="card card-body">
					    <p>이것저것 그냥 넣어서 찾기 힘든 냉장고에 수납 바구니를 이용하면 손쉽게 꺼내고 보기 좋게 정리할 수 있다.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://shop.daiso.co.kr/mobile_new/product/product.do?prdMstCd=S0016572">
					<img src="../images/under.jpg" alt="다용도 언더 선반">
					</a>
					<p><strong>다용도 언더 선반</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#shelf" aria-expanded="false" aria-controls="shelf">
    					방법 보기</button></p>
					<div class="collapse" id="shelf">
					  <div class="card card-body">
					    <p>좁은 부엌에도 언더선반을 사용하면 그릇을 놓을 공간을 만들 수 있다.</p>
					    <p>사용법 : 선반 아래에 넣어서 끼우면 된다</p>
					    <p style="color: red;">단차가 있는 선반에서는 사용금지</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
						<a target="_blank" href="https://shop.daiso.co.kr/mobile_new/product/product.do?prdMstCd=S0009915">
					<img src="../images/kitchentowel.jpg" alt="키친타올 걸이">
					</a>
					<p><strong>키친타올 걸이</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#towel" aria-expanded="false" aria-controls="towel">
    					방법 보기</button></p>
					<div class="collapse" id="towel">
					  <div class="card card-body">
					    <p>자석형이라 냉장고 옆쪽에 붙여서 사용하면 유용하다.</p>
					  </div>
					</div>
					</div>
				</div>
			</div>
			
			
			<!-- 기타 정리 -->
			<div class="row text-center">
			<h3>기타 정리 꿀템</h3>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://shop.daiso.co.kr/mobile_new/product/product.do?prdMstCd=S0023769">
					<img src="../images/magnetic.jpg" alt="자석 후크 걸이">
					</a>
					<p><strong>자석 후크 걸이</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#etc1" aria-expanded="false" aria-controls="etc1">
    					방법 보기</button></p>
					<div class="collapse" id="etc1">
					  <div class="card card-body">
					    <p>문에 붙이면 요즘 같은 코로나가 유행하는 시국에 마스크를 간편하게 보관 가능하다.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://shop.daiso.co.kr/mobile_new/product/product.do?prdMstCd=S0011912">
					<img src="../images/desk.jpg" alt="부착식 서랍">
					</a>
					<p><strong>부착식 서랍</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#etc2" aria-expanded="false" aria-controls="etc2">
    					방법 보기</button></p>
					<div class="collapse" id="etc2">
					  <div class="card card-body">
					    <p>쓸건 많고 책상이 좁을때 책상 아래 붙이면 끝!</p>
					    <p>1. 접착면을 수건이나 천으로 깨끗이 닦아준다.</p>
					    <p>2. 제품에 부착된 양면 테이프 보호필름을 벗겨 낸다.</p>
					    <p>3. 원하는 위치에 눌러서 부착 후 24시간 뒤 사용한다.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
						<a target="_blank" href="https://shop.daiso.co.kr/mobile_new/product/product.do?prdMstCd=S0012634">
					<img src="../images/clean_arrangement.jpg" alt="봉걸레 걸이">
					</a>
					<p><strong>매직 흡착 봉 걸이</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#etc3" aria-expanded="false" aria-controls="etc3">
    					방법 보기</button></p>
					<div class="collapse" id="etc3">
					  <div class="card card-body">
					    <p>우산이나 청소 밀대를 세워서 보관이 가능하다/</p>
						<p>1. 부착할 부분의 먼지를 닦고 건조시킨다.</p>
						<p>2. 행거 뒷면의 투명비닐을 제거한다.</p>
						<p>3. 5초이상 힘껏 눌러 고정시킨다.</p>
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