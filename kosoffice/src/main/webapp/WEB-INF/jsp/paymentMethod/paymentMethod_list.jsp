<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
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
        .input-group .form-control {
            margin-right: 10px; /* Space between elements */
        }
        .pagination {
            margin-top: 20px;
        }
        .pagination button {
            margin-right: 5px; /* Space between buttons */
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
                <input class="form-control" type="text" placeholder="결제 수단 검색..." aria-label="결제 수단 검색" aria-describedby="btnNavbarSearch" />
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
                </ul>
            </li>
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
                        <input type="text" class="form-control" placeholder="결제 수단 검색..." aria-label="결제 수단 검색" id = "paymentMethodName" name = "paymentMethodName">
                        <button class="btn btn-primary" type="button" onclick = 'searchlist(1)'>조회</button>
                        <button class="btn btn-success ms-2" type="button" onclick = 'openRegisterModal()'>신규</button>
                    </div>
                    </form>
                </div>
                <div class="cell">
                    <div class="card-body">
                        <table id="paymentTable" class="table">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>결제 수단</th>
                                    <th>등록일</th>
                                    <th>활성화여부</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                 <div class="pagination">
                      <ul class="pagination" id="rsPaging" >
						</ul>
                    </div>
                </div>
            </main>
        </div>
    </div>
</body>

<!-- 모달창 HTML 추가 -->
<div class="modal fade" id="paymentModal" tabindex="-1" aria-labelledby="paymentModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="paymentModalLabel">결제수단 상세</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      
      <div class="container">

    <table class="table table-bordered">
    <form id = "dataform">
     <input type='hidden' id='insType' name='insType'>
        <thead>
            <tr>
            	<th>결제수단 코드</th>
            	<th>결제수단</th>
                <th>총 결제 금액</th>
                <th>활성화 여부</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    <input type='text' id='paymentMethodCode' name='paymentMethodCode' readonly>
                </td>
                <td>
                	<input type='text' id = 'paymentMethodName' name = 'paymentMethodName'>
                </td>
                <td>
                    <input type="text" class="form-control" id = "paymentAmount" name = "paymentAmount"	readonly>
                </td>
                <td>
                    <select class="form-select" id = "activeYn" name = "activeYn">
                        <option value="">선택</option>
                        <option value="Y">Y</option>
                        <option value="N">N</option>
                    </select>
                </td>
            </tr>
        </tbody>
    </table>
</form>
    <div class="text-center mt-3">
        <button type="button" class="btn btn-success" onclick = "paymentSave()">저장</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="/assets/js/scripts.js"></script>
<script src="/assets/js/jquery-3.7.1.min.js"></script>
<script src="/assets/js/common.js"></script>
<script src="/assets/js/paging.js"></script>

<script>
function searchlist(pg){
  	    $('#currentPage').val(pg);
  	  	call_server(searchform, '/payment/search', setPaymentList);
    }
function setPaymentList(data){
	list = data.paymentlist;
	$('#paymentTable > tbody').empty();
	var str="";
	for(var i = 0; i<list.length; i++){
		str="<tr>";
		str+="<td>"+(list[i].rn)+"</td>";
        str+= "<td><a href='javascript:void(0)' onclick='openPaymentModal(\"" + list[i].paymentMethodCode + "\")'>" + list[i].paymentMethodName + "</a></td>"; // 클릭 시 모달 열기
		str+="<td>"+list[i].regDt+"</td>";
		str+="<td>"+list[i].activeYn+"</td>";
		str+="</tr>";
	$('#paymentTable > tbody').append(str);
	}
	setPaging(rsPaging, data.startPage, data.endPage, 'searchlist');
}

function openPaymentModal(cd) {
	    $('#paymentMethodCode').val(cd);
	    $('#insType').val("U");
	    call_server(dataform, '/payment/getpaymentInfo', setPaymentData);
	    $('#paymentModal').modal('show');
	}
	
function setPaymentData(data){
		console.log(data);
		$('#paymentMethodCode').val(data.paymentMethodCode);
		$('#paymentMethodName').val(data.paymentMethodName);
		$('#regDt').val(data.regDt);
		$('#paymentAmount').val(data.paymentAmount);
		$('#activeYn').val(data.activeYn);
}


//등록버튼 클릭시 
	function openRegisterModal() {
	    // 모달 필드 초기화
	    $('#paymentMethodCode').val('');
	    $('#paymentMethodName').val('');
	    $('#activeYn').val('');

	    $('#insType').val("I");
	    
	    // 모달 창 열기
	    $('#paymentModal').modal('show');
	}
	
	function paymentSave() {	
		
		call_server(dataform, '/payment/save', callBackSave);
		
	}  
	
	function callBackSave(data) {
			if(data) {
				alert("저장되었습니다");
			} else {
				alert("오류가 발생하였습니다.")
			}
			}
		
</script>
</html>
