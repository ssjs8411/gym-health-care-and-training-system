<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthclubsUpdate</title>
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
						<i class="fas fa-table"></i> 헬스장 등록<!-- 제목(ex : 헬스장 리스트) -->
					</div>
						<div class="card-body">
							<div class="table-responsive">
								<form role="form" action="${pageContext.request.contextPath}/updateHealthclubs" method="POST">
									<input type="hidden" name="healthclubs_no" value="${healthclubs.healthclubs_no}">
									<div class="form-group">
										<label for="username">헬스장명 </label>  
										<input type="text"  class="form-control" name="healthclubs_name" value="${healthclubs.healthclubs_name}">
									</div>
									<div class="form-group">
										<label for="username">헬스장주소 </label> 
										<input type="text"  class="form-control" name="healthclubs_address" value="${healthclubs.healthclubs_address}">
									</div>
									<div class="form-group">
										<label for="username">헬스장대표자 </label>
										<input type="text"  class="form-control" name="healthclubs_representative" value="${healthclubs.healthclubs_representative}">
									</div>
									<div class="form-group">
										<label for="username">헬스장전화번호 </label>  
										<input type="text"  class="form-control" name="healthclubs_phone" value="${healthclubs.healthclubs_phone}">
									</div>
									<div class="form-group">
										<label for="username">헬스장개업날짜 </label>  
										<input type="date"  class="form-control" name="healthclubs_opening_date" value="${healthclubs.healthclubs_opening_date}">
									</div>
									<div class="form-group">
										<label for="username">헬스장사업자번호 </label>  
										<input type="text"  class="form-control" name="healthclubs_business_number" value="${healthclubs.healthclubs_business_number}">
									</div>
									<div>
										<button type="submit" class="btn btn-info">수정<i class="fa fa-check spaceLeft"></i></button>
										<button type="button" class="btn btn-info" onclick="window.location.href='/home'">취소<i class="fa fa-check spaceLeft"></i></button>
									</div>
								</form>
							</div>
						</div>
				</div>
			</div>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>