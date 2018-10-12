<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthclubsInsert</title>
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
		
		<div id="content-wrapper">
			<div class="container-fluid">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">헬스장 등록</a></li>
					<li class="breadcrumb-item active">Overview</li>
				</ol>
				<div class="card mb-3">
					<div class="card-header">
						<form role="form" action="${pageContext.request.contextPath}/healthclubsInsert" method="POST">
							<div class="form-group">
								<label for="username">헬스장 명 </label>  
								<input type="text"  class="form-control" name="healthclubs_name">
							</div>
							<div class="form-group">
								<label for="username">헬스장 주소 </label> 
								<input type="text"  class="form-control" name="healthclubs_address">
							</div>
							<div class="form-group">
								<label for="username">헬스장 대표자 </label>
								<input type="text"  class="form-control" name="healthclubs_representative">
							</div>
							<div class="form-group">
								<label for="username">헬스장 전화번호 </label>  
								<input type="text"  class="form-control" name="healthclubs_phone">
							</div>
							<div class="form-group">
								<label for="username">헬스장 개업날짜 </label>  
								<input type="date"  class="form-control" name="healthclubs_opening_date">
							</div>
							<div class="form-group">
								<label for="username">헬스장 사업자번호 </label>  
								<input type="text"  class="form-control" name="healthclubs_business_number">
							</div>
							<div>
								<button type="submit" class="btn btn-info">등록<i class="fa fa-check spaceLeft"></i></button>
								<button type="button" class="btn btn-info" onclick="window.location.href='/'">취소<i class="fa fa-check spaceLeft"></i></button>
							</div>
						</form>
	
					</div>
				</div>
			</div>
		</div>

		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>