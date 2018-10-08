<!-- 김소희 2018-10-01 / questionUpdate.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>questionUpdate</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
	`	
		<div id="main">
			<section id="top" class="two">
				<div class="container">
					<h1>질문 수정</h1>
					<form role="form" action="${pageContext.request.contextPath}/questionUpdate" method="POST">
						<input type="hidden" name="question_no" value="${question.question_no}">
						<div>
							<label>작성자</label>
							<input type="text" class="form-control" name="member_no" value="${question.member_no}">
						</div>
						<div class="form-group">
							<label>제목</label>
							<input type="text" class="form-control" name="question_title" value="${question.question_title}">
						</div>
						<div class="form-group">
							<label>내용</label>
							<textarea class="form-control" name="question_content" rows="10" cols="10">${question.question_content}</textarea>
						</div>
						<div>
							<button type="submit" class="btn btn-info">수정<i class="fa fa-check spaceLeft"></i></button>
						</div> 
						<a href="${pageContext.request.contextPath}/questionSearchList">목록</a>
					</form> 
				</div>
			</section>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>