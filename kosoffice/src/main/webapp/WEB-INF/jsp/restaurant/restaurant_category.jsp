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
       .nav-link.active {
        font-weight: bold;
        background-color: #007bff;
        color: white;
    }
    </style>
</head>

<body class="sb-nav-fixed">

<!-- 모달창 HTML 추가 -->
<div class="modal fade" id="businessNumberModal" tabindex="-1" aria-labelledby="businessNumberModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="businessNumberModalLabel">분류 추가</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      
    <form id="dataform">
    <input type='hidden' id='insType' name='insType'>
      <input type='hidden' id='restaurantCategoryCode' name='restaurantCategoryCode'>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>이름</th>
                <th>활성화여부</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><input type= "text" class="form-control" placeholder="식당 이름 입력" id = "restaurantCategoryName" name = "restaurantCategoryName"></td>
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
        <button type="button" class="btn btn-success" onclick = "restaurantCategorySave()">저장</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
    </div>

</div>
</div>
</div>
      
      

    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <a class="navbar-brand ps-3" href="index.html">쇼핑몰 식당</a>
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
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="fas fa-user fa-fw"></i>
                </a>
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
								<a class="nav-link" href="http://localhost:8080/restaurant/category">
								<div class="sb-nav-link-icon">
						        <i class="fas fa-utensils"></i>
						    </div> 식당분류 조회/등록</a>
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
                <form id = "searchform">
                <div class="cell">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="분류명" aria-label="분류명" id = 'restaurantCategoryName' name = 'restaurantCategoryName'>
                        <button class="btn btn-primary" type="button" onclick = "searchlist1()">조회</button>
                        <button class="btn btn-success" type="button" onclick="openRegisterModal()">신규</button>
                    </div>
                </div>
                </form>
                <div class="cell">
                    <div class="card-body">
                        <table id="restaurantCategorytable" class="table">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>분류명</th>
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

    <!-- Modal -->
    <div class="modal fade" id="categoryModal" tabindex="-1" aria-labelledby="categoryModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="categoryModalLabel">분류 정보</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p><strong>분류명:</strong> <span id="modalCategoryName"></span></p>
                    <p><strong>등록일:</strong> <span id="modalRegistrationDate"></span></p>
                    <p><strong>활성화 여부:</strong> <span id="modalActiveStatus"></span></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>

    <script src="/assets/js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="/assets/js/jquery-3.7.1.min.js"></script>
    <script src="/assets/js/common.js"></script>
    <script src="/assets/js/paging.js"></script>
    <script>
        function setCategoryDetails(name, date, status) {
            document.getElementById('modalCategoryName').textContent = name;
            document.getElementById('modalRegistrationDate').textContent = date;
            document.getElementById('modalActiveStatus').textContent = status;
        }
        
        function searchlist1(pg){
        	// form id , url , callback : function
        	call_server(searchform, '/category/search',	setRestaurantCategorylist);
        }
        
        function setRestaurantCategorylist(data){
        	list = data.restaurantCategorylist;
        	
        	$('#restaurantCategorytable > tbody').empty();
   			var str="";
   			for(var i = 0; i<list.length; i++){
   				str="<tr>";
   				str+="<td>"+(i+1)+"</td>";
		        str+= "<td><a href='javascript:void(0)' onclick='openBusinessNumberModal(\"" + list[i].restaurantCategoryCode + "\")'>" + list[i].restaurantCategoryName + "</a></td>"; // 클릭 시 모달 열기
				str+="<td>"+list[i].regDt+"</td>"
				str+="<td>"+list[i].activeYn+"</td>";
				str+="</tr>";
				$('#restaurantCategorytable > tbody').append(str);
   			}
   			setPaging(rsPaging, data.startPage, data.endPage, 'searchlist1');
			//setPaging을 쓰려면 paging.js 경로를 script안에 추가 시켜 줘야한다.
   		} 
        
        //리스트 클릭
    	function openBusinessNumberModal(cd) {
   		    // 사업자 번호에 대한 상세 정보 설정 (예: Ajax로 데이터를 불러와서 설정할 수도 있습니다)
   		    $('#restaurantCategoryCode').val(cd);
   			$('#insType').val("U");
   		    call_server(dataform, '/category/getRestaurantCategoryInfo', setRestaurantCategoryData);
   		    
   		    
   		    
   		    
   		   
   		}
    	function setRestaurantCategoryData(data){
   			console.log(data);
   			$('#restaurantCategoryCode').val(data.restaurantCategoryCode);
   			$('#restaurantCategoryName').val(data.restaurantCategoryName);
   			$('#regDt').val(data.regDt);
   			$('#activeYn').val(data.activeYn);
   			
   			// 모달창 열기
   		 	$('#businessNumberModal').modal('show');
    	}
    	
    	function openRegisterModal() {
   		    // 모달 필드 초기화
   		    $('#restaurantCategoryCode').val('');
   		    $('#restaurantCategoryName').val('');
   		    $('#regDt').val('');
   		    $('#activeYn').val('');
   		    $('#insType').val("I");
   		    // 모달 창 열기
   		    $('#businessNumberModal').modal('show');
   		}
   		
   		function restaurantCategorySave() {
   			call_server(dataform, '/category/save', callBackSave);
   			
   			
   		}  
   		
   		
   		function callBackSave(data) {
   			if(data) {
   				alert("저장되었습니다");
   			} else {
   				alert("오류가 발생하였습니다.")
   			}
   			}
   	  document.addEventListener("DOMContentLoaded", function () {
          // 현재 페이지 URL을 가져옵니다
          var currentUrl = window.location.href;
          
          // 사이드바 메뉴 항목들을 선택합니다
          var navLinks = document.querySelectorAll('.nav-link');
          
          navLinks.forEach(function(link) {
              // 현재 페이지의 URL과 메뉴 항목의 href를 비교합니다
              if (currentUrl.includes(link.href)) {
                  // URL이 일치하는 항목에 'active' 클래스를 추가합니다
                  link.classList.add('active');
              }
          });
      });
    </script>
</body>
</html>
