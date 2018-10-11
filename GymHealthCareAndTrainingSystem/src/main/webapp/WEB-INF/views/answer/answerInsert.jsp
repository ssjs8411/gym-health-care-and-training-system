<!-- 2018-10-11 김소희 / answerInsert.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>answerInsert</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		
		<!-- 여기에 채워 넣어 주세요 -->
		<div id="main">
			<section id="top" class="two">
				<div class="container">
					<h1>답변 등록</h1>
					
					<div class="col-md-6 col-md-offset-3">
						<c:if test="${!empty sessionScope.trainerSessionId}">
							<form role="form" action="${pageContext.request.contextPath}/answerInsert" method="post">
								<div class="form-group">
									<input type="hidden" class="form-control" name="question_no" value="${question.question_no}">
								</div>
								<div class="form-group">
									<textarea class="form-control"  name="answer_content" rows="5" cols="10" placeholder="답변을 능록해주세요" required></textarea>
								</div>
								<div>
									<button type="submit" class="btn btn-info">등록<i class="fa fa-check spaceLeft"></i></button>
									<a href="${pageContext.request.contextPath}/questionList">목록</a>
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