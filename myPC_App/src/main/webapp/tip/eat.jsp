<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집밥 꿀팁</title>
<style type="text/css">
.form-control {
	border-radius: 0;
}

.list-group-item:first-child {
	border-top-right-radius: 0;
	border-top-left-radius: 0;
}

.list-group-item:last-child {
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

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

<div id="eat" class="bg-1">
		<div class="container">
			<h3 class="text-center">집밥 꿀팁</h3>
			<p class="text-center">처음엔 배달 음식이 너무 좋았지만 이젠 집밥이 그리울 때 꿀팁들</p>
			<ul class="list-group">
				<li class="list-group-item">찌개, 국
				<span class="label label-danger">new</span></li>
				<li class="list-group-item">밥<span
					class="label label-danger">new</span></li>
				<li class="list-group-item">반찬<span class="label label-danger">new</span></li>
			</ul>

			<div class="row text-center">
			<h3>국, 찌개 레시피</h3>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://www.youtube.com/watch?v=pA3owfYEk28">
					<img src="http://img.youtube.com/vi/pA3owfYEk28/mqdefault.jpg" alt="찌개,국">
					</a>
					<p><strong>계란국</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#soup1" aria-expanded="false" aria-controls="soup1">
    					방법 보기</button></p>
					<div class="collapse" id="soup1">
					  <div class="card card-body">
					    <p>재료 : 물 종이컵 3컵(540ml), 멸치 액젓 2스푼, 진간장 1스푼, 쪽파 1/2대</p>
						<p>1. 냄비에 물을 넣는다.</p>
						<p>2. 멸치 액젓, 진간장을 넣는다.</p>
						<p>3. 계란을 3알을 잘 풀어준 후 부어준다.</p>
						<p>4. 20초 뒤 잘 섞은 후 쪽파를 넣는다.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://www.youtube.com/watch?v=tDlw8yMg9NY">
					<img src="http://img.youtube.com/vi/tDlw8yMg9NY/mqdefault.jpg" alt="찌개,국">
					</a>
					<p><strong>김치찌개</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#soup2" aria-expanded="false" aria-controls="soup2">
    					방법 보기</button></p>
					<div class="collapse" id="soup2">
					  <div class="card card-body">
					    <p>재료 : 찌개용 돼지고기 300~400g, 자른 신김치 5~6스푼, 식용유 2스푼, 된장 1스푼, 고추장 1스푼, 진간장 2스푼, 다진마늘 1스푼, 양파 1/2개, 대파 1대, 물 3컵(약 560ml), 두부, 소금</p>
						<p>1. 냄비에 식용유를 두르고, 고기, 자른김치, 된장, 고추장, 진간장을 넣고 볶는다.</p>
						<p>2. 중불에서 5분이상 넉넉하게 볶아준다.</p>
						<p>3. 돼지고기가 어느정도 익으면 마늘, 양파, 대파를 넣고 더 볶는다.</p>
						<p>4. 채소가 숨이 죽으면 물을 넣고 푹 끓인다.</p>
						<p>5. 물이 보글보글 끓으면 두부를 넣는다.</p>
						<p>6. 마지막으로 소금을 넣어 간을 맞추면 끝.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
						<a target="_blank" href="https://www.youtube.com/watch?v=ffuakdFmuh4">
					<img src="http://img.youtube.com/vi/ffuakdFmuh4/mqdefault.jpg" alt="찌개,국">
					</a>
					<p><strong>된장찌개</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#soup3" aria-expanded="false" aria-controls="soup3">
    					방법 보기</button></p>
					<div class="collapse" id="soup3">
					  <div class="card card-body">
					    <p>재료: 된장 1/3컵, 물 약4컵, 간마늘 1/2큰술, 육수용멸치 10마리, 애호박 1/2개, 양파 1/2개, 느타리버섯 1컵, 대파 2/3컵, 청양고추 2개, 홍고추 1/2개, 두부 1/2모</p>
						<p>1. 애호박, 양파, 두부는 먹기 좋은 크기로 잘라 준비한다.</p>
						<p>2. 느타리버섯은 찢어서 준비한다.</p>
						<p>3. 청양고추, 홍고추, 대파는 1cm 정도 두께로 썰어 준비한다.</p>
						<p>4. 멸치는 머리, 내장을 제거하고 3등분 정도로 찢어 준비한다.</p>
						<p>5. 냄비에 손질한 멸치, 물, 양파를 넣어 끓인다.</p>
						<p>6. 육수가 끓으면 느타리버섯, 애호박, 간마늘, 된장을 넣는다.</p>
						<p>7. 된장 육수가 끓어오르면 대파, 청양고추, 홍고추를 넣어 끓인다.</p>
						<p>8. 찌개가 끓으면 두부를 넣고 1분 정도 끓여 완성한다.</p>
					  </div>
					</div>
					</div>
				</div>
			</div>
			
			
			<!-- 밥 요리 -->
			<div class="row text-center">
			<h3>밥 요리 레시피</h3>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://www.youtube.com/watch?v=_FKZDjgXm90">
					<img src="http://img.youtube.com/vi/_FKZDjgXm90/mqdefault.jpg" alt="밥">
					</a>
					<p><strong>삼겹살 덮밥</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#rice1" aria-expanded="false" aria-controls="rice1">
    					방법 보기</button></p>
					<div class="collapse" id="rice1">
					  <div class="card card-body">
					    <p>재료 : 삽겹살 300g, 양파, 대파, 고춧가루, 진간장, 돈가스 소스, 다진마늘</p>
						<p>1. 삼겹살을 70%정도 구워준다.</p>
						<p>2. 양파 1/4개를 넣고 탔다 싶을 때까지 구워준다.</p>
						<p>3. 고춧가루 1스푼으로 고추기름을 낸다.</p>
						<p>4. 진간장 1스푼, 돈가스 소스 1스푼을 넣고 튀기듯 볶는다.</p>
						<p>5. 물 1/3컵(60ml)를 넣고 다진마늘 1/2스푼 넣고 3분간 끓인다.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://www.youtube.com/watch?v=-lOE4qjCxPg">
					<img src="http://img.youtube.com/vi/-lOE4qjCxPg/mqdefault.jpg" alt="밥">
					</a>
					<p><strong>계란 고추장 비빔밥</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#rice2" aria-expanded="false" aria-controls="rice2">
    					방법 보기</button></p>
					<div class="collapse" id="rice2">
					  <div class="card card-body">
					    <p>재료 : 달걀 3개, 우유(생략 가능), 소금, 설탕, 밥, 고추장, 김가루, 참기름</p>
						<p>1. 계란 3개에 소금 한꼬집, 설탕 1/3스푼 넣고 섞는다.</p>
						<p>2. 계란으로 스크램블 에그를 만들어 반은 접시에 덜어둔다.</p>
						<p>3. 후라이팬에 남은 계란에 고추장 1스푼, 밥, 김가루, 참기름을 넣고 살짝 볶는다.</p>
						<p>4. 접시에 덜어 위에 빼둔 스크램블 에그를 올리면 완성.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
						<a target="_blank" href="https://www.youtube.com/watch?v=1eNkseLEMrA">
					<img src="http://img.youtube.com/vi/1eNkseLEMrA/mqdefault.jpg" alt="밥">
					</a>
					<p><strong>고추장 치즈밥</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#rice3" aria-expanded="false" aria-controls="rice3">
    					방법 보기</button></p>
					<div class="collapse" id="rice3">
					  <div class="card card-body">
					    <p>재료: 밥, 계란, 치즈, 고추장, 케첩, (스위트콘, 햄)</p>
						<p>1. 밥에 고추장과 케첩을 비빈다.</p>
						<p>2. 가운데 계란을 넣고 치즈를 얹어 전자레인지에 2분간 데운다.</p>
					  </div>
					</div>
					</div>
				</div>
			</div>
			
			
			<!-- 반찬 -->
			<div class="row text-center">
			<h3>반찬 레시피</h3>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://www.youtube.com/watch?v=bOLafpzjJSk">
					<img src="http://img.youtube.com/vi/bOLafpzjJSk/mqdefault.jpg" alt="반찬">
					</a>
					<p><strong>계란장</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#side1" aria-expanded="false" aria-controls="side1">
    					방법 보기</button></p>
					<div class="collapse" id="side1">
					  <div class="card card-body">
					    <p>재료 : 계란 4~5개, 양파/청양고추/대파</p>
					    <p>간장 양념 : 진간장 또는 양조간장(3국자), 물 100ml, 설탕 50g</p>
						<p>1. 채소는 작게 다져서 간장양념에 넣어둔다.</p>
						<p>2. 계란은 물이 끓을때 넣고 6분 30초간 삶는다.</p>
						<p>3. 간장양념에 계란 넣고 냉장고에 6시간~하루 뒤에 꺼내먹는다.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
					<a target="_blank" href="https://www.youtube.com/watch?v=766MfZVB6cc">
					<img src="http://img.youtube.com/vi/766MfZVB6cc/mqdefault.jpg" alt="반찬">
					</a>
					<p><strong>소세지 야채볶음</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#side2" aria-expanded="false" aria-controls="side2">
    					방법 보기</button></p>
					<div class="collapse" id="side2">
					  <div class="card card-body">
					    <p>재료 : 비엔나 소세지, 양파 1/2개,색깔별로 파프리카 1/3개씩, 식융유 약간, 통깨 약간</p>
					    <p>양념 소스: 케첩 4큰술, 굴소스 1큰술, 맛술 1큰술, 물엿 1큰술, 다진마늘 1/2큰술, 후추 약간</p>
						<p>1. 비엔나소시지는 한쪽에만 칼집을 낸 후 끓는 물에 넣어 30초정도 데친다.</p>
						<p>2. 양파와 파프리카는 한입크기로 크기로 썬다. 볼에 양념 재료를 넣고 섞는다.</p>
						<p>3. 달군 팬에 식용유를 두르고 비엔나소세지와 양파를 1분정도 볶다가 파프리카를 넣어 약간의 소금과 후추를 뿌려볶는다. 양념을 넣고 고루 섞이도록 볶는다.</p>
						<p>4.접시에 소세지야채볶음을 담고 통깨를 뿌린다.</p>
					  </div>
					</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
						<a target="_blank" href="https://www.youtube.com/watch?v=kWdFSrSYlQY">
					<img src="http://img.youtube.com/vi/kWdFSrSYlQY/mqdefault.jpg" alt="반찬">
					</a>
					<p><strong>어묵볶음</strong></p>
						<p><button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#side3" aria-expanded="false" aria-controls="side3">
    					방법 보기</button></p>
					<div class="collapse" id="side3">
					  <div class="card card-body">
					    <p>재료: 어묵 6장, 대파, 양조간장 또는 진간장 1스푼, 까나리액젓 1스푼, 다진마늘 1/2스푼, 고춧가루 1스푼, 물엿 3스푼, 통깨 2스푼, 참기름 1스푼</p>
						<p>1. 어묵을 1cm 간격으로 잘라준다.</p>
						<p>2. 뜨거운 물을 어묵이 잠길정도로 부어준다.</p>
						<p>3. 30초 후 찬물을 부어 어묵을 식혀준다.</p>
						<p>4. 물기를 제거한 후 대파 흰대를 10cm정도 송송 썰어준다.</p>
						<p>5. 간장, 까나리 액젓, 다진마늘, 고춧가루, 물엿을 넣고 섞어준다.</p>
						<p>4. 양념에 어묵과 대파를 넣고 잘 버무려 준다.</p>
						<p>4. 마지막으로 통깨와 참기름을 넣고 다시 잘 버무려 주면 완성.</p>
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