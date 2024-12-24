<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>포인트 적립</title>
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
            text-align: center;
            padding-top: 50px;
        }

        header {
            background-color: orangered;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .message {
            font-size: 24px;
            margin: 20px 0;
        }

        .button {
            width: 80px;
            height: 40px;
            background-color: orangered;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-size: 16px;
            margin: 0 10px;
        }

        .button:hover {
            background-color: darkorange;
        }
    </style>
    <script>
        // 15초 후에 창 자동 닫기
        setTimeout(function() {
            window.close();
        }, 15000);
    </script>
</head>
<body>
<header>
    <h1>포인트 적립</h1>
</header>

<main>
    <div class="message">
        포인트 적립을 하시겠습니까?<br>
        15초 후 창이 자동으로 닫힙니다...
    </div>
    <div>
        <button class="button" onclick="window.location.href='http://localhost:9090/member/earnpoint?orderNo=${orderNo}';">예</button>
        <button class="button" onclick="window.location.href='http://localhost:9090/paymentmethod/complete?orderNo=${orderNo}';">아니오</button>
    </div>
</main>

</body>
</html>
