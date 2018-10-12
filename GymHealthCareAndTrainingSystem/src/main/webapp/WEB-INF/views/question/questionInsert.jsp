<!-- 김소희 2018-09-28 / questionInsert.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>questionInsert</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		<div id="main">
			<section id="top" class="two">
				<div class="container">
				<h1>질문 등록</h1>
				
					<div class="col-md-6 col-md-offset-3">
						<c:if test="${!empty sessionScope.memberSessionId}">
							<form role="form" action="${pageContext.request.contextPath}/questionInsert" method="POST">
								<div class="form-group">
									<label>작성자</label>
								 	<input type="text" class="form-control" name="member_no" value="${question.member_no}"> 
								 </div>
								<div class="form-group">
									<label>트레이너 </label>
									<input type="text" class="form-control" name="trainer_no" value="${question.trainer_no}">
								</div> 
								<div><input type="hidden" name="member_no" value="${question.member_no}"></div>
								<div><input type="hidden" name="member_no" value="${question.trainer_no}"></div> 
								<div class="form-group">
									<label>제목</label>
									<input type="text" class="form-control" name="question_title" placeholder="제목" required>
								</div>
								<div class="form-group">
									<label>내용</label>
									<textarea class="form-control"  name="question_content" rows="10" cols="150" placeholder="내용을 입력해주세요" required></textarea>
								</div>
								<div>
									<button type="submit" class="btn btn-info">확인<i class="fa fa-check spaceLeft"></i></button>
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