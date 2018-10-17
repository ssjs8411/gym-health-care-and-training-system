<!-- 김소희 2018-10-02 / questionDelete.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>questionDelete</title>
		<<meta http-equiv="X-UA-Compatible" content="IE=edge">
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
						<i class="fas fa-table"></i> 질문 삭제<!-- 제목(ex : 헬스장 리스트) -->
					</div>
						<div class="card-body">
							<div class="table-responsive">
							<!-- 회원권한 -->
							<c:if test="${!empty sessionScope.memberSessionId}">
								<form role="form" action="${pageContext.request.contextPath}/memberQuestionDelete" method="POST">
								<%-- 	<input type="hidden" name="question_no" value="${quesiton_no}">   --%>
									<div class="form-group">
									 	<input type="password" class="form-control" name="member_pw"> 
									</div>
									<div>
										비밀번호를 입력해주세요<br><br>
										<button class="btn btn-primary btn-sm" >확인</button>
									</div>
								</form>
							</c:if>
							
							<!-- 관리자권한 -->
							<c:if test="${!empty sessionScope.adminSessionId}">
								<form role="form" action="${pageContext.request.contextPath}/adminQuestionDelete" method="POST">
								<%-- 	<input type="hidden" name="question_no" value="${quesiton_no}">   --%>
									<div class="form-group">
									 	<input type="password" class="form-control" name="member_pw"> 
									</div>
									<div>
										비밀번호를 입력해주세요<br><br>
										<button class="btn btn-primary btn-sm" >확인</button>
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