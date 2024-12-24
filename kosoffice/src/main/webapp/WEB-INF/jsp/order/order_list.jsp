<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="/assets/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <style>
        .cell {
            border: 1px solid #dee2e6;
            padding: 15px;
            margin-bottom: 20px;
            background-color: #f8f9fa;
            border-radius: 5px;
        }
        .input-group {
            margin-bottom: 15px;
        }
        .table {
            border-collapse: collapse;
            width: 100%;
        }
        .table th, .table td {
            border: 1px solid #dee2e6;
            padding: 10px;
            text-align: left;
        }
        .table th {
            background-color: #007bff;
            color: white;
        }
                       .nav-link.active {
        font-weight: bold;
        background-color: #007bff;
        color: white;
    }
    </style>
</head>


        
        
        
        

<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand ps-3" href="http://localhost:8080/dashboard">쇼핑몰 식당</a>
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
				<button class="btn btn-primary" id="btnNavbarSearch" type="button">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</form>
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="#!">매니저 이름</a></li>
					<li><a class="dropdown-item" href="#!">활동 기록</a></li>
					<li><hr class="dropdown-divider" /></li>
					<li><a class="dropdown-item" href="#!">로그아웃</a></li>
				</ul></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<a class="nav-link" href="http://localhost:8080/dashboard">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 대시보드
						</a> <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseRestaurant" aria-expanded="false"
							aria-controls="collapseRestaurant">
							<div class="sb-nav-link-icon">
								<i class="fas fa-utensils"></i>
							</div> 식당관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseRestaurant"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="http://localhost:8080/restaurant/list">식당조회/등록</a>
								<a class="nav-link" href="http://localhost:8080/restaurant/category">식당분류
									조회/등록</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseMenu" aria-expanded="false"
							aria-controls="collapseMenu">
							<div class="sb-nav-link-icon">
								<i class="fas fa-concierge-bell"></i>
							</div> 메뉴관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseMenu"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="http://localhost:8080/menu/list">메뉴조회/등록</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseOrder" aria-expanded="false"
							aria-controls="collapseOrder">
							<div class="sb-nav-link-icon">
								<i class="fas fa-receipt"></i>
							</div> 주문
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseOrder"
							aria-labelledby="headingThree" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="http://localhost:8080/order/list">주문조회/등록</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseSales" aria-expanded="false"
							aria-controls="collapseSales">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-line"></i>
							</div> 매출관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseSales"
							aria-labelledby="headingFour" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="http://localhost:8080/sales/list">매출조회/등록</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapsePayment" aria-expanded="false"
							aria-controls="collapsePayment">
							<div class="sb-nav-link-icon">
								<i class="fas fa-credit-card"></i>
							</div> 결제 수단 관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsePayment"
							aria-labelledby="headingPayment" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="http://localhost:8080/paymentMethod/list">결제수단 조회/등록</a>
							</nav>
						</div>
						

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseMembership" aria-expanded="false"
							aria-controls="collapseMembership">
							<div class="sb-nav-link-icon">
								<i class="fas fa-users"></i>
							</div> 회원관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseMembership"
							aria-labelledby="headingFive" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="http://localhost:8080/member/list">회원조회/등록</a>
							</nav>
						</div>
						
						

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseSystem" aria-expanded="false"
							aria-controls="collapseSystem">
							<div class="sb-nav-link-icon">
								<i class="fas fa-cog"></i>
							</div> 시스템관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseSystem"
							aria-labelledby="headingSix" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="http://localhost:8080/manager/list">관리자조회/등록</a>
							</nav>
						</div>
					</div>
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
            <main>
                <div class="cell">
                <form id="searchform">
                	 <input type="hidden" id="currentPage" name="currentPage">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="상호" aria-label="상호" id = 'restaurantName' name = 'restaurantName'>
                        <input type="date" class="form-control" placeholder="주문일" aria-label="주문일" id = 'orderDt' name= 'orderDt' >
                        <select class="form-select" aria-label="결제수단" id = 'comName' name= 'comName'>
                            <option value="">결제수단 선택</option>
                            <option value="카드">카드</option>
                            <option value="현금">현금</option>
                            <option value="휴대폰">휴대폰</option>
                        </select>
                        <button class="btn btn-primary" type="button" onclick = "searchlist(1)">조회</button>
                    </div>
                    </form>
                </div>
                <div class="cell">
                    <div class="card-body">
                        <table id="orderTable" class="table">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>상호</th>
                                    <th>주문번호</th>
                                    <th>주문명</th>
                                    <th>주문금액</th>
                                    <th>결제수단</th>
                                    <th>주문일</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                     <div class="pagination">
                      <ul class="pagination" id="rsPaging" >
                </div>
            </main>
        </div>
        
        
        <div class="modal fade" id="OrderNameModal" tabindex="-1" aria-labelledby="businessNumberModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-lg">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="businessNumberModalLabel">주문 상세 조회</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
         </div>
         
         <div class="modal-body">
            <form id="dataform" enctype="multipart/form-data">
               <input type="hidden" id="orderNo" name="orderNo">
               
               <div class="accordion" id="restaurantAccordion">
                  
               
               </div>
                  
               <div class="summary mt-3">
                  <h5>결제 처리</h5>
                  <p>총 금액: <input type="text" name="orderPrice" id="orderPrice" value = ''></p>
                  <p>할인액: <input type="text" name="discountAmount" id="discountAmount"></p>
                  <p>합계: <input type="text" name="paymentAmount" id="paymentAmount"></p>
                  <p>결제 수단: <input type="text" name="acomName" id="acomName">
                     <input type="text" name="apaymentAmount" id="apaymentAmount">
                  </p>
               </div>
            </form>
         </div>
      </div>
   </div>
   <div class="text-center mt-3">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
    </div>
</div>
    
        
    <script src="/assets/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="/assets/js/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="/assets/js/jquery-3.7.1.min.js"></script>
	<script src="/assets/js/common.js"></script>
    <script src="/assets/js/paging.js"></script>
	
	<script>
	function searchlist(pg){
	    $('#currentPage').val(pg);
	    call_server(searchform, '/order/search', setOrderList);
	}
	function setOrderList(data){
		console.log(data);
			list = data.orderlist;
			console.log(list);
			$('#orderTable > tbody').empty();
			var str="";
			for(var i = 0; i<list.length; i++){
				str="<tr>";
				str+="<td>"+(i+1)+"</td>";
				str+="<td>"+list[i].restaurantName+"</td>";
				str+="<td>"+list[i].orderNo+"</td>";
		        str+= "<td><a href='javascript:void(0)' onclick='openOrderNameModal(\"" + list[i].orderNo + "\")'>" + list[i].menuName  + "</a></td>"; // 클릭 시 모달 열기
				str+="<td>"+list[i].orderPrice+"</td>";
				str+="<td>"+list[i].comName+"</td>";
				str+="<td>"+list[i].orderDt+"</td>";
				str+="</tr>";
			$('#orderTable > tbody').append(str);
			}
			setPaging(rsPaging, data.startPage, data.endPage, 'searchlist');

		} 
	function openOrderNameModal(cd) {
		    $('#orderNo').val(cd);
		   call_server(dataform, '/order/getOrderInfo', setOrderData);
		    $('#OrderNameModal').modal('show'); 
		}
	function setOrderData(list){
			console.log(list);
			$('#restaurantAccordion').empty();
			//$('#paymentAmount').val(data.paymentAmount);
			var str = "";
			var orderPrice=0;
			var discountAmount=0;
			var paymentAmount=0;
			var comName= "";
			for(var i=0;i<list.length;i++){
			 orderPrice = list[i].orderPrice; 
			 discountAmount = list[i].discountAmount;
			 paymentAmount = list[i].paymentAmount;	
			 comName = list[i].comName;
			 
				
			str="<div class=\"accordion-item\">";
            str+="<h2 class=\"accordion-header\" id=\"headingOne\">";
            str+="<button class=\"accordion-button\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseOne\" aria-expanded=\"true\" aria-controls=\"collapseOne\">";
            str+="<p>" + list[i].restaurantName + "</p>";
            str+="</button>";
            str+="</h2>";
            str+="<div id=\"collapseOne\" class=\"accordion-collapse collapse show\" aria-labelledby=\"headingOne\" data-bs-parent=\"#accordionExample\">";
            str+="<div class=\"accordion-body\">";
            str+="<div class=\"mt-3\">";
            str+="<h5>매장 정보</h5>";
            str+="<p>매장명:"  + list[i].restaurantName + "</p>";
            str+="<p>사업자:"  + list[i].businessNumber + "</p>";
            str+="<p>주소: 경기도 의정부</p>";
            str+="<p>대표자:" + list[i].ceoName + "</p>";
            str+="<p>주문일:" + list[i].orderDt + "</p>";
         	str+="</div>";
         	str+="<p>----------------------------------------------------------------------------------------------------</p>";
         	str+="<h5 class=\"mt-4\">상품 목록</h5>";
         	str+="<table class=\"table table-bordered\" id = \"productList\">";
            str+="<thead>";
            str+="<tr>";
            str+="<th>상품명</th>";
            str+="<th>단가</th>";
          	str+="<th>수량</th>";
       		str+="<th>금액</th>";
            str+="</tr>";
            str+="</thead>";
           	str+="<tbody>";
           	str+="<tr>";
			str+="<td>"+list[i].menuName+"</td>";
			str+="<td>"+list[i].menuPrice+"</td>";
			str+="<td>"+list[i].qty+"</td>";
			str+="<td>"+list[i].price+"</td>";
			str+="</tr>";
            str+="</tbody>";
         	str+="</table>";
         	str+="<p>주문번호:" + list[i].restaurantOrderNo + "</p>";
      		str+="</div>";
	 		str+="</div>";
         	str+="</div>";

         
            $('#restaurantAccordion').append(str);
            
            $('#orderPrice').val(orderPrice);
            $('#discountAmount').val(discountAmount);
            $('#paymentAmount').val(paymentAmount);
            $('#apaymentAmount').val(paymentAmount);
            $('#acomName').val(comName);
			}
			
			//$('#vorderDt').val(data.orderDt);
			//$('#orderPrice').val(data.orderPrice);
			//$('#paymentAmount').val(data.paymentAmount);
			//$('#apaymentAmount').val(data.paymentAmount);
			//$('#discountAmount').val(data.discountAmount);
			//$('#vpaymentMethod').val(data.paymentMethodCode);
	}
	
	</script>
</html>
