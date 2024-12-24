<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>키오스크</title>
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
        }

        header {
            background-color: orangered;
            color: white;
            padding: 10px;
            text-align: center;
        }

        main {
            padding: 20px;
            text-align: left;
        }

        h1 {
            font-size: 36px;
            margin: 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        .order-price {
            font-weight: bold;
        }

        .button {
            margin-left: 10px;
            padding: 5px 10px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
        }

        .back-button {
            background-color: gray; /* 돌아가기 버튼 색상 */
            color: white;
            padding: 10px 20px;
            margin: 10px;
            width: 150px;
        }

        .confirm-button {
            background-color: orangered; /* 확인 버튼 색상 */
            color: white;
            padding: 10px 20px;
            margin: 10px;
            width: 150px;
        }

        .button-container {
            display: flex;
            justify-content: center; /* 가운데 정렬 */
            margin-top: 20px; /* 위쪽 여백 추가 */
        }

        .total-info {
            text-align: center; /* 가운데 정렬 */
            margin-top: 20px; /* 위쪽 여백 추가 */
            font-size: 18px; /* 글자 크기 조정 */
            font-weight: bold;
        }

        .total-info span {
            margin: 0 20px; /* 간격 추가 */
        }
    </style>
</head>
<body>

    <header>
        <h1>주문내역을 확인해주세요</h1>
    </header>

    <main>
		<form id = "aform">
        <input type='hidden' name='orderNo' value='${orderNo }'>
        <table id = "orderTable">
            <thead>
                <tr>
                    <th>NO</th>
                    <th>메뉴 이름</th>
                    <th>수량</th>
                    <th>가격</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
		</form>
        <div class="total-info">
            총 수량:<span id = "totalQty"></span> 총 결제금액: <span id='totalPrice'></span>
        </div>

        <div class="button-container">
            <button class="button back-button" onclick="window.location.href='http://localhost:9090/main';">돌아가기</button>
            <button class="button confirm-button" onclick="window.location.href='http://localhost:9090/order/payment?orderNo=${orderNo }';">결제하기</button>
        </div>
    </main>

    <script src="/assets/js/common.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    
    
    <script>
    $(document).ready(function() {
        call_server(aform, '/order/getOrderInfo', setOrderInfo);
    });
    
    function setOrderInfo(list) {
        console.log(list);
        var totalPrice=0;
        var totalQty=0;
        $('#orderTable > tbody').empty();
        var str = "";
        for (var i = 0; i < list.length; i++) {
        	str="<tr>";
    		str+="<td>"+(list[i].rn)+"</td>";
    		str+="<td>"+list[i].menuName+"</td>";
    		str+="<td>"+list[i].qty+"</td>";
    		str+="<td>"+list[i].price+"</td>";
    		str+="</tr>";
        	$('#orderTable > tbody').append(str);
        	
        	totalPrice += Number(list[i].price);
        	totalQty += Number(list[i].qty);  // 총 수량
        }
        $('#totalPrice').text(totalPrice);
        $('#totalQty').text(totalQty);
    }
    
    
    
        
    </script>
</body>
</html>
