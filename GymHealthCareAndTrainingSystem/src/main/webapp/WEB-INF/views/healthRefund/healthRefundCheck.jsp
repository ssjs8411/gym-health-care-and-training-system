<!-- 2018.10.02(화) 현희문 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthRefoundCheck</title>
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
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		
		<!-- left contents -->
		<div id="content-wrapper">
			<div class="container-fluid">
				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item">지점명 </li>
					<li class="breadcrumb-item active">${sessionScope.healthclubsName}</li>
				</ol>
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> 헬스 프로그램 환불신청 승인 화면<!-- 제목(ex : 헬스장 리스트) -->
					</div>
						<div class="card-body">
							<div class="table-responsive">
								<div class="form-group">
									<label for="userId">회원 ID</label>
									<div class="form-control">gusgmlans</div>
								</div>
								<div class="form-group">
									<label for="userName">회원 이름</label>
									<div class="form-control">현희문</div>
								</div>
								<div class="form-group">
									<label for="healthclubsName">헬스장 지점</label>
									<div class="form-control">전북대점</div>
								</div>
								<div class="form-group">
									<label for="healthRefundNo">헬스 프로그램 환불 번호</label>
									<div class="form-control">105248156</div>
								</div>
								<div class="form-group">
									<label for="healthPayNo">헬스 프로그램 결제 번호</label>
									<div class="form-control">105248156</div>
								</div>
								<div class="form-group">
									<label for="refundMethod">환불 방식</label>
									<div class="form-control">신용카드</div>
								</div>
								<div class="form-group">
									<label for="refundMoney">총 환불 금액</label>
									<div class="form-control">100,000원</div>
								</div>
								<div class="form-group">
									<label for="refundDate">환불 신청 일자</label>
									<div class="form-control">2018년 09월 29일</div>
								</div>
								<div>
									<button type="button" class="btn btn-primary btn-sm" onclick="location.href='#'">환불승인</button>
								</div>
							</div>
						</div>
				</div>
			</div>
		</div>

		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>