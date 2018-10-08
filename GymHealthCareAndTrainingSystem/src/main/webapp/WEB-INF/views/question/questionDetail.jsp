<!-- 김소희 2018-10-02  / QuestionDetail.jsp  -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>questionDetail</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
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
		<div id="main">
			<section id="top" class="two">
				<div class="container">
				<h1>질문 상세보기</h1>
					<table>
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
					<a href="${pageContext.request.contextPath}/questionSearchList">목록</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<%-- <a href="${pageContext.request.contextPath}/questionUpdate">수정</a>&nbsp;&nbsp;&nbsp;&nbsp; --%>
					<a href="${pageContext.request.contextPath}/questionUpdate?question_no=${question.question_no}">수정</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/questionDelete?question_no=${question.question_no}">삭제</a>
				</div>
			</section>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>