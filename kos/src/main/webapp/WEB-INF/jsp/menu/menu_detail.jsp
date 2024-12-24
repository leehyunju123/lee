<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메뉴 상세정보</title>
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
            display: flex;
            padding: 20px;
            justify-content: center;
            align-items: flex-start;
        }

        .menu-image {
            width: 150px;
            height: 150px;
            border-radius: 4px;
            margin-right: 20px;
        }

        .menu-details {
            display: flex;
            flex-direction: column;
        }

        .menu-name {
            font-size: 24px;
            font-weight: bold;
            margin: 0;
        }

        .menu-price {
            font-size: 20px;
            color: #333;
            margin: 10px 0;
        }

        .menu-description {
            font-size: 16px;
            color: #555;
        }

        .button-container {
            margin-top: 20px;
            display: flex;
            justify-content: center;
        }

        .button {
            padding: 10px 20px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            margin: 0 10px;
        }

        .close-button {
            background-color: gray; /* 닫기 버튼 회색 */
            color: white;
        }

        .add-button {
            background-color: orangered; /* 추가 버튼 색상 */
            color: white;
        }
    </style>
</head>
<body>

    <header>
        <h1>메뉴 상세정보</h1>
    </header>

    <main>
        <img src="https://via.placeholder.com/150" alt="김밥" class="menu-image">
        <div class="menu-details">
            <h2 class="menu-name">새우날치알김밥</h2>
            <div class="menu-price">₩4,500</div>
            <p class="menu-description">
                신선한 새우와 날치알을 사용한 특별한 김밥. 건강하고 맛있습니다.
                다양한 재료가 어우러져 더욱 풍부한 맛을 느낄 수 있습니다.
            </p>
        </div>
    </main>

    <div class="button-container">
        <button class="button close-button">닫기</button>
    </div>

</body>
</html>
