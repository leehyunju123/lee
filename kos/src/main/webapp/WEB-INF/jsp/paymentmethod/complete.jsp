<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>결제 완료</title>
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

        .completed {
            color: red; /* 결제 및 완료 메시지 색상 */
        }

        .order-number {
            color: orange; /* 주문번호 색상 */
        }

        img {
            width: 80%; /* 이미지 크기 조정 */
            max-width: 400px; /* 최대 너비 설정 */
            border-radius: 8px; /* 이미지 모서리 둥글게 */
            margin-top: 20px; /* 이미지 위쪽 여백 */
        }

        .button {
            margin-top: 20px; /* 버튼 상단 여백 */
            width: 100px; /* 버튼 너비 */
            height: 40px; /* 버튼 높이 */
            background-color: orangered; /* 버튼 배경색 */
            color: white; /* 버튼 글자색 */
            border: none; /* 버튼 테두리 없음 */
            border-radius: 5px; /* 버튼 모서리 둥글게 */
            cursor: pointer; /* 마우스 커서 포인터 */
            transition: background-color 0.3s; /* 호버 효과 */
        }

        .button:hover {
            background-color: darkorange; /* 마우스 오버 시 색상 변경 */
        }
    </style>
    <script>
        // 7초 후에 자동으로 페이지 이동
        setTimeout(function() {
            window.location.href = 'http://localhost:9090/paymentmethod/receipt?orderNo=${orderNo}';';
        }, 7000);
    </script>
</head>
<body>

<header>
    <h1>결제 완료</h1>
</header>

<main>
    <div class="message completed">
        결제가 완료되었습니다.<br>
        <span class="order-number">영수증 하단의 주문번호를 확인해주세요.</span>
    </div>
    <img src="/assets/img/payment/영수증 그림.png" alt="영수증 이미지"> <!-- 영수증 이미지 경로 설정 -->
    <div class="message">
        7초 후 자동으로 창이 닫힙니다...
    </div>
    <button class="button" onclick="window.location.href='http://localhost:9090/paymentmethod/receipt?orderNo=${orderNo}';">닫기</button> <!-- 닫기 버튼 수정 -->
</main>

</body>
</html>
