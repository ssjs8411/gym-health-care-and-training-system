<!-- 18.10.05 최지수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>memberUpdate</title>
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
						<i class="fas fa-table"></i> 회원 정보 수정<!-- 제목(ex : 헬스장 리스트) -->
					</div>
						<div class="card-body">
							<div class="table-responsive">
								<form role="form" action="${pageContext.request.contextPath}/updateMember" method="POST">
									<input type="hidden" name="member_no" value="${memberAndHealthclubs.member_no}">
									<div class="form-group">
										<label for="username">헬스장 선택</label>
										<select name="healthclubs_no">
											<option value="${memberAndHealthclubs.healthclubs_no}">${memberAndHealthclubs.healthclubs_name}</option>
											<c:forEach var="h" items="${list}">
											<option value="${h.healthclubs_no}">${h.healthclubs_name}</option>
											</c:forEach>
										</select>
									</div>
							
									<div class="form-group">
										<label for="username">아이디</label>
										<input type="text" class="form-control" name="member_id" value="${memberAndHealthclubs.member_id}" readonly="readonly">
									</div>
					
									<div class="form-group">
										<label for="username">비밀번호</label>
										<input type="text" class="form-control" name="member_pw">
									</div>
					
									<div class="form-group">
										<label for="username">이름</label>
										<input type="text" class="form-control" name="member_name" value="${memberAndHealthclubs.member_name}">
									</div>
					
									<div class="form-group">
										<label for="username">성별</label>
										<input type="radio" name="member_gender" value="여">여 
										<input type="radio" name="member_gender" value="남">남
									</div>
					
									<div class="form-group">
										<label for="username">주소</label>
										<input type="text" class="form-control" name="member_address" value="${memberAndHealthclubs.member_address}">
									</div>
					
									<div class="form-group">
										<label for="username">전화번호</label>
										<input type="text" class="form-control" name="member_phone" value="${memberAndHealthclubs.member_phone}">
									</div>
					
									<div class="form-group">
										<label for="username">생년월일</label>
										<input type="date" class="form-control" name="member_birthday" value="${memberAndHealthclubs.member_birthday}">
									</div>
					
									<div class="form-group">
										<label for="username">이메일</label>
										<input type="text" class="form-control" name="member_email" value="${memberAndHealthclubs.member_email}">
									</div>
					
									<div class="form-group">
										<label for="username">키</label>
										<input type="text" class="form-control" name="member_tall" value="${memberAndHealthclubs.member_tall}">
									</div>
					
									<div class="form-group">
										<label for="username">몸무게</label>
										<input type="text" class="form-control" name="member_weight" value="${memberAndHealthclubs.member_weight}">
									</div>
					
									<div class="form-group">
										<label for="username">목표 몸무게</label>
										<input type="text" class="form-control" name="member_goal_weight" value="${memberAndHealthclubs.member_goal_weight}">
									</div>
					
									<div class="form-group text-center">
										<button type="submit" class="btn btn-info">
											회원수정<i class="fa fa-check spaceLeft"></i>
										</button>
										<button type="button" class="btn btn-warning" onclick="window.location.href='/chgs8411/'">
											수정취소<i class="fa fa-times spaceLeft"></i>
										</button>
										<input type="reset" class="btn btn-danger" value="초기화">
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