<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

        .button-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .button {
            width: 160px; /* Increase button width */
            height: 50px; /* Increase button height */
            background-color: orangered;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin: 0 10px; /* Adjust margin for spacing */
            font-size: 18px; /* Increase font size */
        }

        .button:hover {
            background-color: darkorange;
        }

        img {
            width: 80%; /* Reduce image size */
            border-radius: 8px;
            margin-top: 10px; /* Add space above the image */
        }
    </style>
</head>
<body>

<header>
    <h1>신용/체크카드</h1>
</header>

<main>
    <div class="section">
        <div class="section-title">
            다음 그림과 같이 신용/체크카드를 넣어주세요 <br>
            (삼성/LG페이는 핸드폰을 카드리더기에 터치해주세요)
        </div>
        <img src="/assets/img/payment/creditcard.png" alt="신용카드 이미지">
        <div class="button-container">
            <button class="button back-button" onclick="window.location.href='http://localhost:9090/order/payment';">취소</button>
            <button class="button confirm-button" onclick="window.location.href='http://localhost:9090/paymentmethod/paying?orderNo=${orderNo }';">승인요청</button>
        </div>
    </div> 
</main>

</body>
</html>
