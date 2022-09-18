<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청소 꿀팁</title>
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
			<h3 class="text-center">청소 꿀팁</h3>
			<p class="text-center">청소를 하려고 해도 어디서부터 해야하는지 모르는 사람들을 위한 꿀팁 및 꿀템</p>
			<ul class="list-group">
				<li class="list-group-item">화장실 청소 꿀팁<span
					class="label label-danger">new</span></li>
				<li class="list-group-item">주방 청소 꿀팁<span
					class="label label-danger">new</span></li>
				<li class="list-group-item">방 청소 꿀팁<span
					class="label label-danger">new</span></li>
			</ul>

			<div class="row text-center">
			<h3>화장실 청소</h3>
				<div class="col-sm-3">
					<div class="thumbnail">
					<a target="_blank" href="http://easydrop.co.kr/product/%EB%B3%80%EA%B8%B0%ED%81%AC%EB%A6%AC%EB%84%88-%EB%A0%88%EB%AA%AC%ED%96%A5-%EB%A6%AC%ED%95%84-%EA%B5%AC%EC%84%B1/16/category/1/display/3/">
					<img src="../images/easydrop.jpg" alt="변기 청소"></a>
					<p><strong>변기 청소</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#bathroom1" aria-expanded="false" aria-controls="bathroom1">
    					방법 보기</button></p>
					<div class="collapse" id="bathroom1">
					  <div class="card card-body">
						<p>1. 리필 브러쉬를 핸들에 끼운다.</p>
						<p>2. 버튼을 당겨 고정시킨다.</p>
						<p>3. 물에 닿으면 세제가 나온다.</p>
						<p>4. 변기안쪽을 청소한다.</p>
						<p>5. 다쓰고 버튼을 밀어 변기에 버리고 물을 내린다.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="thumbnail">
					<img src="../images/mirror.jpg" alt="거울 청소">
					<p><strong>거울 청소</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#bathroom2" aria-expanded="false" aria-controls="bathroom2">
    					방법 보기</button></p>
					<div class="collapse" id="bathroom2">
					  <div class="card card-body">
					    <p>준비물 : 린스나 식초</p>
						<p>린스 사용하는 법</p>
						<p>- 마른 천에 린스를 적당량 묻혀서 거울에 고르게 바르고 마른천으로 닦아주기</p>
						<p>식초를 사용하는 법</p>
						<p>- 뜨거운 물에 식초를 몇 방울 떨어트려 식힌 후 천에 적셔서 거울을 닦아주기</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="thumbnail">
						<a target="_blank" href="https://yuhanrox.co.kr/Shop/191662?utm_source=naver&utm_medium=display&utm_campaign=NV_PS_DISP_BRS_PC&n_media=27758&n_query=%EC%9C%A0%ED%95%9C%EB%9D%BD%EC%8A%A4%EC%9A%95%EC%8B%A4%EC%B2%AD%EC%86%8C%EC%9A%A9&n_rank=1&n_ad_group=grp-a001-04-000000018122041&n_ad=nad-a001-04-000000194487482&n_keyword_id=nkw-a001-04-000003325434658&n_keyword=%EC%9C%A0%ED%95%9C%EB%9D%BD%EC%8A%A4%EC%9A%95%EC%8B%A4%EC%B2%AD%EC%86%8C%EC%9A%A9&n_campaign_type=4&n_contract=tct-a001-04-000000000574204&n_ad_group_type=5&NaPm=ct%3Dl7fjxp6o%7Cci%3D0za0001SqePxsajgeKYj%7Ctr%3Dbrnd%7Chk%3D3685450d646ee7845efa3fd5742afc1053432bc6">
					<img src="../images/rax.jpg" alt="락스">
					</a>
					<p><strong>물때 청소</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#bathroom3" aria-expanded="false" aria-controls="bathroom3">
    					방법 보기</button></p>
					<div class="collapse" id="bathroom3">
					  <div class="card card-body">
					    <p>준비물 : 유한락스 욕실청소용</p>
						<p>1. 환기가 잘 되도록 준비한다.</p>
						<p>2. 안전한 사용을 위해 고무장갑을 착용한다.</p>
						<p>3. 10초간 유한락스 욕실청소용 세정제를 흔든다.</p>
						<p>4. 노즐을 분사 위치로 돌린다.</p>
						<p>5. 오염 부위로부터 40cm 떨어져서 분사한다.</p>
						<p>6. 분사부위를 깨끗한 물 등으로 헹궈서 마무리한다(수세미 등으로 가볍게 문지른 후 물로 씻기).</p>
						<p style="color: red;">위의 제품은 락스와 혼합해서 사용하면 효과는 떨어지고 자극성 기체가 발생할 수 있음</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="thumbnail">
						<a target="_blank" href="https://smartstore.naver.com/rodem_spa/products/5530787768?n_media=27758&n_query=%EB%A7%A4%EA%B7%B8%EB%93%9C%EB%A0%88%EC%9D%B8&n_rank=1&n_ad_group=grp-a001-02-000000021611988&n_ad=nad-a001-02-000000136622082&n_campaign_type=2&n_mall_id=ncp_1o03d1_01&n_mall_pid=5530787768&n_ad_group_type=2&NaPm=ct%3Dl7fk8i2o%7Cci%3D0za0001KqKPxCA9HPfng%7Ctr%3Dpla%7Chk%3D59df2dc8237d265cda7bd1e2cdf38b5f27ff6d10">
					<img src="../images/magdrain.jpg" alt="락스">
					</a>
					<p><strong>하수구 냄새 제거</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#bathroom4" aria-expanded="false" aria-controls="bathroom4">
    					방법 보기</button></p>
					<div class="collapse" id="bathroom4">
					  <div class="card card-body">
					    <p>준비물 : 메그드레인 하수구 냄새 차단 트랩</p>
						<p>1. 하수구 커버를 연다.</p>
						<p>2. 원판에 트랩을 끼우고 돌린다.</p>
						<p>3. 배수구에 넣고 커버를 닫는다.</p>
					  </div>
					</div>
					</div>
				</div>
			</div>
			
			
			<!-- 바닥 및 유리 청소 -->
			<div class="row text-center">
			<h3>바닥 및 유리 청소</h3>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://www.coupang.com/vp/products/4841317133?itemId=2159665480&vendorItemId=70157877895&src=1042503&spec=10304991&addtag=400&ctag=4841317133&lptag=10304991I2159665480&itime=20220830113924&pageType=PRODUCT&pageValue=4841317133&wPcid=4276551741972448048777&wRef=&wTime=20220830113924&redirect=landing&gclid=CjwKCAjwx7GYBhB7EiwA0d8oe2EPgfS9HFPqVl4WXP_XqSmPExOxpGmM73BY_tztusvHSJDetzk7PBoChZQQAvD_BwE&campaignid=15017276043&adgroupid=&isAddedCart=">
					<img src="../images/tape.jpg" alt="테이프 크리너">
					</a>
					<p><strong>바닥 청소</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#clean1" aria-expanded="false" aria-controls="clean1">
    					방법 보기</button></p>
					<div class="collapse" id="clean1">
					  <div class="card card-body">
					    <p>재료 : 테이프 크리너</p>
						<p>1. 테이프 크리너 보호지를 뜯는다.</p>
						<p>2. 바닥에 있는 머리카락과 먼지들을 민다.</p>
						<p>3. 더러워진 크리너를 한겹 뜯어서 다시 사용한다.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://shop.daiso.co.kr/mobile_new/product/product.do?prdMstCd=S0009174">
					<img src="../images/floor2.jpg" alt="밀대">
					</a>
					<p><strong>바닥 밀대 청소기</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#clean2" aria-expanded="false" aria-controls="clean2">
    					방법 보기</button></p>
					<div class="collapse" id="clean2">
					  <div class="card card-body">
					    <p>준비물 : 밀대, 부직포 걸레 or 극세사 걸레</p>
						<p>1. 분무기에 물을 담아 공중에 뿌린다.</p>
						<p>2. 시간이 지난 뒤 밀대에 걸레를 부착해 밀어준다.</p>
						<p>밤 늦은 시간에 청소기를 돌려야 할 때 대신 사용가능!</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
						<a target="_blank" href="https://shop.daiso.co.kr/mobile_new/product/product.do?prdMstCd=S0000643">
					<img src="../images/floor3.jpg" alt="유리닦이">
					</a>
					<p><strong>스프레이 유리창 닦이</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#clean3" aria-expanded="false" aria-controls="clean3">
    					방법 보기</button></p>
					<div class="collapse" id="clean3">
					  <div class="card card-body">
					    <p>재료: 세제, 물, 유리창 닦이</p>
						<p>1. 분사캡을 잡고 물통을 돌려 물통을 연다.</p>
						<p>2. 물통에 세제와 물을 넣는다.</p>
						<p>3. 분사캡을 잡고 물통을 돌려서 잠근다.</p>
						<p>4. 보호캡을 열고 push 버튼을 눌러 물을 분사 한 후 유리를 닦는다.</p>
					  </div>
					</div>
					</div>
				</div>
			</div>
			
			
			<!-- 주방 청소 -->
			<div class="row text-center">
			<h3>기름 때 제거 및 주방 청소</h3>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://briochin.co.kr/product/detail.html?product_no=29&cate_no=51&display_group=1">
					<img src="../images/kitchen1.jpg" alt="브리오신">
					</a>
					<p><strong>기름 때 제거</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#kitchen" aria-expanded="false" aria-controls="kitchen">
    					방법 보기</button></p>
					<div class="collapse" id="kitchen">
					  <div class="card card-body">
					    <p>준비물 : 브리오신 키친 슈퍼 클리너, 키친타올 or 천</p>
					    <p>위의 클리너를 뿌리고 5분정도 뒤 키친타올이나 천 등으로 닦으면 기름때가 말끔하게 사라진다.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://shop.daiso.co.kr/mobile_new/product/product.do?prdMstCd=S0007291">
					<img src="../images/kitchen2.jpg" alt="구연산">
					</a>
					<p><strong>전자레인지 청소</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#kitchen2" aria-expanded="false" aria-controls="kitchen2">
    					방법 보기</button></p>
					<div class="collapse" id="kitchen2">
					  <div class="card card-body">
					    <p>준비물 : 구연산, 뜨거운 물</p>
						<p>1. 컵에 물과 구연산을 넣고 전자레인지에 돌린다.</p>
						<p>2. 마른 천 등으로 전자레인지 내부를 닦는다.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://shop.daiso.co.kr/mobile_new/product/product.do?prdMstCd=S0007291">
					<img src="../images/kitchen2.jpg" alt="구연산">
					</a>
					<p><strong>스텐 식기 청소</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#kitchen3" aria-expanded="false" aria-controls="kitchen3">
    					방법 보기</button></p>
					<div class="collapse" id="kitchen3">
					  <div class="card card-body">
					    <p>준비물 : 구연산, 뜨거운 물</p>
						<p>1. 뜨거운 물에 구연산을 넣는다.</p>
						<p>2. 숟가락, 젓가락, 포크 등을 담궈놓는다.</p>
						<p>3. 30분 뒤 중성세제로 닦아낸다.</p>
						<p>전기 포트 안에 구연산을 넣고 물을 끓이고 30분 방치하면 전기 포트 안에 때를 없앨 수 있다.</p>
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