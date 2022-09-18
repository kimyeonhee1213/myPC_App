<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>
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
	#div1{
		display: flex;
		justify-content: center;
		align-items:center;
	}	
	
	#btnJoin {
		text-align: center;
	}
	
	h2{
		font-family: 'BMJUA' !important;
		font-weight: bold;
		text-align: center;
	}
  </style>
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

 

<title>회원가입</title>

<script>
function join() {
	var userid = document.getElementById("userid");
	var passwd = document.getElementById("passwd");
	var passwdcheck = document.getElementById("passwdcheck");
	var name = document.getElementById("name");
	var phone = document.getElementById("phone");
	var exp1 = /^[A-Za-z0-9]{4,10}$/;
	var exp2 = /(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^*+=-])(?=.*\d){8,12}/;
	var exp3 = /^[가-힣]+$/;//한글만 입력하는 정규식
	var exp4 = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;
	if(userid.value == ""){
		alert("아이디는 필수 입력입니다.");
		userid.focus();
		return;
	}else if(!exp1.test(userid.value)){
		alert("아이디는 영문, 숫자를 사용한 4~10자리로 입력");
		userid.focus();
		return;
	}else if(passwd.value == ""){
		alert("비밀번호는 필수 입력입니다.");
		passwd.focus();
		return;
	}else if(!exp2.test(passwd.value)){
		alert("비밀번호는 영문대소문자, 숫자, 특수기호(!@#$%^*+=-)를 모두 사용하여 8~12자리로 입력하세요");
		passwd.focus();
		return;
	}else if(passwd.value != passwdcheck.value){
		alert("비밀번호가 일치하지 않습니다.");
		return;
	}else if(name.value == ""){
		alert("이름은 필수 입력입니다.");
		name.focus();
		return;
	}else if(!exp3.test(name.value)){
		alert("이름은 한글만 입력가능합니다.");
		name.focus();
		return;
	}else if(form1.idDuplication.value != "idCheck"){
		alert("아이디 중복체크를 해주세요");
		return;
	}else if(phone.value == ""){
		alert("휴대폰 번호 입력은 필수입니다.");
		phone.focus();
		return;
	}else if(!exp4.test(phone.value)){
		alert("휴대폰 번호를 다시 입력해주세요!");
		return;
	}
	
	document.form1.action="${path}/pmember_servlet/join.do";
	document.form1.submit();
}

function IdChk() {
	if(document.form1.userid.value == ""){
		alert("아이디를 입력하세요");
		document.form1.userid.focus();
	}
	window.open("check.jsp","chkForm","width=500,height=300");
}

function inputIdChk() {
	document.form1.idDuplication.value="idUncheck";
}


function sample6_execDaumPostcode() {
  new daum.Postcode(
    {
       oncomplete : function(data) {
    	// 각 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var addr = ''; // 주소 변수
           var extraAddr = ''; // 참고항목 변수

           //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
           if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
               addr = data.roadAddress;
           } else { // 사용자가 지번 주소를 선택했을 경우(J)
               addr = data.jibunAddress;
           }

           // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
           if(data.userSelectedType === 'R'){
               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
               if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                   extraAddr += data.bname;
               }
               // 건물명이 있고, 공동주택일 경우 추가한다.
               if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
               }
               // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
               if(extraAddr !== ''){
                   extraAddr = ' (' + extraAddr + ')';
               }
              //주소변수 문자열과 참고항목 문자열 합치기
              addr += extraAddr;
           
           } else {
                addr += ' ';
           }

           // 우편번호와 주소 정보를 해당 필드에 넣는다.
           $("#zipcode").val(data.zonecode);
          $("#address").val(addr);
           // 상세주소 입력란 disabled 속성 변경 및 커서를 상세주소 필드로 이동한다.
    		 $("#address").attr("readonly",false);
      	 $("#address").focus();
        }
    }).open();
}
</script>
</head>
<body>
<%String id = request.getParameter("userid");
if(id == null){
	id = "";
}

String jungbokid = (String)request.getAttribute("jungbokid");

String result = "";

if(jungbokid == ""){
	result = id + "는 사용하셔도 됩니다";
}else if(jungbokid == null || id == ""){
	result = "";
}else {
	result = id + "는 이미 있습니다.";
}
%>
<%@ include file="../nav.jsp" %>
<h2>회원가입</h2>
<div id="div1">

<form method="post" name="form1" id="form1">
 <label class="form-label">아이디</label>
 <input class="form-control" name="userid" id="userid" value="<%=id%>" onkeydown="inputIdChk()">
 <input type="button" class="form-control" onclick="IdChk()" value="아이디 중복 확인"><br>
 <input type="hidden" name="idDuplication" value="idUncheck">
<p style="color: red;"><%=result%></p> 
 <label class="form-label">비밀번호</label>
 <input type="password" id="passwd" class="form-control" placeholder="비밀번호를 입력하세요" name="passwd">
  <br>
 <label class="form-label">비밀번호 확인</label>
 <input type="password" id="passwdcheck" class="form-control" placeholder="비밀번호를 입력하세요" name="passwdcheck">
 <br>
  <label class="form-label">이름</label>
 <input class="form-control" id="name" name="name">
 <br>
  <label class="form-label">이메일</label>
 <input type="email" class="form-control" id="email" name="email">
 <br>
  <label class="form-label">우편번호</label>
 <input class="form-control" id="zipcode" name="zipcode" readonly="readonly">
  <input type="button" class="form-control" value="우편번호찾기" onclick="sample6_execDaumPostcode()">
 <br>
  <label class="form-label">주소</label>
<input class="form-control" name="address" id="address" readonly="readonly" size="40"> <br>
<input class="form-control" name="address2" id="address2" size="45">
 <br><br>
  <label class="form-label">전화번호</label>
 <input type="tel" class="form-control" name="phone" id="phone">
 <br>
 	<div id="btnJoin">
 		<button type="button" class="btn btn-info" onclick="join()">회원가입</button>
 	</div>
</form>
</div>
</body>
</html>