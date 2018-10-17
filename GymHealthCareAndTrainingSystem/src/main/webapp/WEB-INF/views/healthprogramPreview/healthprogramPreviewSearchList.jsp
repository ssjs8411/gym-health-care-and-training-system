<!-- 김소희 2018-10-17 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthprogramPreviewSearchList</title>
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
							<!--healthprogram_preview_no
								member_no
								health_program_no
								preview_title
								preview_content
								preview_date
							 -->
							 <c:if test="${sessionScope.memberSessionId != null}">
								<a href="${pageContext.request.contextPath}/healthprogramPreviewInsert?member_no=${h.member_no}">글쓰기</a>&nbsp;&nbsp;&nbsp;&nbsp;
							 </c:if>
							 	<a href="${pageContext.request.contextPath}/home">HOME</a>
							</div>
							<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr>
											<th>헬스프로그램 후기 번호</th>
											<th>회원 번호</th>
											<th>헬스프로그램 번호</th>
											<th>질문 제목</th>
											<th>등록 일자</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="h" items="${list}">
											<tr>
												<td>${h.healthprogram_preview_no}</td>
												<td>${h.member_no}</td>
												<td>${h.health_program_no}</td>
												<td><a href="${pageContext.request.contextPath}/healthprogramPreview?healthprogram_preview_no=${h.healthprogram_preview_no}">${h.preview_title}</a></td>
												<td>${h.preview_date}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
						</div>
				</div>
			</div>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>