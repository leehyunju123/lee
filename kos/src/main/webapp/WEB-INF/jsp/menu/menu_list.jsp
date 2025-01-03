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
	padding: 10px;
	text-align: center;
}

main {
	padding: 20px;
	text-align: left;
}

h1 {
	font-size: 36px;
	margin: 0;
}

.menu-list {
	margin-top: 20px;
	display: flex;
	flex-direction: column;
	align-items: flex-start;
}

.menu-item {
	display: flex;
	align-items: center;
	border: 1px solid #ccc;
	border-radius: 8px;
	padding: 10px;
	margin-bottom: 10px;
	width: 100%;
}

.menu-item img {
	width: 80px;
	height: 80px;
	border-radius: 4px;
	margin-right: 10px;
}

.menu-info {
	flex-grow: 1;
}

.menu-price {
	font-weight: bold;
}

.button {
	margin-left: 10px;
	padding: 5px 10px;
	cursor: pointer;
	border: none;
	border-radius: 5px;
}

.close-button {
	background-color: gray; /* 닫기 버튼 회색 */
	color: white;
	padding: 10px 20px; /* 버튼 패딩 증가 */
	margin: 10px; /* 버튼 간격 추가 */
	width: 150px; /* 버튼 너비 설정 */
}

.add-button {
	background-color: orangered; /* 추가 버튼 색상 */
	color: white;
	padding: 10px 20px; /* 버튼 패딩 증가 */
	margin: 10px; /* 버튼 간격 추가 */
	width: 150px; /* 버튼 너비 설정 */
}

.button-container {
	display: flex;
	justify-content: center; /* 가운데 정렬 */
	margin-top: 20px; /* 위쪽 여백 추가 */
}

.quantity {
	display: flex;
	align-items: center;
	margin-left: 10px;
}

.quantity button {
	margin: 0 5px;
	padding: 5px 10px;
	cursor: pointer;
}

.quantity-display {
	font-weight: bold;
	width: 30px; /* 수량 표시의 너비 */
	text-align: center; /* 가운데 정렬 */
}
</style>

<script>
function closeWindow() {
  window.close();
}
</script>

</head>
<body>

	<header>
		<h1>메뉴</h1>
	</header>

	<main>
		<h1 class="restaurant-name">김밥천국</h1>

		<div class="menu-list">
			<div class="menu-item">
				<img src="https://via.placeholder.com/80" alt="김밥">
				<div class="menu-info">
					<div>새우날치알김밥</div>
					<div class="menu-price">₩4,500</div>
				</div>
				<button class="button" onclick="window.location.href='http://localhost:9090/menu/detail';">보기</button>
				<div class="quantity">
					<button>-</button>
					<div class="quantity-display">0</div>
					<button>+</button>
				</div>
			</div>
			<div class="menu-item">
				<img src="https://via.placeholder.com/80" alt="떡볶이">
				<div class="menu-info">
					<div>돌솥비빔밥</div>
					<div class="menu-price">₩6,000</div>
				</div>
				<button class="button">보기</button>
				<div class="quantity">
					<button>-</button>
					<div class="quantity-display">0</div>
					<button>+</button>
				</div>
			</div>
			<!-- 추가 메뉴 항목을 여기에 추가 -->
		</div>

		<div class="button-container">
			<button class="button close-button" onclick="closeWindow()">닫기</button>
			<button class="button add-button">장바구니에 담기</button>
		</div>
	</main>

</body>
</html>
