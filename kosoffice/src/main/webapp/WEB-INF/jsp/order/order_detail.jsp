<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문 상세 조회</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .table {
            margin: 0;
        }
        .table th {
            background-color: #007bff;
            color: white;
        }
        .summary {
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="container">
    <h1 class="mt-4">주문 상세 조회</h1>

    <div class="mt-3">
        <h5>매장 정보</h5>
        <p>매장명: 쇼핑몰 푸드코트</p>
        <p>사업자: 111-11-11111</p>
        <p>주소: 경기도 의정부</p>
        <p>대표자: 홍길동</p>
        <p>발행일: 2024.11.01 12:40</p>
    </div>

    <h5 class="mt-4">상품 목록</h5>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>상품명</th>
                <th>단가</th>
                <th>수량</th>
                <th>금액</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>명태 시래기조림</td>
                <td>14,000</td>
                <td>2</td>
                <td>28,000</td>
            </tr>
            <tr>
                <td>갈비만두</td>
                <td>5,000</td>
                <td>1</td>
                <td>5,000</td>
            </tr>
            <tr>
                <td>참이슬</td>
                <td>4,000</td>
                <td>2</td>
                <td>8,000</td>
            </tr>
        </tbody>
    </table>

    <div class="summary mt-3">
        <p>총금액: 41,000 원</p>
        <p>할인액: 2,000 원</p>
        <p>합계: 39,000 원</p>
        <p>결제 수단: 카드 39,000 원</p>
    </div>

    <div class="mt-4">
        <h5>주문 처리</h5>
        <p>고래식당(으)로 가세요</p>
        <p>주문 목록: 명태 시래기조림 (2), 갈비만두 (1), 참이슬 (2)</p>
        <p>주문번호: 42</p>
    </div>

    <div class="text-center mt-3">
        <button type="button" class="btn btn-secondary">닫기</button>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
