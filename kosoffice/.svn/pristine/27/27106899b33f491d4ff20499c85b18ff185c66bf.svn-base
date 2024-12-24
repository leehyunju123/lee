<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메뉴 등록</title>
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
    <h1 class="mb-4">메뉴 등록</h1>

    <form>
        <div class="form-group">
            <label for="menuName">메뉴명</label>
            <input type="text" class="form-control" id="menuName" placeholder="메뉴명 입력">
        </div>

        <div class="form-group">
            <label for="restaurant">판매식당</label>
            <div class="input-group">
                <input type="text" class="form-control" id="restaurant" placeholder="판매식당 입력">
                <button type="button" class="btn btn-outline-secondary">선택</button>
            </div>
        </div>

        <div class="form-group">
            <label for="price">가격</label>
            <input type="text" class="form-control" id="price" placeholder="가격 입력">
        </div>

        <div class="form-group">
            <label for="description">설명</label>
            <textarea class="form-control" id="description" rows="3" placeholder="메뉴 설명 입력"></textarea>
        </div>

        <div class="form-group">
            <label for="status">상태</label>
            <select class="form-select" id="status">
                <option value="">선택하세요</option>
                <option value="판매중">판매중</option>
                <option value="판매중지">판매중지</option>
            </select>
        </div>

        <div class="form-group">
            <label for="image">이미지</label>
            <input type="file" class="form-control" id="image">
        </div>

        <div class="image-preview">
            이미지 미리보기
        </div>

        <div class="mt-3">
            <button type="button" class="btn btn-secondary">이미지 초기화</button>
            <button type="button" class="btn btn-info">이미지 보여주기</button>
        </div>

        <div class="mt-4">
            <button type="submit" class="btn btn-primary">저장</button>
            <button type="button" class="btn btn-secondary">닫기</button>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
