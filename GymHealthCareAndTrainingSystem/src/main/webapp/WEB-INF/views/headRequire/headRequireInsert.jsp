<!-- 2018.10.02(화) 현희문 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>headRequireInsert</title>
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
				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item">지점명 </li>
					<li class="breadcrumb-item active">${sessionScope.healthclubsName}</li>
				</ol>
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> 본사 건의사항
					</div>
						<div class="card-body">
							<div class="table-responsive">
								<!-- 회원 -->
								<c:if test="${!empty sessionScope.memberSessionId}">
									<form role="form" action="${pageContext.request.contextPath}/memberHeadRequireInsert" method="post">
										<div><input type="hidden" name="writer_level" value="1"></div>
										<div><input type="hidden" name=serial_no value="${sessionScope.memberSessionNo}"></div>
										<div><input type="hidden" name="name" value="${member.member_name}"></div>
										<div><input type="hidden" name="phone" value="${member.member_phone}"></div>
										<div class="form-group">
											<label for="requireTitle">제목</label>
											<input class="form-control" type="text" name="require_title">
										</div>
										<div class="form-group">
											<label for="requireContent">내용</label>
											<textarea class="form-control" name="require_content" rows="5" cols="50"></textarea>
										</div>
										<div>
											<button class="btn btn-primary btn-sm">등록</button>
										</div>
									</form>
								</c:if>
								
								<!-- 트레이너 -->
								<c:if test="${!empty sessionScope.trainerSessionId}">
									<form role="form" action="${pageContext.request.contextPath}/trainerHeadRequireInsert" method="post">
										<div><input type="hidden" name="writer_level" value="2"></div>
										<div><input type="hidden" name=serial_no value="${sessionScope.trainerSessionNo}"></div>
										<div><input type="hidden" name="name" value="${trainer.trainer_name}"></div>
										<div><input type="hidden" name="phone" value="${trainer.trainer_phone}"></div>
										<div class="form-group">
											<label for="requireTitle">제목</label>
											<input class="form-control" type="text" name="require_title">
										</div>
										<div class="form-group">
											<label for="requireContent">내용</label>
											<textarea class="form-control" name="require_content" rows="5" cols="50"></textarea>
										</div>
										<div>
											<button class="btn btn-primary btn-sm">등록</button>
										</div>
									</form>
								</c:if>
								
								<!-- 체인점 관리자 -->
								<c:if test="${!empty sessionScope.adminSessionId}">	
									<form role="form" action="${pageContext.request.contextPath}/adminHeadRequireInsert" method="post">
										<div><input type="hidden" name="writer_level" value="3"></div>
										<div><input type="hidden" name=serial_no value="${sessionScope.adminSessionNo}"></div>
										<div><input type="hidden" name="name" value="${healthclubsAdmin.healthclubs_admin_name}"></div>
										<div><input type="hidden" name="phone" value="${healthclubsAdmin.healthclubs_admin_phone}"></div>
										<div class="form-group">
											<label for="requireTitle">제목</label>
											<input class="form-control" type="text" name="require_title">
										</div>
										<div class="form-group">
											<label for="requireContent">내용</label>
											<textarea class="form-control" name="require_content" rows="5" cols="50"></textarea>
										</div>
										<div>
											<button class="btn btn-primary btn-sm">등록</button>
										</div>
									</form>
								</c:if>
							</div>
						</div>
				</div>
			</div>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>