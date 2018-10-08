<!-- 2018.10.02(화) 현희문 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>headRequireInsert</title>
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
				
					<h1>본사 건의사항</h1><br>
					
					<div class="col-md-6 col-md-offset-3">
					
						<!-- 회원 -->
						<c:if test="${!empty sessionScope.memberSessionId}">
							<form role="form" action="${pageContext.request.contextPath}/memberHeadRequireInsert" method="post">
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
							<form role="form" action="${pageContext.request.contextPath}/adminHeadRequireInsert" method="post">
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
						
						<!-- 관리자 -->
						<c:if test="${!empty sessionScope.adminSessionId}">	
							<form role="form" action="${pageContext.request.contextPath}/trainerHeadRequireInsert" method="post">
								<div><input type="hidden" name="name" value="${healthclubsAdmin.healthclubsAdmin_name}"></div>
								<div><input type="hidden" name="phone" value="${healthclubsAdmin.healthclubsAdmin_phone}"></div>
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
			</section>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>