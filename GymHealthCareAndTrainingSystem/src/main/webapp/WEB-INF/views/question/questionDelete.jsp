<!-- 김소희 2018-10-02 / questionDelete.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>questionDelete</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		<div id="main">
			<section id="top" class="two">
				<div class="container">
				<h1>질문 삭제</h1>
					<div class="col-md-6 col-md-offset-3">
						<form role="form" action="${pageContext.request.contextPath}/questionDelete" method="POST">
							<div class="form-group">
							 	<input type="hidden" class="form-control" name="question_no" value="${question.question_no}"> 
							</div>
							<div>
								게시글을 삭제 하시겠습니까?<br><br>
								<button type="submit" class="btn btn-info" onclick="location.href='#'">삭제<i class="fa fa-check spaceLeft"></i></button>
							</div>
						</form>
					</div>
				</div>
			</section>
		</div>
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>