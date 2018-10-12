<!-- 김소희 2018-09-28 / questionList.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>questionList</title>
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
						<i class="fas fa-table"></i> 질문 목록<!-- 제목(ex : 헬스장 리스트) -->
					</div>
						<div class="card-body">
							<div class="table-responsive">
								<div>
									<a href="${pageContext.request.contextPath}/questionInsert?member_no=${q.member_no}">글쓰기</a>&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="${pageContext.request.contextPath}/home">HOME</a>
								</div>
								<form role="form" action="${pageContext.request.contextPath}/questionList" method = "GET" style="margin:0; padding:0;"> 
									<!-- <div class="form-group">
									<label for="category">카테고리</label>
										<select class="form-control" name="search">
											<option>전체</option>
											<option value="question_title">제목</option>
											<option value="question_content">내용</option>	
										</select>
									</div>
									<div class="form-group">
										<label for="searckWord">검색</label>
										<input class="form-control" type="text" name="searchValue">
									</div>
									<div>
										<button class="btn btn-primary btn-sm">검색</button>
									</div> -->
									<%-- <P style="margin:0; padding:0;">
										<input type="hidden" name="questionCd" value="${question}"/>
										<input type="text" name="searchWord" size="5" maxlength="">
										<input type="submit" value="검색"/>
									</p> --%>
								</form>
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr>
											<th>질문 번호</th>
											<th>회원 번호</th>
											<th>트레이너 번호</th>
											<th>질문 제목</th>
											<th>등록 일자</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="q" items="${list}">
											<tr>
												<td>${q.question_no}</td>
												<td>${q.member_no}</td>
												<td>${q.trainer_no}</td>
												<td><a href="${pageContext.request.contextPath}/questionDetail?question_no=${q.question_no}">${q.question_title}</a></td>
												<td>${q.question_date}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
				</div>
			</div>
		</div>

		<!-- <button type="button" class="btn btn-info" onclick="window.location.href='/home'">HOME<i class="fa fa-check spaceLeft"></i></button> -->
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>