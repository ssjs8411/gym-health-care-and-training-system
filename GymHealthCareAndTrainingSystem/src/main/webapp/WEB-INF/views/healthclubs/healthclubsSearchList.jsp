<!-- 18.09.28 최지수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthclubsSearchList</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		
		<!-- 여기에 채워 넣어 주세요 -->
		<div id="main">
			<section id="top" class="two">
				<div class="container">
				<h1>헬스장 전체조회</h1><br />
					<table class="table table-condensed">
						<thead>
							<tr>
								<th>헬스장 번호</th>
								<th>헬스장 이름</th>
								<th>등록날짜</th>
								<th>수정</th>
								<th>삭제</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="h" items="${list}">
								<tr>
									<td>${h.healthclubs_no}</td>
									<td><a href="${pageContext.request.contextPath}/healthclubsDetail?healthclubs_no=${h.healthclubs_no}">${h.healthclubs_name}</a></td>
									<td>${h.healthclubs_joindate}</td>
									<td><a href="${pageContext.request.contextPath}/updateHealthclubs?healthclubs_no=${h.healthclubs_no}">수정</a></td>
									<td><a href="${pageContext.request.contextPath}/">삭제</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<button type="button" class="btn btn-info" onclick="window.location.href='/home'">홈으로<i class="fa fa-check spaceLeft"></i></button>
			</section>
		</div>
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>