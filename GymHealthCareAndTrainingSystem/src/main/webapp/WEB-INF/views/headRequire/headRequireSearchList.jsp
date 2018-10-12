<!-- 2018.10.02(화) 현희문 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>headRequireSearchList</title>
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
						<i class="fas fa-table"></i> 본사 건의사항 현황 검색
					</div>
						<div class="card-body">
							<div class="table-responsive">
								<form role="form" action="${pageContext.request.contextPath}/headRequireSearchList" method="post">
									<div class="form-group">
										<label for="category">카테고리</label>
										<select class="form-control" name="searchKey">
											<option>전체</option>
											<option value="head_require_no">본사 건의사항 번호</option>
											<option value="name">이름</option>
											<option value="require_title">제목</option>
											<option value="require_content">내용</option>
											<option value="require_date">등록 일자</option>
										</select>
									</div>
									<div class="form-group">
										<label for="searchValue">검색</label>
										<input class="form-control" type="text" name="searchValue">
									</div>
									<div>
										<button class="btn btn-primary btn-sm">검색</button>
									</div>
								</form>
							
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr>
											<td>본사 건의사항 번호</td>
											<td>제목</td>
											<td>등록 일자</td>
											<td>수정</td>
											<td>삭제</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="hRL" items="${headRequireList}">
											<tr>
												<td>${hRL.head_require_no}</td>
												<td><a href="${pageContext.request.contextPath}/headRequireDetail?headRequireNo=${hRL.head_require_no}">${hRL.require_title}</a></td>
												<td>${hRL.require_content}</td>
												<td><a href="${pageContext.request.contextPath}/headRequireUpdateGet?headRequireNo=${hRL.head_require_no}">수정</a></td>
												<td><a href="${pageContext.request.contextPath}/headRequireDeleteGet?headRequireNo=${hRL.head_require_no}">삭제</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<div>
							<button type="button" class="btn btn-primary btn-sm" onclick="location.href='#'">홈으로</button>
						</div>
				</div>
			</div>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>