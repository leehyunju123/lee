<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>결제중입니다</title>
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
            text-align: center; /* 중앙 정렬 */
            padding-top: 50px; /* 상단 여백 */
        }

        header {
            background-color: orangered;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .message {
            font-size: 24px; /* 메시지 글자 크기 */
            margin: 20px 0; /* 위쪽과 아래쪽 여백 */
        }

        .button {
            width: 160px; /* 버튼 너비 */
            height: 50px; /* 버튼 높이 */
            background-color: orangered;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-size: 18px; /* 버튼 글자 크기 */
            margin: 10px; /* 버튼 사이 여백 추가 */
        }

        .button:hover {
            background-color: darkorange; /* 마우스 오버 시 색상 변경 */
        }
    </style>
    <script>
        // 5초 후에 자동으로 페이지 이동
        setTimeout(function() {
            window.location.href = 'http://localhost:9090/paymentmethod/point?orderNo=${orderNo}';
        }, 5000);
    </script>
</head>
<body>

<header>
    <h1>결제중입니다</h1>
</header>

<main>
    <div class="message">
        결제가 진행 중입니다...<br>
        5초 후 자동으로 페이지로 이동합니다...
    </div>
    <button class="button" onclick="window.location.href='http://localhost:9090/main';">닫기</button>
    <div style="margin-top: 20px;">
    </div>
</main>

</body>
</html>
