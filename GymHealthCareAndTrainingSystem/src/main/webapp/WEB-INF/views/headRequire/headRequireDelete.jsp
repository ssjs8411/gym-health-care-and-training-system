<!-- 2018.10.02(화) 현희문 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>headRequireDelete</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		
		<!-- 여기에 채워 넣어 주세요 -->
		<div id="main">
			<section id="top">
				<div class="container">
				
				<h1>본사 건의사항 삭제 확인</h1><br>
				
				<div class="col-md-6 col-md-offset-3">
				
					<!-- 회원 -->
					<c:if test="${!empty sessionScope.memberSessionId}">
						<form role="form" action="${pageContext.request.contextPath}/memberHeadRequireDelete" method="post">
							<input type="hidden" name="headRequireNo" value="${headRequireNo}">
							<div class="form-group">
								<input class="form-control" type="password" name="memberPassword">
							</div>
							<div>
								<button class="btn btn-primary btn-sm">삭제</button>
							</div>
						</form>
					</c:if>
					
					<!-- 트레이너 -->
					<c:if test="${!empty sessionScope.trainerSessionId}">
						<form role="form" action="${pageContext.request.contextPath}/trainerHeadRequireDelete" method="post">
							<input type="hidden" name="headRequireNo" value="${headRequireNo}">
							<div class="form-group">
								<input class="form-control" type="password" name="trainerPassword">
							</div>
							<div>
								<button class="btn btn-primary btn-sm">삭제</button>
							</div>
						</form>
					</c:if>
					
					<!-- 체인점 관리자 -->
					<c:if test="${!empty sessionScope.adminSessionId}">	
						<form role="form" action="${pageContext.request.contextPath}/adminHeadRequireDelete" method="post">
							<input type="hidden" name="headRequireNo" value="${headRequireNo}">
							<div class="form-group">
								<input class="form-control" type="password" name="adminPassword">
							</div>
							<div>
								<button class="btn btn-primary btn-sm">삭제</button>
							</div>
						</form>
					</c:if>
				</div>
				
				</div>
			</section>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>