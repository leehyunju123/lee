<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 정보</title>
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
    <h1 class="mt-4">회원 정보</h1>

    <div class="mb-3">
        <label for="phone" class="form-label">전화번호</label>
        <input type="text" id="phone" class="form-control" placeholder="전화번호 입력" />
    </div>
    <div class="mb-3">
        <label for="joinDate" class="form-label">가입일</label>
        <input type="date" id="joinDate" class="form-control" />
    </div>
    <div class="mb-3">
        <label for="remainingPoints" class="form-label">잔여 포인트</label>
        <input type="text" id="remainingPoints" class="form-control" placeholder="잔여 포인트 입력" />
    </div>
    <div class="mb-3">
        <label for="withdrawalStatus" class="form-label">탈퇴 여부</label>
        <select id="withdrawalStatus" class="form-select">
            <option value="N">N</option>
            <option value="Y">Y</option>
        </select>
    </div>
    <div class="mb-3">
        <label for="usagePeriod" class="form-label">사용 이력 연월일 ~ 연월일</label>
        <input type="date" id="startDate" class="form-control" placeholder="시작일" />
        <input type="date" id="endDate" class="form-control mt-2" placeholder="종료일" />
    </div>

    <h2 class="mt-4">사용 이력</h2>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>NO</th>
                <th>사용 날짜</th>
                <th>사용한 포인트</th>
                <th>잔여 포인트</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>2024-10-10</td>
                <td>500</td>
                <td>5000</td>
            </tr>
        </tbody>
    </table>

    <div class="text-center mt-3">
        <button type="button" class="btn btn-secondary">닫기</button>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
