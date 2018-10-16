<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>header</title>
		
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		
		<!-- Bootstrap core CSS-->
		<link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Custom fonts for this template-->
		<link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		
		<!-- Page level plugin CSS-->
		<link href="resources/vendor/datatables/dataTables.bootstrap4.css"
			rel="stylesheet">
		
		<!-- Custom styles for this template-->
		<link href="resources/css/sb-admin.css" rel="stylesheet">
		
		<!-- Bootstrap core JavaScript-->
		<script src="resources/vendor/jquery/jquery.min.js"></script>
		<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
		<!-- Core plugin JavaScript-->
		<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	
		<!-- Page level plugin JavaScript-->
		<script src="resources/vendor/datatables/jquery.dataTables.js"></script>
		<script src="resources/vendor/datatables/dataTables.bootstrap4.js"></script>
	
		<!-- Custom scripts for all pages-->
		<script src="resources/js/sb-admin.min.js"></script>
	
		<!-- Demo scripts for this page-->
		<script src="resources/js/demo/datatables-demo.js"></script>
	</head>
	<body id="page-top">
		<!-- Header -->
		<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

			<a class="navbar-brand mr-1" href="${pageContext.request.contextPath}/home">The Perfect Body Fit: ${sessionScope.healthclubsName} 지점</a>
	
			<button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
				<i class="fas fa-bars"></i>
			</button>
	
			<!-- Navbar Search -->
			<form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="헬스 프로그램 검색..." aria-label="Search" aria-describedby="basic-addon2">
					<div class="input-group-append">
						<button class="btn btn-primary" type="button">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</form>
	
			<!-- Navbar -->
			<ul class="navbar-nav ml-auto ml-md-0">
				<li class="nav-item dropdown no-arrow mx-1">
					<a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
						<i class="fas fa-bell fa-fw"></i>
						<span class="badge badge-danger"></span>
					</a>
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
						<a class="dropdown-item" href="#">피드백</a> 
						<a class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div>
				</li>
				<li class="nav-item dropdown no-arrow mx-1">
					<a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
						<i class="fas fa-envelope fa-fw"></i> 
						<span class="badge badge-danger"></span>
					</a>
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
						<a class="dropdown-item" href="#">건의사항</a> 
						<a class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div>
				</li>
				<li class="nav-item dropdown no-arrow">
					<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
						<i class="fas fa-user-circle fa-fw"></i>
					</a>
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
						<a class="dropdown-item" href="#">마이 페이지</a> 
						<a class="dropdown-item" href="#">나의 헬스 프로그램</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="${pageContext.request.contextPath}/logout">로그 아웃</a>
					</div>
				</li>
			</ul>
		</nav>
		
		<div id="wrapper">
			<!-- Nav 권한별 메뉴 설정-->
			<!-- 관리자 -->
			<c:if test="${!empty sessionScope.adminSessionId}">	
			<!-- Sidebar -->
				<ul class="sidebar navbar-nav">
					<li class="nav-item active">
						<a class="nav-link" href="${pageContext.request.contextPath}/home"> 
							<i class="fas fa-fw fa-tachometer-alt"></i> 
							<span>home</span>
						</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
							<i class="fas fa-fw fa-folder"></i> 
							<span>헬스장 관리</span>
						</a>
						<div class="dropdown-menu" aria-labelledby="pagesDropdown">
							<h6 class="dropdown-header">헬스장 :</h6>
							<a class="dropdown-item" href="${pageContext.request.contextPath}/healthclubsInsert">- 헬스장 등록</a> 
							<a class="dropdown-item" href="register.html">- 정보 수정</a> 
							<a class="dropdown-item" href="forgot-password.html">- 삭제</a>
							<div class="dropdown-divider"></div>
							<h6 class="dropdown-header">헬스장 시설관리:</h6>
							<a class="dropdown-item" href="404.html">- 시설 등록</a> 
							<a class="dropdown-item" href="blank.html">- 시설 수정</a>
							<a class="dropdown-item" href="blank.html">- 삭제</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
							<i class="fas fa-fw fa-folder"></i> 
							<span>헬스 프로그램 관리</span>
						</a>
						<div class="dropdown-menu" aria-labelledby="pagesDropdown">
							<h6 class="dropdown-header">헬스 프로그램 모집 :</h6>
							<a class="dropdown-item" href="login.html">- 모집 등록</a> 
							<a class="dropdown-item" href="register.html">- 수정</a> 
							<a class="dropdown-item" href="forgot-password.html">- 삭제</a>
							<div class="dropdown-divider"></div>
							<h6 class="dropdown-header">식단 관리:</h6>
							<a class="dropdown-item" href="404.html">- 식단 등록</a> 
							<a class="dropdown-item" href="blank.html">- 식단 수정</a>
							<a class="dropdown-item" href="blank.html">- 식단 삭제</a>
							<div class="dropdown-divider"></div>
							<h6 class="dropdown-header">운동 관리:</h6>
							<a class="dropdown-item" href="404.html">- 운동 등록</a> 
							<a class="dropdown-item" href="blank.html">- 운동 수정</a>
							<a class="dropdown-item" href="blank.html">- 운동 삭제</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
							<i class="fas fa-fw fa-folder"></i> 
							<span>결제 및 환불 관리</span>
						</a>
						<div class="dropdown-menu" aria-labelledby="pagesDropdown">
							<h6 class="dropdown-header">결제 관리 :</h6>
							<a class="dropdown-item" href="login.html">- 결제 현황</a> 
							<a class="dropdown-item" href="register.html">- 결제 리스트</a> 
							<a class="dropdown-item" href="forgot-password.html">- ......</a>
							<div class="dropdown-divider"></div>
							<h6 class="dropdown-header">환불 관리:</h6>
							<a class="dropdown-item" href="404.html">- 환불 현황</a> 
							<a class="dropdown-item" href="blank.html">- 환불 리스트</a>
							<a class="dropdown-item" href="blank.html">- .....</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
							<i class="fas fa-fw fa-folder"></i> 
							<span>회원 관리</span>
						</a>
						<div class="dropdown-menu" aria-labelledby="pagesDropdown">
							<h6 class="dropdown-header">회원 관리 :</h6>
							<a class="dropdown-item" href="${pageContext.request.contextPath}/questionList">- 회원별 피드백</a> 
							<a class="dropdown-item" href="${pageContext.request.contextPath}/selectMemberList">- 가입 회원 현황</a> 
							<a class="dropdown-item" href="forgot-password.html">- ......</a>
							<div class="dropdown-divider"></div>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="fas fa-fw fa-folder"></i> 
							<span>건의 사항</span>
						</a>
						<div class="dropdown-menu" aria-labelledby="pagesDropdown">
							<a class="dropdown-item" href="${pageContext.request.contextPath}/adminHeadRequireInsert">건의 사항 등록</a>
							<a class="dropdown-item" href="${pageContext.request.contextPath}/adminHeadRequireList">건의 사항 리스트</a> 
							<div class="dropdown-divider"></div>
						</div>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">
						<i class="fas fa-fw fa-table"></i> 
						<span>매출 현황</span>
						</a>
					</li>
				</ul>
			</c:if>
			
			<!-- 트레이너 -->
			<c:if test="${!empty sessionScope.trainerSessionId}">
			<!-- Sidebar -->
				<ul class="sidebar navbar-nav">
					<li class="nav-item active">
						<a class="nav-link" href="${pageContext.request.contextPath}/home"> 
							<i class="fas fa-fw fa-tachometer-alt"></i> 
							<span>home</span>
						</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
							<i class="fas fa-fw fa-folder"></i> 
							<span>헬스 프로그램 관리</span>
						</a>
						<div class="dropdown-menu" aria-labelledby="pagesDropdown">
							<h6 class="dropdown-header">헬스 프로그램 모집 :</h6>
							<a class="dropdown-item" href="login.html">- 모집 등록</a> 
							<a class="dropdown-item" href="register.html">- 수정</a> 
							<a class="dropdown-item" href="forgot-password.html">- 삭제</a>
							<div class="dropdown-divider"></div>
							<h6 class="dropdown-header">식단 관리:</h6>
							<a class="dropdown-item" href="404.html">- 식단 등록</a> 
							<a class="dropdown-item" href="blank.html">- 식단 수정</a>
							<a class="dropdown-item" href="blank.html">- 식단 삭제</a>
							<div class="dropdown-divider"></div>
							<h6 class="dropdown-header">운동 관리:</h6>
							<a class="dropdown-item" href="404.html">- 운동 등록</a> 
							<a class="dropdown-item" href="blank.html">- 운동 수정</a>
							<a class="dropdown-item" href="blank.html">- 운동 삭제</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
							<i class="fas fa-fw fa-folder"></i> 
							<span>회원 관리</span>
						</a>
						<div class="dropdown-menu" aria-labelledby="pagesDropdown">
							<h6 class="dropdown-header">회원 관리 :</h6>
							<a class="dropdown-item" href="${pageContext.request.contextPath}/questionList">- 회원별 피드백</a> 
							<a class="dropdown-item" href="${pageContext.request.contextPath}/selectMemberList">- 가입 회원 현황</a> 
							<a class="dropdown-item" href="forgot-password.html">- ......</a>
							<div class="dropdown-divider"></div>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="fas fa-fw fa-folder"></i> 
							<span>건의 사항</span>
						</a>
						<div class="dropdown-menu" aria-labelledby="pagesDropdown">
							<a class="dropdown-item" href="${pageContext.request.contextPath}/trainerHeadRequireInsert">건의 사항 등록</a>
							<a class="dropdown-item" href="${pageContext.request.contextPath}/trainerHeadRequireList">건의 사항 리스트</a> 
							<div class="dropdown-divider"></div>
						</div>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">
						<i class="fas fa-fw fa-table"></i> 
						<span>필요한 메뉴 추가 해주세요</span>
						</a>
					</li>
				</ul>	
			</c:if>
			
			<!-- 회원  -->
			<c:if test="${!empty sessionScope.memberSessionId}">
			<!-- Sidebar -->
				<ul class="sidebar navbar-nav">
					<li class="nav-item active">
						<a class="nav-link" href="${pageContext.request.contextPath}/home"> 
							<i class="fas fa-fw fa-tachometer-alt"></i> 
							<span>home</span>
						</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
							<i class="fas fa-fw fa-folder"></i> 
							<span>나의 헬스 플랜</span>
						</a>
						<div class="dropdown-menu" aria-labelledby="pagesDropdown">
							<h6 class="dropdown-header">헬스 프로그램:</h6>
							<a class="dropdown-item" href="login.html">- 헬스 프로그램 검색</a> 
							<a class="dropdown-item" href="register.html">- 헬스 프로그램 결제</a>
							<a class="dropdown-item" href="register.html">- 헬스 프로그램 환불</a>  
							<a class="dropdown-item" href="forgot-password.html">- 헬스 프로그램 평가</a>
							<div class="dropdown-divider"></div>
						</div>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">
						<i class="fas fa-fw fa-folder"></i> 
						<span>헬스 정보</span>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">
						<i class="fas fa-fw fa-folder"></i> 
						<span>식단 및 운동 정보</span>
						</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="fas fa-fw fa-folder"></i> 
							<span>건의 사항</span>
						</a>
						<div class="dropdown-menu" aria-labelledby="pagesDropdown">
							<a class="dropdown-item" href="${pageContext.request.contextPath}/memberHeadRequireInsert">건의 사항 등록</a>
							<a class="dropdown-item" href="${pageContext.request.contextPath}/memberHeadRequireList">건의 사항 리스트</a> 
							<div class="dropdown-divider"></div>
						</div>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath}/questionList">
						<i class="fas fa-fw fa-folder"></i> 
						<span>피드백</span>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">
						<i class="fas fa-fw fa-table"></i> 
						<span>필요한 메뉴 추가 해주세요</span>
						</a>
					</li>
				</ul>	
			</c:if>
	</body>
</html>