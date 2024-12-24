	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>키오스크</title>
<style>
@font-face {
	font-family: 'seolleimcool-SemiBold';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2312-1@1.1/seolleimcool-SemiBold.woff2') format('woff2');
	font-weight: normal;
	font-style: normal;
}

body {
	font-family: 'seolleimcool-SemiBold';
	margin: 0;
	padding: 0;
	background-color: #f8f8f8;
}

header {
	background-color: orangered;
	color: white;
	padding: 20px;
	text-align: center;
	border-bottom: 3px solid #d35400;
}

main {
	padding: 20px;
	text-align: center;
}

.section {
	margin: 20px auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 8px;
	background-color: #fff;
	width: 90%;
	max-width: 600px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.section-title {
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 15px;
	color: #333;
}

.input-container {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.input-display {
	width: 200px; /* 너비 설정 */
	height: 40px; /* 높이 설정 */
	padding: 0; /* 패딩 제거 */
	font-size: 16px;
	text-align: center;
	margin-right: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.query-button {
	width: 100px; /* 너비 설정 */
	height: 40px; /* 높이 설정 */
	background-color: gray;
	color: white;
	padding: 0; /* 패딩을 0으로 설정 */
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.query-button:hover {
	background-color: darkgray;
}

.keypad {
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	gap: 10px;
	margin-top: 10px;
}

.key {
	background-color: #e7e7e7;
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 20px;
	text-align: center;
	font-size: 20px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.key:hover {
	background-color: #d0d0d0;
}

.special-key {
	background-color: #f0a500;
	font-size: 18px;
}

.button-container {
	display: flex; /* 플렉스 박스를 사용하여 한 줄에 배치 */
	justify-content: center; /* 가운데 정렬 */
	align-items: center; /* 세로 정렬 */
	margin-top: 20px; /* 위쪽 여백 추가 */
}

.back-button, .confirm-button {
	color: white;
	padding: 10px 40px;
	margin: 10px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.back-button {
	background-color: gray;
}

.back-button:hover {
	background-color: darkgray;
}

.confirm-button {
	background-color: orangered;
}

.confirm-button:hover {
	background-color: darkorange;
}

.points-display {
	margin: 10px 0;
	font-size: 20px;
	text-align: center;
	color: #333;
}

.payment-methods {
	display: flex; /* 플렉스 박스를 사용하여 한 줄에 배치 */
	justify-content: center; /* 가운데 정렬 */
	margin-top: 20px;
}

.payment-method {
	text-align: center;
	margin: 10px;
	border: 2px solid black; /* 검은색 테두리 추가 */
	border-radius: 5px; /* 모서리 둥글게 */
	padding: 10px; /* 여백 추가 */
	background-color: #fff; /* 배경색 추가 */
	cursor: pointer; /* 커서를 포인터로 변경 */
}

.payment-image {
	width: 80px; /* 원하는 너비 설정 */
	height: auto; /* 비율 유지 */
}

.total-info {
	text-align: center; /* 가운데 정렬 */
	margin-left: 5px; /* 버튼과의 간격을 줄임 */
	font-size: 18px; /* 글자 크기 조정 */
	font-weight: bold;
}

.total-info span {
	margin: 0 20px; /* 간격 추가 */
}
</style>
</head>
<body>

<header>
	<h1>결제수단 선택</h1>
</header>

<main>
	<div class="section">
		<div class="section-title">포인트 조회 및 사용</div>
		<form id="searchform">
		<div class="input-container">
			<input type='hidden' name='orderNo' value='${orderNo }'>
				<div style="display: flex; align-items: center; margin-bottom: 15px;">
					<input type="text" class="input-display" 
						   placeholder="핸드폰 번호" maxlength="13" 
						   id="memberphone" name="memberPhone" >
					<input type="button" class="query-button" value="조회" onclick="searchlist()">
				</div>
				<div class="points-display" id="point" name="point">보유 포인트: 0</div>
		</div>
		<div class="input-container">
			<div style="display: flex; align-items: center; margin-bottom: 15px;">
				<input type="text" id="input-display2" name = "discountAmount" class="input-display"
					   placeholder="사용할 포인트">
				<button type = "button" class="query-button" onclick="usePoints()">사용하기</button>
			</div>
		</div>
		</form>
		
		<div class="keypad">
			<div class="key" onclick="addNumber(1)">1</div>
			<div class="key" onclick="addNumber(2)">2</div>
			<div class="key" onclick="addNumber(3)">3</div>
			<div class="key" onclick="addNumber(4)">4</div>
			<div class="key" onclick="addNumber(5)">5</div>
			<div class="key" onclick="addNumber(6)">6</div>
			<div class="key" onclick="addNumber(7)">7</div>
			<div class="key" onclick="addNumber(8)">8</div>
			<div class="key" onclick="addNumber(9)">9</div>
			<div class="key special-key" onclick="clearInput()">C</div>
			<div class="key" onclick="addNumber(0)">0</div>
			<div class="key special-key" onclick="deleteLastChar()">DEL</div>
		</div>
	</div>

	<div class="button-container">
	<form id = "aform">
	   <input type='hidden' name='orderNo' value="${orderNo }">
		<div class="total-info">
    총금액: ₩ <span id = "totalPrice">-</span> 할인금액: ₩<span id="discountAmount">0</span> <span>=</span> 결제금액: ₩<span id="finalAmount"></span>
</div>
</form>
		<button class="back-button" id = "cancle">취소</button>
	</div>
	<div class="section">
		<div class="section-title">결제수단 선택</div>
		<div class="payment-methods">
			<div class="payment-method" onclick="payment()">
				<img src="/assets/img/payment/신용카드.png" class="payment-image" alt="신용/체크카드">
				<p>신용/체크카드</p>
			</div>
			<div class="payment-method" onclick="window.location.href='http://localhost:9090/paymentmethod/appcard';">
				<img src="/assets/img/payment/앱카드,바코드.png" class="payment-image" alt="앱카드/바코드">
				<p>앱카드/바코드</p>
			</div>
			<div class="payment-method" onclick="window.location.href='http://localhost:9090/paymentmethod/naverpay';">
				<img src="/assets/img/payment/네이버페이.png" class="payment-image" alt="네이버페이">
				<p>네이버페이</p>
				
			</div>
		</div>
	</div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="/assets/js/jquery-3.7.1.min.js"></script>
<script src="/assets/js/common.js"></script>

<script>
	// 현재 포커스된 입력창에 값을 추가하는 변수
	let currentInput = null;
	let phoneNumber = ""; // 전화번호 저장
	let usePointsValue = ""; // 사용 포인트 저장
	
	// 키패드에서 번호 추가 함수
	function addNumber(num) {
	    if (currentInput) {
	        if (currentInput === 'memberphone') {
	            // 전화번호 필드에 값 추가
	            if (phoneNumber.length < 13) { // 최대 13자리 (010-xxxx-xxxx 형식)
	                phoneNumber += num;
	                updatePhoneNumberDisplay();
	            }
	        } else if (currentInput === 'input-display2') {
	            // 포인트 필드에 값 추가
	            if (usePointsValue.length < 7) { // 최대 7자리 포인트 (최대 9,999,999 포인트)
	                usePointsValue += num;
	                updateUsePointsDisplay();
	            }
	        }
	    }
	}
	
	// 입력값에 대한 수정 함수 (포커스를 맞추면 해당 입력값을 수정)
	function updatePhoneNumberDisplay() {
	    let formattedPhone = phoneNumber.replace(/(\d{3})(\d{4})(\d{4})/, "$1-$2-$3");
	    document.getElementById('memberphone').value = formattedPhone;
	}
	
	function updateUsePointsDisplay() {
	    document.getElementById('input-display2').value = usePointsValue;
	}
	
	// 키패드에서 마지막 문자 삭제
	function deleteLastChar() {
	    if (currentInput) {
	        if (currentInput === 'memberphone') {
	            phoneNumber = phoneNumber.slice(0, -1);
	            updatePhoneNumberDisplay();
	        } else if (currentInput === 'input-display2') {
	            usePointsValue = usePointsValue.slice(0, -1);
	            updateUsePointsDisplay();
	        }
	    }
	}
	
	// C 버튼: 입력 초기화
	function clearInput() {
	    if (currentInput) {
	        if (currentInput === 'memberphone') {
	            phoneNumber = "";
	            updatePhoneNumberDisplay();
	        } else if (currentInput === 'input-display2') {
	            usePointsValue = "";
	            updateUsePointsDisplay();
	        }
	    }
	}
	
	// 포인트 사용 처리
	function usePoints() {
		
		
	    // 보유 포인트를 가져옵니다. 이 값은 서버에서 조회한 보유 포인트입니다.
	    const availablePoints = parseInt(document.getElementById('point').innerText.replace('보유 포인트: ', ''));
	    
	    // 사용자가 입력한 포인트 값
	    const pointsToUse = parseInt(document.getElementById('input-display2').value || '0');
	    
	    // 입력한 포인트가 보유 포인트보다 많으면 경고
	    if (pointsToUse > availablePoints) {
	        alert('사용할 수 있는 포인트가 부족합니다.');
	    } else {
	        // 서버에서 받아온 총 금액을 사용
	        const totalAmount = parseInt($('#totalPrice').text()); // totalPrice는 setPaymentInfo 함수에서 계산된 총 금액
	        const discountAmount = pointsToUse; // 할인 금액 = 사용한 포인트
	        const finalAmount = totalAmount - discountAmount; // 최종 결제 금액 계산

	        // 화면에 할인금액과 최종 금액 출력
	        document.getElementById('discountAmount').textContent = discountAmount;
	        document.getElementById('finalAmount').textContent = finalAmount;
       		call_server(searchform, '/payment/pointsave', savePointData);
	    }
	}
	function savePointData(data) {
	    console.log(data);
	}
	
	function callBackSave(data) {
			if(data) {
				alert("저장되었습니다");
			} else {
				alert("오류가 발생하였습니다.");
			}
			}
	
	// 전화번호 조회 함수
	function searchlist() {
	    call_server(searchform, '/payment/Point', setPointData);
	}

	function setPointData(data) {
	    console.log(data);
	    $('#memberPhone').val(data.memberPhone);
	    var points = data.point || 0;
	    $('#point').text('보유 포인트: ' + points);
	}

	// 전화번호 입력 필드 포커스 설정
	document.getElementById('memberphone').addEventListener('focus', function() {
	    currentInput = 'memberphone';
	});

	// 포인트 입력 필드 포커스 설정
	document.getElementById('input-display2').addEventListener('focus', function() {
	    currentInput = 'input-display2';
	});

	$(document).ready(function() {
	    call_server(searchform, '/payment/payment', setPaymentInfo);
	});

	function setPaymentInfo(list) {
	    console.log(list);
	    var totalPrice = 0;
	    var discountAmount = 0; // 할인금액 초기화

	    // list 배열에서 가격 합산 (총 금액 계산)
	    for (var i = 0; i < list.length; i++) {
	        totalPrice += Number(list[i].price); // 각 항목의 가격을 더함
	    }

	    // 총 금액을 화면에 표시
	    $('#totalPrice').text(totalPrice);

	    // 할인 금액 계산 (현재는 할인 금액이 0으로 설정됨, 추후 포인트 사용 후 업데이트 됨)
	    discountAmount = 0; // 할인금액을 0으로 초기화

	    // 할인 금액을 적용한 최종 결제 금액 계산
	    var discountPrice = totalPrice - discountAmount;

	    // 최종 결제 금액을 화면에 표시
	    $('#discountPrice').text(discountPrice);
	    
	}
	
	function payment(){
		if($('#input-display2').val()=='' || $('#input-display2').val()=='0'){
			window.location.href='/paymentmethod/creditcard?orderNo=${orderNo}';
		}else{
			call_server(searchform, '/payment/afterPoint', savePaymentInfo);
		}
	}
	
	
	
	function savePaymentInfo(data){
		if(data){
			window.location.href='/paymentmethod/creditcard?orderNo=${orderNo}';
		}
	}

	  // 취소 버튼 클릭 시 페이지 새로고침
    document.getElementById('cancle').addEventListener('click', function() {
        // 페이지 새로 고침
        location.reload();
    });
</script>

</body>
</html>