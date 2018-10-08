<!-- 김소희 2018-09-28 / questionList.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>questionList</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		<%

		%>
		<div id="main">
			<section id="top" class="two">
					<div class="container">
					<h1>질문 목록</h1>
					<div><a href="${pageContext.request.contextPath}/questionInsert?member_no=${q.member_no}">글쓰기</a></div>
					<form role="form" action="${pageContext.request.contextPath}/questionSearchList" method = "GET" style="margin:0; padding:0;">
						<P style="margin:0; padding:0;">
							<input type="hidden" name="questionCd" value="${question}"/>
							<input type="text" name="searchWord" size="15" maxlength="30">
							<input type="submit" value="검색"/>
						</p>
					</form>
						<table class="table table-condensed">
							<thead>
								<tr>
									<th>질문 번호</th>
									<th>회원 번호</th>
									<th>트레이너 번호</th>
									<th>질문 제목</th>
									<th>등록 일자</th>
									<th>수정</th>
									<th>삭제</th>
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
										<td><a href="${pageContext.request.contextPath}/questionUpdate?question_no=${q.question_no}">수정</a></td>
										<td><a href="${pageContext.request.contextPath}/questionDelete?question_no=${q.question_no}">삭제</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				<button type="button" class="btn btn-info" onclick="window.location.href='/home'">HOME<i class="fa fa-check spaceLeft"></i></button>
				<button type="button" class="btn btn-info" onclick="window.location.href='/questionInsert'">피드백 등록<i class="fa fa-check spaceLeft"></i></button>
			</section>
		</div>
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>