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
	width: 400px; /* 너비를 더 늘림 */
	height: 70px; /* 높이를 더 늘림 */
	padding: 0; /* 패딩 제거 */
	font-size: 24px; /* 글자 크기 증가 */
	text-align: center;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.button-container {
	display: flex;
	justify-content: center; /* 가운데 정렬 */
	margin-top: 20px; /* 위쪽 여백 추가 */
}

.button {
	color: white;
	padding: 20px 40px; /* 버튼 크기 조정 */
	margin: 10px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s;
	font-size: 20px; /* 글자 크기 증가 */
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
	padding: 30px; /* 패딩 증가 */
	text-align: center;
	font-size: 24px; /* 글자 크기 증가 */
	cursor: pointer;
	transition: background-color 0.3s;
}

.key:hover {
	background-color: #d0d0d0;
}

.special-key {
	background-color: #f0a500;
	font-size: 20px; /* 글자 크기 증가 */
}

.popup {
    display: none;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.2);
    z-index: 9999;
    width: 300px;
    text-align: center;
  }

  .popup .popup-content {
    margin-bottom: 20px;
  }

  .popup .close-button {
    background-color: #ff5c5c;
    border: none;
    color: white;
    padding: 10px;
    cursor: pointer;
    border-radius: 5px;
    font-size: 16px;
  }

  .popup .close-button:hover {
    background-color: #ff2d2d;
  }
</style>
</head>
<body>

<header>
	<h1>포인트 적립하기</h1>
</header>

<main>
<form id="aform">
	<input type='hidden' name='orderNo' value='${orderNo }'>
	<input type='hidden' id='vPoint' name='point'>
	<div class="input-container">
		적립예정 포인트<div class="section-title" id="point" name = "point"></div>
	</div>
	<div class="input-container">
		<div class="section-title" id="phone-label"></div>
		<input type="text" id="input-display2" name = "memberPhone" class="input-display" readonly placeholder="전화번호 입력">
	</div>
</form>
	<div class="keypad">
		<div class="key" onclick="appendNumber('1')">1</div>
		<div class="key" onclick="appendNumber('2')">2</div>
		<div class="key" onclick="appendNumber('3')">3</div>
		<div class="key" onclick="appendNumber('4')">4</div>
		<div class="key" onclick="appendNumber('5')">5</div>
		<div class="key" onclick="appendNumber('6')">6</div>
		<div class="key" onclick="appendNumber('7')">7</div>
		<div class="key" onclick="appendNumber('8')">8</div>
		<div class="key" onclick="appendNumber('9')">9</div>
		<div class="key special-key" onclick="clearInput()">C</div>
		<div class="key" onclick="appendNumber('0')">0</div>
		<div class="key special-key" onclick="deleteLastDigit()">DEL</div>
	</div>

	<div class="button-container">
		<!-- '건너뛰기' 버튼 클릭 시 http://localhost:9090/paymentmethod/complete로 이동 -->
		<button class="button back-button" onclick="window.location.href='http://localhost:9090/paymentmethod/complete?orderNo=${orderNo}';">건너뛰기</button>
		<!-- '적립하기' 버튼 클릭 시 alert 띄우고, 그 후 http://localhost:9090/paymentmethod/complete로 이동 -->
		<button class="button confirm-button" onclick="confirmPointEarn();">적립하기</button>
	</div>
	
	<!-- 팝업 창 HTML -->
<div id="pointPopup" class="popup">
  <div class="popup-content">
    <h3>포인트 적립 완료!</h3>
    <p>포인트가 성공적으로 적립되었습니다.</p>
  </div>
  <button class="close-button" onclick="closePopup()">닫기</button>
</div>
</main>

    <script src="/assets/js/common.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
<script>	

	$(document).ready(function() {
	    call_server(aform, '/member/point', setPointInfo);
	});
	
	function setPointInfo(data) {
	    console.log(data);
	    $('#point').text(data.point);
	    $('#vPoint').val(data.point);
	}
	

	// 전화번호 입력 필드 업데이트
	function appendNumber(number) {
		var inputField = document.getElementById('input-display2');
		var currentValue = inputField.value.replace(/-/g, ''); // 기존의 '-' 제거

		// 13자리가 되면 더 이상 입력할 수 없도록 제한
		if (currentValue.length < 11) {
			currentValue += number;
			// 3자리마다 '-' 추가
			if (currentValue.length === 3 || currentValue.length === 7) {
				currentValue += '-';
			}
			inputField.value = formatPhoneNumber(currentValue);
		}
	}

	// 'C' 버튼 클릭 시 입력 초기화
	function clearInput() {
		document.getElementById('input-display2').value = '';
	}

	// 'DEL' 버튼 클릭 시 마지막 숫자 삭제
	function deleteLastDigit() {
		var inputField = document.getElementById('input-display2');
		var currentValue = inputField.value.replace(/-/g, ''); // '-' 제거하고 마지막 문자 삭제
		currentValue = currentValue.slice(0, -1);

		// '-'를 적절히 제거 후 반영
		if (currentValue.length === 3 || currentValue.length === 7) {
			currentValue = currentValue.slice(0, -1);
		}

		// 결과를 다시 반영
		inputField.value = formatPhoneNumber(currentValue);
	}

	// 전화번호 포맷팅 함수
	function formatPhoneNumber(phoneNumber) {
		if (phoneNumber.length <= 3) {
			return phoneNumber;
		} else if (phoneNumber.length <= 6) {
			return phoneNumber.slice(0, 3) + '-' + phoneNumber.slice(3);
		} else {
			return phoneNumber.slice(0, 3) + '-' + phoneNumber.slice(3, 7) + '-' + phoneNumber.slice(7, 11);
		}
	}

	// '적립하기' 버튼 클릭 시 알림을 띄우고 그 후 페이지 이동
	function confirmPointEarn() {
	    call_server(aform, '/member/savePoint', setPointSave);
	}

	// 포인트 적립이 완료된 후 팝업을 띄우는 함수
	function setPointSave(data) {
	    console.log(data);
	    $('#memberPhone').val('');
	    $('#point').val('');
	    
	    // 포인트 적립 성공 시 팝업을 띄운다
	    if (data) {
	        openPopup();
	        // 잠시 후 메인 페이지로 이동
	        setTimeout(function() {
	            location.href = 'http://localhost:9090/paymentmethod/complete?orderNo=${orderNo}';
	        }, 2000); // 2초 후 페이지 이동
	    }
	}

	// 팝업을 여는 함수
	function openPopup() {
	    document.getElementById('pointPopup').style.display = 'block';
	}

	// 팝업을 닫는 함수
	function closePopup() {
	    document.getElementById('pointPopup').style.display = 'none';
	}

</script>

</body>
</html>
