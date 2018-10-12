<!-- 18.10.01 최지수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthclubsAdminSearchList</title>
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
						<i class="fas fa-table"></i> 헬스장 관리자 전체 조회<!-- 제목(ex : 헬스장 리스트) -->
					</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr>
											<th>관리자 번호</th>
											<th>관리자 이름</th>
											<th>관리자 등록일자</th>
											<th>수정</th>
											<th>삭제</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="had" items="${list}">
											<tr>
												<td>${had.healthclubs_admin_no}</td>
												<td><a href="${pageContext.request.contextPath}/healthclubsAdminDetail?healthclubs_admin_no=${had.healthclubs_admin_no}">${had.healthclubs_admin_name}</a></td>
												<td>${had.healthclubs_admin_joindate}</td>
												<td><a href="${pageContext.request.contextPath}/healthclubsAdminUpdate?healthclubs_admin_no=${had.healthclubs_admin_no}">수정</a></td>
												<td><a href="#">삭제</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
				</div>
			</div>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>