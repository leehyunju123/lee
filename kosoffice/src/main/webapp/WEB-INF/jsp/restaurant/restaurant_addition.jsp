<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>식당 정보</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .table {
            margin: 0;
        }
        .table th {
            background-color: #007bff;
            color: white;
        }
        .pagination {
            justify-content: center;
        }
    </style>
</head>
<body>

<div class="container">
    <h1 class="mt-4">식당 리스트</h1>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>식당명</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>고래식당</td>
            </tr>
            <tr>
                <td>아그라</td>
            </tr>
            <tr>
                <td>오뎅식당</td>
            </tr>
            <tr>
                <td>용호동낙지</td>
            </tr>
            <tr>
                <td>서울떡갈비</td>
            </tr>
            <tr>
                <td>한강로칼국수</td>
            </tr>
            <tr>
                <td>털보고된이</td>
            </tr>
            <tr>
                <td>속초코다리냉면</td>
            </tr>
            <tr>
                <td>중화가정</td>
            </tr>
            <tr>
                <td>다쯔미</td>
            </tr>
        </tbody>
    </table>

    <nav aria-label="Page navigation">
        <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#">«</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">4</a></li>
            <li class="page-item"><a class="page-link" href="#">5</a></li>
            <li class="page-item"><a class="page-link" href="#">6</a></li>
            <li class="page-item"><a class="page-link" href="#">7</a></li>
            <li class="page-item"><a class="page-link" href="#">8</a></li>
            <li class="page-item"><a class="page-link" href="#">9</a></li>
            <li class="page-item"><a class="page-link" href="#">10</a></li>
            <li class="page-item"><a class="page-link" href="#">»</a></li>
        </ul>
    </nav>

    <h2 class="mt-4">선택한 식당</h2>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>식당명</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>고래식당</td>
            </tr>
        </tbody>
    </table>

    <div class="text-center mt-3">
        <button type="button" class="btn btn-primary">확인</button>
        <button type="button" class="btn btn-secondary">닫기</button>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
