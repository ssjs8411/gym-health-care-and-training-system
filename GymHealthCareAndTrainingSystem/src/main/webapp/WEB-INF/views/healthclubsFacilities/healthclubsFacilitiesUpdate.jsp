<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthclubsFacilitiesUpdate</title>
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
						<i class="fas fa-table"></i> 시설관리 수정<!-- 제목(ex : 헬스장 리스트) -->
					</div>
						<div class="card-body">
							<div class="table-responsive">
								<form role="form" action="${pageContext.request.contextPath}/healthclubsFacilitiesUpdate?healthclubs_facilities_no=${healthclubsFacilities.healthclubs_facilities_no}" method="POST">
									<div class="form-group">
										<label for="username">시설명</label>  
										<input type="text"  class="form-control" name="healthclubs_facilities_name" value="${healthclubsFacilities.healthclubs_facilities_name}">
									</div>
									<div class="form-group">
										<label for="username">세부내용</label>  
										<input type="text"  class="form-control" name="facilities_detail_content" value="${healthclubsFacilities.facilities_detail_content}">
									</div>
									<div class="form-group">
										<label for="username">비용</label>  
										<input type="text"  class="form-control" name="healthclubs_facilities_cost" value="${healthclubsFacilities.healthclubs_facilities_cost}">
									</div>
									<div class="form-group">
										<label for="username">구입날짜</label>  
										<input type="date"  class="form-control" name="facilities_purchase_date" value="${healthclubsFacilities.facilities_purchase_date}">
									</div>
									<div>
										<button type="submit" class="btn btn-info">등록<i class="fa fa-check spaceLeft"></i></button>
										<button type="button" class="btn btn-info" onclick="window.location.href='/chgs8411/'">취소<i class="fa fa-check spaceLeft"></i></button>
									</div>
								</form>
							</div>
						</div>
				</div>
			</div>
		</div>

		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>