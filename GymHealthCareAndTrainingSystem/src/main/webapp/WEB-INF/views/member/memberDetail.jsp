<!-- 18.10.05 최지수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>memberDetail</title>
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
						<i class="fas fa-table"></i> 회원 정보 상세보기<!-- 제목(ex : 헬스장 리스트) -->
					</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<tr>
										<th>회원번호</th>
										<td>${member.member_no}</td>
									</tr>
									<tr>
										<th>헬스장번호</th>
										<td>${member.healthclubs_no}</td>
									</tr>
									<tr>
										<th>아이디</th>
										<td>${member.member_id}</td>
									</tr>
									<tr>
										<th>이름</th>
										<td>${member.member_name}</td>
									</tr>
									<tr>
										<th>성별</th>
										<td>${member.member_gender}</td>
									</tr>
									<tr>
										<th>주소</th>
										<td>${member.member_address}</td>
									</tr>
									<tr>
										<th>전화번호</th>
										<td>${member.member_phone}</td>
									</tr>
									<tr>
										<th>생년월일</th>
										<td>${member.member_birthday}</td>
									</tr>
									<tr>
										<th>가입날짜</th>
										<td>${member.member_joindate}</td>
									</tr>
									<tr>
										<th>이메일</th>
										<td>${member.member_email}</td>
									</tr>
									<tr>
										<th>키</th>
										<td>${member.member_tall}</td>
									</tr>
									<tr>
										<th>몸무게</th>
										<td>${member.member_weight}</td>
									</tr>
									<tr>
										<th>목표몸무게</th>
										<td>${member.member_goal_weight}</td>
									</tr>
									<tr>
										<th>헬스장 이용 현황</th>
										<td>${member.member_usage_status}</td>
									</tr>
								</table>
								<a href="${pageContext.request.contextPath}/selectMemberList">목록</a>
							</div>
						</div>
				</div>
			</div>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>