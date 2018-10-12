<!-- 김소희 2018-10-02  / QuestionDetail.jsp  -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>questionDetail</title>
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
		<!-- 
			question_no
			member_no
			trainer_no
			question_title
			question_content
			question_date
		
		 -->
		 
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
						<i class="fas fa-table"></i> 질문 상세보기<!-- 제목(ex : 헬스장 리스트) -->
					</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<tr>
										<th>질문 번호</th>
										<td>${question.question_no}</td>
									</tr>
									<tr>
										<th>회원 번호</th>
										<td>${question.member_no}</td>
									</tr>
									<tr>
										<th>트레이너 번호</th>
										<td>${question.trainer_no}</td>
									</tr>
									<tr>
										<th>제목</th>
										<td>${question.question_title}</td>
									</tr>
									<tr>
										<th>내용</th>
										<td>${question.question_content}</td>
									</tr>
									<tr>
										<th>등록 일자</th>
										<td>${question.question_date}</td>
									</tr>
								</table>
								<a href="${pageContext.request.contextPath}/questionList">목록</a>&nbsp;&nbsp;&nbsp;&nbsp;
								<!-- 트레이너로 로그인 했을 경우에만 답변 가능 -->
								<c:if test="${sessionScope.trainerSessionId != null}"> 
										<a href="${pageContext.request.contextPath}/answerInsert?question_no=${question.question_no}">답변 등록</a>&nbsp;&nbsp;&nbsp;&nbsp;
								</c:if>
								<!-- 회원으로 로그인 했을 경우에만 수정 가능 -->
								<c:if test="${sessionScope.memberSessionId != null}"> 
									<a href="${pageContext.request.contextPath}/questionUpdate?question_no=${question.question_no}">수정</a>&nbsp;&nbsp;&nbsp;&nbsp;
								</c:if>
								<c:if test="${sessionScope.memberSessionId != null}"> <!-- 회원이랑 관리자 삭제 가능하게 만들어야 함 -->
									<a href="${pageContext.request.contextPath}/questionDelete?question_no=${question.question_no}">삭제</a>
								</c:if>
							</div>
						</div>
				</div>
			</div>
		</div>
		<%-- <div id="main">
			<section id="top" class="two">
				<div class="container">
					<c:if test="${requestScope.answerList != null}">
						<c:forEach var="answer" items="${requestScope.answerList}">
							<tr>
								<td>
									<div>
										${answer.trainer_no}<br>
										${answer.answer_date}
									</div>
								</td>
								<td>	<!-- 답변 제목 -->
									<div>
										${answer.answer_title}
									</div>
								</td>
								<td>	<!-- 답변 내용 -->
									<div>
										${answer.answer_content}
									</div>
								</td>
								<td> 
									<div id="btn" style="text-align:center;">
										<a href="${pageContext.request.contextPath}/answerInsert">답변 작성</a><br>
									</div>
									<c:if test="${answer.trainer_no == sessionScope.trainerSessionId}">
										<a href="${pageContext.request.contextPath}/answerUpdate">답변 수정</a><br>
										<a href="${pageContext.request.contextPath}/answerDelete">답변 삭제</a>
									</c:if>
								</td>
							</tr>
						</c:forEach>
					</c:if>
					<!-- 트레이너로 로그인 했을 경우에만 답변 가능 -->
					<c:if test="${sessionScope.trainerSessionId != null}"> 
						<form id="answerInsert">
							<input type="hidden" name="answer_no" value="${answer.answer_no}">
							<input type="hidden" name="trainer_no" value="${sessionScope.trainerSessionId}">
							<td>
								<div>${sessionScope.trainerSessionId}</div>
							</td>
							<td>
								<div>
									<input type="text" class="form-control" name="answer_title" value="${answer.answer_title}"required>
								</div>
							</td>
							<td>
								<div>
									<textarea class="form-control" name="answer_content" rows="4" cols="10" value="${answer.answer_content}" required></textarea>
								</div>
							</td>
							<td>
								<div id="btn" style="text-align:center;">
									<p><a href="${pageContext.request.contextPath}/answerInsert" onclick="<!-- writeCmt() -->#">답변 등록</a><br></p>
									<p><a href="${pageContext.request.contextPath}/answerInsert">답변 등록</a><br></p>
									<button class="btn btn-primary btn-sm" >등록</button>
								</div>
							</td>
						</form>
					</c:if> 
				</div>
			</section>
		</div>   --%>
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>