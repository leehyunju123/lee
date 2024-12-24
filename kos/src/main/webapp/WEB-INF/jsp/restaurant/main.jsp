<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/assets/css/styles.css" rel="stylesheet" />
    <title>쇼핑몰 식당가 키오스크</title>
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
            text-align: center;
            position: relative;
        }

        header {
            background-color: orangered;
            color: white;
            padding: 10px;
        }

        main {
            padding: 20px;
        }

        h2 {
            color: #333;
        }


        .menu-item {
            border-radius: 8px;
            padding: 10px;
            margin: 10px;
            width: 250px;
            height: 350px;
            text-align: center;
            cursor: pointer;
            transition: transform 0.2s ease-in-out;
            display: inline-block;
            overflow: hidden;
            
        }

        .menu-item img {
            width: 100%;
            height: 180px;
            object-fit: cover;
            border-radius: 8px;
        }

        .menu-item:hover {
            transform: scale(1.1);
        }

        .order-button {
            background-color: orangered;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 15px 30px;
            font-size: 30px;
            cursor: pointer;
            width: 360px;
            height: 100px;
            margin: 10px;
        }

        .order-button:hover {
            background-color: darkorange;
        }

        .reset-button {
            margin: 5px;
            padding: 15px 20px;
            cursor: pointer;
            background-color: white;
            color: black;
            border: none;
            border-radius: 20px;
            font-size: 18px;
            width: 250px;
            height: 60px;
            text-align: center;
        }

        .reset-button:hover {
            background-color: #c82333;
        }

        .cart {
            background-color: white;
            border: 2px solid #ccc;
            border-radius: 8px;
            padding: 20px;
            width: 500px;
            height: 400px;
            margin: 20px auto;
            overflow-y: auto;
            display: inline-block;
            vertical-align: top;
        }

        .cart-item {
            border: 2px solid #ccc;
            border-radius: 8px;
            padding: 10px;
            margin: 5px 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .quantity-control {
            display: flex;
            align-items: center;
        }

        .quantity-control button {
            margin: 0 5px;
            cursor: pointer;
        }

        .category {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin: 0;
        }

        .category button {
            margin: 0;
            padding: 12px 18px;
            cursor: pointer;
            background-color: white;
            color: black;
            border: 1px solid #ccc;
            border-radius: 20px;
            font-size: 24px;
            width: auto;
            height: auto;
        }

        .category button:hover {
            background-color: #f0f0f0;
        }

        #timer-display {
            font-size: 30px;
            font-weight: bold;
            color: orangered;
            background-color: white;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            margin: 10px;
        }

        #selected-count {
            font-size: 30px;
            font-weight: bold;
            color: orangered;
            background-color: white;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            margin: 10px;
        }

        .button-container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .modal {
            display: none;
        }
        <style>
    /* 모달 관련 스타일 */
    .modal-content {
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        overflow: hidden;
        max-width: 800px;
        margin: auto;
    }

    .modal-header {
        background-color: orangered;
        color: white;
        border-bottom: 2px solid #ddd;
        padding: 15px 20px;
        font-size: 24px;
        font-weight: 600;
    }

    .modal-title {
        margin: 0;
        font-size: 24px;
        font-weight: bold;
    }

    .btn-close {
        background: none;
        border: none;
        color: white;
        font-size: 30px;
        line-height: 1;
        opacity: 0.8;
    }

    .btn-close:hover {
        opacity: 1;
    }

    /* 모달 본문 */
    .modal-body {
        padding: 20px;
        text-align: center;
    }

    .restaurant-name {
        font-size: 32px;
        font-weight: bold;
        color: #333;
        margin: 20px 0;
    }

    .menu-list {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
    }

    .menu-item {
        width: 180px;
        margin: 10px;
        border-radius: 8px;
        border: 1px solid #ddd;
        padding: 15px;
        text-align: center;
        background-color: #f9f9f9;
        transition: transform 0.2s ease;
        overflow: hidden;
    }

    .menu-item:hover {
        transform: scale(1.05);
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .menu-item img {
        width: 100%;
        height: 120px;
        object-fit: cover;
        border-radius: 8px;
    }

    .menu-info {
        margin-top: 10px;
    }

    .menu-price {
        font-size: 20px;
        font-weight: 600;
        color: orangered;
        margin-top: 5px;
    }

    /* 수량 및 버튼 */
    .quantity {
        display: flex;
        align-items: center;
        justify-content: center;
        margin-top: 15px;
    }

    .quantity button {
        background-color: #f1f1f1;
        border: 1px solid #ddd;
        padding: 6px 12px;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    .quantity button:hover {
        background-color: #eee;
    }

    .quantity-display {
        font-size: 18px;
        margin: 0 10px;
    }

    /* 모달 하단 버튼 */
    .button-container {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 15px;
        background-color: #f9f9f9;
        border-top: 1px solid #ddd;
    }

    .btn-secondary {
        background-color: #6c757d;
        color: white;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        font-size: 16px;
    }

    .btn-secondary:hover {
        background-color: #5a6268;
    }

    .add-button {
        background-color: orangered;
        color: white;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        font-size: 16px;
    }

    .add-button:hover {
        background-color: darkorange;
    }
    
	    /* 메뉴 상세 모달 */
	.modal-content {
	    border-radius: 15px;
	    box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
	    padding: 20px;
	    background-color: #fff;
	}
	
	.modal-header {
	    border-bottom: 2px solid #f1f1f1;
	    padding-bottom: 15px;
	}
	
	.modal-title {
	    font-size: 24px;
	    font-weight: bold;
	    color: #333;
	    letter-spacing: 1px;
	}
	
	.btn-close {
	    font-size: 1.5rem;
	    opacity: 0.7;
	}
	
	.btn-close:hover {
	    opacity: 1;
	}
	
	.modal-body {
	    padding: 20px;
	    font-family: 'Arial', sans-serif;
	    color: #555;
	}
	
	.menu-detail-item {
	    margin-bottom: 20px;
	}
	
	.menu-detail-item label {
	    font-size: 16px;
	    font-weight: 600;
	    color: #555;
	    margin-bottom: 10px;
	    display: block;
	}
	
	.menu-image {
	    width: 100%;
	    height: 300px;
	    object-fit: cover;
	    border-radius: 10px;
	    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	}
	
	h3 {
	    font-size: 22px;
	    color: #333;
	    margin-top: 10px;
	}
	
	#menuPrice {
	    font-size: 20px;
	    font-weight: bold;
	    color: #e91e63;
	    margin-top: 10px;
	}
	
	textarea#menuDetail {
	    width: 100%;
	    height: 120px;
	    padding: 10px;
	    font-size: 16px;
	    border: 1px solid #ccc;
	    border-radius: 8px;
	    resize: none;
	    color: #444;
	    background-color: #f9f9f9;
	    box-shadow: inset 0px 2px 8px rgba(0, 0, 0, 0.1);
	}
	
	textarea#menuDetail:focus {
	    outline: none;
	    border-color: #ff5722;
	    box-shadow: 0px 0px 8px rgba(255, 87, 34, 0.3);
	}
	
	.modal-footer {
	    border-top: 1px solid #f1f1f1;
	    padding-top: 10px;
	    text-align: right;
	}
	
	.btn-secondary {
	    background-color: #e0e0e0;
	    border: 1px solid #ccc;
	    color: #333;
	    font-weight: bold;
	    padding: 10px 20px;
	    border-radius: 25px;
	    transition: background-color 0.3s;
	}
	
	.btn-secondary:hover {
	    background-color: #c0c0c0;
	}
	
	.close-button {
	    background-color: #f44336;
	    border: none;
	    color: white;
	    padding: 10px 20px;
	    border-radius: 25px;
	    font-weight: bold;
	    cursor: pointer;
	    transition: background-color 0.3s;
	}
	
	.close-button:hover {
	    background-color: #d32f2f;
	}
	.popup {
    display: none;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.2);
    z-index: 9999;
    width: 300px;
    text-align: center;
  }

  .popup .popup-content {
    margin-bottom: 20px;
  }

  .popup .close-button {
    background-color: #ff5c5c;
    border: none;
    color: white;
    padding: 10px;
    cursor: pointer;
    border-radius: 5px;
    font-size: 16px;
  }

  .popup .close-button:hover {
    background-color: #ff2d2d;
  }
</style>
        
</head>
<body>
    <main>
        <h2>카테고리</h2>
        <div class="category">
            <button type='button' onclick="searchRestaurant('KR')">한식</button>
            <button type='button' onclick="searchRestaurant('CN')">중식</button>
            <button type='button' onclick="searchRestaurant('JP')">일식</button>
            <button type='button' onclick="searchRestaurant('BS')">분식</button>
        </div>

        <section id="menu">
            <div id="restaurantList"></div>
        </section>


    <div style="display: flex; justify-content: space-between; align-items: flex-start; margin: 20px auto; width: 800px;">
        <div id="cart" class="cart">
            <h3>내가 담은 상품</h3>
            <form id = "cartform">
            <div id="cart-items">
                    <div class="quantity-control">
                </div>
            </div>
            </form>
        </div>
        <div class="button-container">
            <div id="selected-count">선택한 메뉴 : ?개</div>
            <button class="order-button" onclick="saveCart()">
                 원<br>결제하기
            </button>
        </div>
    </div>

    <div class="modal fade" id="menuModal" tabindex="-1" aria-labelledby="menuModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="menuModalLabel">메뉴</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <h1 class="restaurant-name" id="restaurantName"></h1>
                    <div class="menu-list" id = "menuList" >
                       
                    </div>
                     <button type="button" class="button add-button" onclick="addCart()" data-bs-dismiss="modal">장바구니에 담기</button>
                </div>
                <div class="button-container">
                   
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    <form id="hform">
        <input type='hidden' id='restaurantCategory' name='restaurantCategory' value='KR'>
    </form>
    
    <form id = "aform">
    	<input type='hidden' id='restaurantCode' name='restaurantCode'>
    </form>
    

          <form id = "bform">
    	<input type='hidden' id='menuCode' name='menuCode'>
    </form>
    	<!-- 팝업 창 HTML -->
<div id="pointPopup" class="popup">
  <div class="popup-content">
    <h3>메뉴 설명</h3>
    <p id = "menuDetail"></p>
  </div>
  <button class="close-button" onclick="closePopup()">닫기</button>
</div>
</main>
    <script src="assets/js/jquery-3.7.1.min.js?v=1.0"></script>
    <script src="/assets/js/common.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    
    <script>
        $(document).ready(function() {
            call_server(hform, '/restaurant/getRestaurantInfo', setRestaurantInfo);
        });

        function setRestaurantInfo(list) {
            console.log(list);
            $('#restaurantList').empty();
            var str = "";
            for (var i = 0; i < list.length; i++) {
                str += "<div class='menu-item' data-category='korean' onclick='openRestaurantModal(\"" + list[i].restaurantCode + "\")'>";
                str += "<div style='margin-bottom: 20px; padding: 10px; border: 1px solid #ccc; border-radius: 8px;'>";
                str += "<img src='" + list[i].restaurantImage + "' style='width: 100%; border-radius: 8px;'>";
                str += "<p style='font-size: 18px; margin-top: 10px;'>" + list[i].restaurantName + "</p>";
                str += "</div>";
                str += "</div>";
            }
            $('#restaurantList').append(str);
        }

        function searchRestaurant(cd) {
            $('#restaurantCategory').val(cd);
            call_server(hform, '/restaurant/getRestaurantInfo', setRestaurantInfo);
        }

        function openRestaurantModal(cd) {
            $('#restaurantCode').val(cd);
    	    call_server(aform, '/menu/getMenuInfo', setMenuInfo);
            $('#menuModal').modal('show');
        }
        
        var menuCount=0;  //메뉴의 숫자.
        function setMenuInfo(list) {
            console.log(list);
            $('#menuList').empty();  // 기존에 있는 내용 삭제
            var str = "";
            menuCount = list.length;
            for (var i = 0; i < list.length; i++) {
                // 각 메뉴 정보를 HTML로 생성
                str += "<div class='menu-item'>"; // 메뉴 항목 시작
                str += "<img src='" + list[i].menuImage + "' alt='" + list[i].menuName + "'>"; // 이미지와 alt 설정
                str += "<div class='menu-info'><input type='hidden' id='menuCode"+i+"' value='"+list[i].menuCode+"'>";
                str += "<div id='menuName"+i+"'>" + list[i].menuName + "</div>"; // 메뉴 이름
                str += "<div class='menu-price' id='menuPrice"+i+"'>" + list[i].menuPrice + "₩</div>"; // 메뉴 가격
                str += "</div>"; // menu-info 끝
                str += "<button class='button' onclick='openMenuDetailModal(\"" + list[i].menuCode + "\")'>보기</button>"; // 보기 버튼
                str += "<div class='quantity'>";
                str += "<button class='decrease-quantity'>-</button>"; // 수량 감소 버튼
                str += "<div class='quantity-display' id='qty"+i+"'>0</div>"; // 수량 표시
                str += "<button class='increase-quantity'>+</button>"; // 수량 증가 버튼
                str += "</div>"; // quantity 끝
                str += "</div>"; // menu-item 끝
            }

            // 최종적으로 HTML을 menuList에 추가
            $('#menuList').append(str);
        }
        
        function openMenuDetailModal(cd) {
            $('#menuCode').val(cd);
    	    call_server(bform, '/menu/getDetailInfo', setDetailData);
            $('#MenuDetailModal').modal('show');
        }
        function setDetailData(data){
			console.log(data);
			$('#menuName').val(data.menuName);
			$('#menuPrice').val(data.menuPrice);
			$('#menuDetail').text(data.menuDetail);
			$('#menuIamge').val(data.menuImage);
			}
       
        $(document).on('click', '.increase-quantity', function() {
            var quantityDisplay = $(this).siblings('.quantity-display'); // 해당 메뉴 항목 내의 수량 표시 div
            var currentQuantity = parseInt(quantityDisplay.text()); // 현재 수량 가져오기
            currentQuantity++; // 수량 증가
            quantityDisplay.text(currentQuantity); // 수량 업데이트
        });
        
        $(document).on('click', '.decrease-quantity', function() {
            var quantityDisplay = $(this).siblings('.quantity-display'); // 해당 메뉴 항목 내의 수량 표시 div
            var currentQuantity = parseInt(quantityDisplay.text()); // 현재 수량 가져오기
            if (currentQuantity > 0) { // 수량이 0보다 큰 경우만 감소
                currentQuantity--; // 수량 감소
                quantityDisplay.text(currentQuantity); // 수량 업데이트
            }
        });

        $(document).on('click', '.increase-quantity2', function() {
        	var priceDisplay = $(this).parent().siblings('.price-display');
            var currentPrice = priceDisplay.text().replace("원","");
           console.log(currentPrice);
            var quantityDisplay = $(this).siblings('.quantity-display'); // 해당 메뉴 항목 내의 수량 표시 div
            var currentQuantity = parseInt(quantityDisplay.text()); // 현재 수량 가져오기
            var unitPrice = parseInt(currentPrice)/currentQuantity;
            console.log(unitPrice);
            
            currentQuantity++; // 수량 증가
            quantityDisplay.text(currentQuantity); // 수량 업데이트
            priceDisplay.text(unitPrice*currentQuantity+"원");
            
            var quantityHidden = $(this).siblings('.hidden-qty');
            $(quantityHidden).val(currentQuantity);
            
            updateCartCount();  // 수량 변경 후 장바구니 정보 업데이트
        });
        
        $(document).on('click', '.decrease-quantity2', function() {
        	var priceDisplay = $(this).parent().siblings('.price-display');
        	var currentPrice = priceDisplay.text().replace("원","");
        	console.log(currentPrice);
            var quantityDisplay = $(this).siblings('.quantity-display'); // 해당 메뉴 항목 내의 수량 표시 div
            var currentQuantity = parseInt(quantityDisplay.text()); // 현재 수량 가져오기
            var unitPrice = parseInt(currentPrice)/currentQuantity;
            console.log(unitPrice);
            
            if (currentQuantity > 0) { // 수량이 0보다 큰 경우만 감소
                currentQuantity--; // 수량 감소
                quantityDisplay.text(currentQuantity); // 수량 업데이트
                priceDisplay.text(unitPrice*currentQuantity+"원");
                
                var quantityHidden = $(this).siblings('.hidden-qty');
                $(quantityHidden).val(currentQuantity);
                
            }
            updateCartCount();  // 수량 변경 후 장바구니 정보 업데이트\
        });
        
        var addCnt = 0;
        
        function addCart() {
            var totalAmount = 0;  // 총 금액 변수 초기화
            var cartItems = []; // 장바구니 아이템 목록을 배열로 저장

            for (var i = 0; i < menuCount; i++) {
                var qty = $('#qty' + i).text();

                if (Number(qty) > 0) {
                    var code = $('#menuCode' + i).val();
                    var name = $('#menuName' + i).text();
                    var price = $('#menuPrice' + i).text();

                    // 가격과 수량을 숫자로 변환
                    price = parseFloat(price.replace(/[^0-9.-]+/g, ""));  // 숫자와 .만 남기고 나머지 문자 제거
                    qty = parseInt(qty, 10);  // qty를 정수로 변환

                    // 장바구니에 해당 메뉴가 이미 존재하는지 확인
                    var existingItem = $('#cart-items .cart-item[data-id="' + code + '"]');

                    if (existingItem.length > 0) {
                        // 기존 메뉴가 장바구니에 있으면 수량만 업데이트
                        var currentQty = parseInt(existingItem.find('.quantity-display').text(), 10);
                        currentQty += qty;
                        existingItem.find('.quantity-display').text(currentQty);
                        var totalPrice = price * currentQty;
                        existingItem.find('.price-display').text(totalPrice + "원");
                    } else {
                        // 기존 메뉴가 없으면 새 항목 추가
                        var totalPrice = price * qty;
                        totalAmount += totalPrice;  // 총 금액에 더하기

                        var str = "<div class='cart-item' data-id='" + code + "'>";
                        str += "<button class='remove-item'>X</button>";
                        str += name + " <span class='price-display'>" + totalPrice + "원</span>";
                        str += "<input type='hidden' name='orderlist["+addCnt+"].menuCode' value='"+code+"'>";
                        str += "<div class='quantity-control'>";
                        str += "<input type='hidden' class='hidden-qty' name='orderlist["+addCnt+"].qty' value='"+qty+"'> ";
                        str += "<button type='button' class='decrease-quantity2'>-</button>";
                        str += "<span class='quantity-display'>" + qty + "</span>";
                        str += "<button type='button' class='increase-quantity2'>+</button>";
                        str += "</div>";
                        str += "</div>";

                        $('#cart-items').append(str);
                        addCnt++;
                    }
                }
            }

            updateCartCount();  // 장바구니 개수와 금액 업데이트
        }


        function updateCartCount() {
            var itemCount = $('.cart-item').length;  // 장바구니 항목 개수 세기
            var totalAmount = 0;

            // 각 장바구니 항목의 가격 합산
            $('.cart-item').each(function() {
                var priceText = $(this).find('.price-display').text();
                var price = parseFloat(priceText.replace(/[^0-9.-]+/g, ""));
                totalAmount += price;
            });

            // 장바구니 메뉴 개수 및 총 금액 업데이트
            $('#selected-count').text('선택한 메뉴 : ' + itemCount + '개');
            $('.order-button').html(totalAmount + '원<br>결제하기');
        }


        // 장바구니 아이템 삭제
        $(document).on('click', '.remove-item', function() {
            $(this).closest('.cart-item').remove();
            updateCartCount();  // 장바구니 정보 업데이트
        });
        
        
        function saveCart() {
        	call_server(cartform, '/order/save', callBackSave);
        }
        
        
        function callBackSave(data) {
            if (data != '') {
                window.location.href = "http://localhost:9090/order/list?orderNo=" + data;
            } else {
                alert("오류가 발생하였습니다.");
            }
        }
        function openMenuDetailModal(cd) {
            $('#menuCode').val(cd);
            call_server(bform, '/menu/getDetailInfo', setDetailData);
            $('#MenuDetailModal').modal('show');
            // "보기" 버튼을 클릭하면 포인트 팝업을 띄우도록 호출
            openPopup();
        }

        function openPopup() {
            document.getElementById('pointPopup').style.display = 'block';
        }

        function closePopup() {
            document.getElementById('pointPopup').style.display = 'none';
        }


    </script>
</body>
</html>
