<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>영수증</title>
    <style>
        @font-face {
            font-family: 'seolleimcool-SemiBold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2312-1@1.1/seolleimcool-SemiBold.woff2') format('woff2');
        }

        body {
            font-family: 'seolleimcool-SemiBold';
            margin: 0;
            padding: 20px;
            background-color: #f8f8f8;
            text-align: center; /* 중앙 정렬 */
        }

        header {
            background-color: orangered;
            color: white;
            padding: 10px;
            text-align: center;
        }

        .receipt {
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 20px;
            background-color: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: auto;
            text-align: left; /* 왼쪽 정렬 */
        }

        .receipt h2 {
            margin: 0;
            font-size: 24px;
            color: orangered; /* 매장명 색상 */
        }

        .info {
            margin: 10px 0;
            font-size: 16px;
        }

        .item-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        .item-table th, .item-table td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }

        .total {
            font-weight: bold;
            margin-top: 20px;
        }

        .footer {
            margin-top: 20px;
            font-size: 16px;
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
        // 15초 후 자동으로 페이지 이동
       // setTimeout(function() {
       //     window.location.href = 'http://localhost:9090/main';
       // }, 15000);
    </script>
</head>
<body>

<header>
    <h1>영수증</h1>
</header>

<main>
    <div class="receipt">
        <h2>[매장명] 쇼핑몰 푸드코트</h2>
        <div class="info">[사업자] 111-11-11111</div>
        <div class="info">[주소] 경기 의정부</div>
        <div class="info">[대표자] 홍길동</div>
        <div class="info">[발행일] <span id="issueDate"></span></div>
 		<form id = "aform">
 		<input type = "hidden" id = "orderNo" name = "orderNo" value = "${orderNo}">
        <table class="item-table" id = "orderTable">
            <thead>
                <tr>
                    <th>상품명</th>
                    <th>단가</th>
                    <th>수량</th>
                    <th>금액</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
		
        <div class="total">총금액: <p id = "lastPrice"></p></div>
        <div class="total">할인액:<p id = "discountAmount"></p></div>
        <div class="total">합계:<p id = "totalAmount"></p></div>
        <div class="total">카드:<p id = "atotalAmount"></p></div>
		</form>
		<form id = "listform">
		<input type = "hidden" name = "orderNo" value = "${orderNo}">
        <div class="footer" id = "orderList">
           
        </div>
        </form>
    </div>
    <button class="button" onclick="window.location.href='http://localhost:9090/main';">닫기</button>
</main>

    <script src="/assets/js/common.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <script>
		 $(document).ready(function() {
		        call_server(aform, '/payment/getOrderInfo', setOrderInfo);
		    });
		    
		 function setOrderInfo(list){
			 	console.log(list);
			 	var lastPrice = 0;
			 	var discountAmount = 0;
			    $('#orderTable > tbody').empty();
				var str="";
				for(var i = 0; i < list.length; i++){
					str="<tr>";
					str+="<td>"+list[i].menuName+"</td>";
					str+="<td>"+list[i].menuPrice+"</td>";
					str+="<td>"+list[i].qty+"</td>"
					str+="<td>"+list[i].price+"</td>"
					str+="</tr>";
					$('#orderTable > tbody').append(str);
					lastPrice += Number(list[i].price);
				}
				 if (list[0].discountAmount) {
				        discountAmount = list[0].discountAmount;  // 첫 번째 항목에 할인액이 있다고 가정
				    }
				$('#lastPrice').text(lastPrice);
				$('#discountAmount').text(discountAmount);
			    $('#totalAmount').text(lastPrice - discountAmount);
			    $('#atotalAmount').text(lastPrice - discountAmount);
		}
		
		 
		 $(document).ready(function() {
			    call_server(listform, '/payment/getListInfo', setListInfo);
			});

			function setListInfo(list) {
			    console.log(list);
			    
			    // str에 새로운 내용을 저장
			    var str = "";
			    
			    // list를 순회하면서 주문 정보 누적
			    for (var i = 0; i < list.length; i++) {
			        str += list[i].restaurantName + "(으)로 가세요<br>";
			        str += "주문번호: " + list[i].restaurantOrderNo + "<br><br>";  // 줄바꿈 추가
			    }
			    
			    // 기존 내용을 지우고 str로 교체
			    $('#orderList').append(str);  // 기존 내용을 지우고 새로 추가
			}
			
			  window.onload = function() {
			        var today = new Date(); // 오늘 날짜 객체 생성
			        var year = today.getFullYear(); // 년도
			        var month = today.getMonth() + 1; // 월 (0부터 시작하므로 1을 더함)
			        var day = today.getDate(); // 일

			        // 월과 일이 1자리 수일 경우 0을 추가
			        if (month < 10) month = '0' + month;
			        if (day < 10) day = '0' + day;

			        // 날짜 포맷: yyyy-mm-dd
			        var formattedDate = year + '-' + month + '-' + day;

			        // <span id="issueDate">에 날짜 삽입
			        document.getElementById('issueDate').textContent = formattedDate;
			    };

		   
    </script>
</body>
</html>
