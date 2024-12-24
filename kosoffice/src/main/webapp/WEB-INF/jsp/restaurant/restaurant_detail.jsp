<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	$('#myModal').modal('toggle')
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
    </style>
</head>
<body>

<div class="container">
    <h1 class="mt-4">식당 상세</h1>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>식당명</th>
                <th>대표명</th>
                <th>분류</th>
                <th>전화번호</th>
                <th>이메일</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>고래식당</td>
                <td>이현주</td>
                <td>한식</td>
                <td>010-9903-74454</td>
                <td>example@example.com</td>
            </tr>
        </tbody>
    </table>

    <table class="table table-bordered mt-3">
        <thead>
            <tr>
                <th>개업연월일</th>
                <th>영업여부</th>
                <th>영업종료일</th>
                <th>사업자번호</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    <div>2024-01-24</div>
                    <div>(추가 정보)</div>
                </td>
                <td>
                    <select class="form-select">
                        <option value="Y">영업 중</option>
                        <option value="N">영업 종료</option>
                    </select>
                </td>
                <td>-</td>
                <td>153-010-21</td>
            </tr>
        </tbody>
    </table>

    <div class="text-center mt-3">
        <button type="button" class="btn btn-success">수정</button>
        <button type="button" class="btn btn-secondary">닫기</button>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
