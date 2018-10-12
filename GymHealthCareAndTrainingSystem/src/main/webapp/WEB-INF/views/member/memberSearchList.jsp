<!-- 18.10.05 최지수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>memberSearchList</title>
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
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		
		<div id="content-wrapper">
			<div class="container-fluid">
				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item">지점명 </li>
					<li class="breadcrumb-item active">${sessionScope.healthclubsName}</li>
				</ol>
				<!-- 헬스장 별 회원 리스트 -->
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> 헬스장 회원 리스트
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th>회원번호</th>
										<th>헬스장번호</th>
										<th>아이디</th>
										<th>이름</th>
										<th>성별</th>
										<th>주소</th>
										<th>전화번호</th>
										<th>생년월일</th>
										<th>가입날짜</th>
										<th>이메일</th>
										<th>키</th>
										<th>몸무게</th>
										<th>목표몸무게</th>
										<th>헬스장 이용 현황</th>
										<th>수정</th>
										<th>삭제</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="m" items="${list}">
										<tr>
											<td>${m.member_no}</td>
											<td>${m.healthclubs_no}</td>
											<td>${m.member_id}</td>
											<td>${m.member_name}</td>
											<td>${m.member_gender}</td>
											<td>${m.member_address}</td>
											<td>${m.member_phone}</td>
											<td>${m.member_birthday}</td>
											<td>${m.member_joindate}</td>
											<td>${m.member_email}</td>
											<td>${m.member_tall}</td>
											<td>${m.member_weight}</td>
											<td>${m.member_goal_weight}</td>
											<td>${m.member_usage_status}</td>
											<td><a href="${pageContext.request.contextPath}/">수정</a></td>
											<td><a href="${pageContext.request.contextPath}/">삭제</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<button type="button" class="btn btn-info" onclick="window.location.href='/'">홈으로<i class="fa fa-check spaceLeft"></i></button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>