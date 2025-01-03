<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>식당 정보 입력</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding: 20px;
        }
        .image-preview {
            border: 1px solid #ccc;
            height: 200px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 10px;
            background-color: #f8f9fa;
        }
    </style>
</head>
<body>

<div class="container">
    <h1 class="mb-4">식당 등록/수정</h1>

    <form>
        <div class="form-group">
            <label for="businessNumber">사업자 번호</label>
            <input type="text" class="form-control" id="businessNumber" placeholder="사업자 번호 입력(사업자 번호는 수정이 불가합니다.)">
        </div>

        <div class="form-group">
            <label for="restaurantName">식당명</label>
            <input type="text" class="form-control" id="restaurantName" placeholder="식당명 입력">
        </div>

        <div class="form-group">
            <label for="ownerName">대표명</label>
            <input type="text" class="form-control" id="ownerName" placeholder="대표명 입력">
        </div>

        <div class="form-group">
            <label for="category">식당 분류</label>
            <select class="form-select" id="category">
                <option value="">선택하세요</option>
                <option value="한식">한식</option>
                <option value="중식">분식</option>
                <option value="양식">중식</option>
                <option value="패스트푸드">일식</option>
                <option value="디저트">양식</option>
                <option value="디저트">기타</option>              
            </select>
        </div>

        <div class="form-group">
            <label for="phoneNumber">전화번호</label>
            <input type="text" class="form-control" id="phoneNumber" placeholder="전화번호 입력">
        </div>

        <div class="form-group">
            <label for="email">이메일</label>
            <input type="email" class="form-control" id="email" placeholder="이메일 입력">
        </div>

        <div class="form-group">
            <label for="image">이미지</label>
            <input type="file" class="form-control" id="image">
        </div>

      
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
