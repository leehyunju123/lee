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
    </style>
</head>
<body>

<div class="container">
    <h1 class="mt-4">신용/체크카드</h1>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>총 결제 금액</th>
                <th>활성화 여부</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    <input type="text" class="form-control" placeholder="1,200,000" />
                </td>
                <td>
                    <select class="form-select">
                        <option value="">선택</option>
                        <option value="Y">Y</option>
                        <option value="N">N</option>
                    </select>
                </td>
            </tr>
        </tbody>
    </table>

    <div class="text-center mt-3">
        <button type="button" class="btn btn-success">저장</button>
        <button type="button" class="btn btn-secondary">닫기</button>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
