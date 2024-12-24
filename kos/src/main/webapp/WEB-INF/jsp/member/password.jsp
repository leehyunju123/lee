<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>키오스크</title>
<style>
@font-face {
	font-family: 'seolleimcool-SemiBold';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2312-1@1.1/seolleimcool-SemiBold.woff2') format('woff2');
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
	width: 300px;
	height: 40px;
	text-align: center;
	border: 1px solid #ccc;
	border-radius: 5px;
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
	display: flex;
	justify-content: center; /* 가운데 정렬 */
	margin-top: 20px; /* 위쪽 여백 추가 */
}

.button {
	width: 140px; /* 버튼 너비 조정 */
	height: 40px; /* 버튼 높이 조정 */
	background-color: orangered;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s;
	margin: 0 5px; /* 버튼 사이 간격 */
}

.button:hover {
	background-color: darkorange;
}
</style>
</head>
<body>

<header>
	<h1>비밀번호 입력</h1>
</header>

<main>
	<div class="section">
		<div class="section-title">비밀번호를 입력하여 주세요.</div>
		<div class="input-container">
			<input type="text" id="input-display1" class="input-display"
				placeholder="****" maxlength="11">

			<div class="keypad">
				<div class="key">1</div>
				<div class="key">2</div>
				<div class="key">3</div>
				<div class="key">4</div>
				<div class="key">5</div>
				<div class="key">6</div>
				<div class="key">7</div>
				<div class="key">8</div>
				<div class="key">9</div>
				<div class="key special-key">C</div>
				<div class="key">0</div>
				<div class="key special-key">DEL</div>
			</div>
		</div>
	
	<div class="button-container">
		<button class="button back-button">취소</button>
		<button class="button confirm-button" onclick="window.location.href='http://localhost:9090/member/reg';">입력</button>
	</div>
	</div>
</main>

</body>
</html>
