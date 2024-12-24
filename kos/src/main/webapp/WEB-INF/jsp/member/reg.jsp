<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 등록 확인</title>
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

        .message {
            font-size: 20px;
            margin-bottom: 15px;
            color: #333;
        }

        .button-container {
            display: flex;
            justify-content: center; /* 가운데 정렬 */
            margin-top: 20px; /* 위쪽 여백 추가 */
        }

        .button {
            color: white;
            padding: 15px 30px; /* 버튼 크기 조정 */
            margin: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-size: 18px; /* 글자 크기 증가 */
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
    </style>
</head>
<body>

<header>
    <h1>회원 등록 </h1>
</header>

<main>
    <div class="input-container">
        <div class="message">등록된 정보가 없습니다.</div>
        <div class="message">회원가입 하시겠습니까?</div>
    </div>

    <div class="button-container">
        <button class="button back-button">아니요</button>
        <button class="button confirm-button">회원가입</button>
    </div>
</main>

<script>
    // 버튼 클릭 이벤트 처리
    document.querySelector('.back-button').addEventListener('click', function() {
        // 아니요 버튼 클릭 시 행동
        window.location.href = 'http://localhost:9090/order/payment'; // 지정된 URL로 이동
    });

    document.querySelector('.confirm-button').addEventListener('click', function() {
        // 회원가입 버튼 클릭 시 행동
        window.location.href = 'http://localhost:9090/member/join'; // 지정된 URL로 이동
    });
</script>

</body>
</html>
