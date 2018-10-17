<!-- 김소희 2018-10-17  -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthprogramPreviewInsert</title>
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
						<i class="fas fa-table"></i> <!-- 제목(ex : 헬스장 리스트) -->
					</div>
						<div class="card-body">
							<div class="table-responsive">
							
							<!-- 여기에 내용을 채워주세요  -->
							<!-- 
							healthprogram_preview_no
							member_no
							health_program_no
							preview_title
							preview_content
							preview_date
							 -->
							 <c:if test="${!empty sessionScope.memberSessionId}">
							 	<form role="form" action="${pageContext.request.contextPath}/healthprogramPreviewInsert" method="POST">
										<%-- <div><input type="hidden" name="member_no" value="${sessionScope.memberSessionNo}"></div> --%>
										<%-- <div><input type="hidden" name="member_no" value="${sessionScope.memberSessionNo}"></div>  
										<div><input type="hidden" name="trainer_no" value="${question.trainer_no}"></div>  --%>
										<div class="form-group">
											<label>작성자</label>
										 	<input type="text" class="form-control" name="member_no" value="${healthprogram_preview.member_no}"> 
										 </div>
										<div class="form-group">
											<label>헬스프로그램 번호 </label>
											<input type="text" class="form-control" name="trainer_no" value="${healthprogram_preview.health_program_no}">
										</div> 
										<div class="form-group">
											<label>제목</label>
											<input type="text" class="form-control" name="question_title" placeholder="제목" required>
										</div>
										<div class="form-group">
											<label>내용</label>
											<textarea class="form-control"  name="question_content" rows="10" cols="150" placeholder="내용을 입력해주세요" required></textarea>
										</div>
										<div class="form-group">
											<label>파일 첨부</label>
											<input type="file"  class="form-control" name="preview_attached_file">
										</div>
										<%-- <div>
											<button type="submit" class="btn btn-info">확인<i class="fa fa-check spaceLeft"></i></button>
											<a href="${pageContext.request.contextPath}/questionList">목록</a>
										</div> --%>
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