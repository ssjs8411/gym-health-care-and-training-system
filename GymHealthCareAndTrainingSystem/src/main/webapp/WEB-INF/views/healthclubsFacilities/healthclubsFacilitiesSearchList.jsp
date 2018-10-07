<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthclubsFacilitiesSearchList</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		
		<!-- 여기에 채워 넣어 주세요 -->
		<div id="main">
			<section id="top" class="two">
				<div class="container">
				<h1>시설조회</h1><br />
					<table class="table table-condensed">
						<thead>
							<tr>
								<th>시설번호</th>
								<th>시설명</th>
								<th>세부내용</th>
								<th>비용</th>
								<th>구입날짜</th>
								<th>수정</th>
								<th>삭제</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="h" items="${list}">
								<tr>
									<td>${h.healthclubs_facilities_no}</td>
									<td>${h.healthclubs_facilities_name}</td>
									<td>${h.facilities_detail_content}</td>
									<td>${h.healthclubs_facilities_cost}</td>
									<td>${h.facilities_purchase_date}</td>									
									<td><a href="${pageContext.request.contextPath}/">수정</a></td>
									<td><a href="${pageContext.request.contextPath}/#">삭제</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<button type="button" class="btn btn-info" onclick="window.location.href='/chgs8411/'">글쓰기<i class="fa fa-check spaceLeft"></i></button>
				<button type="button" class="btn btn-info" onclick="window.location.href='#'">홈으로<i class="fa fa-check spaceLeft"></i></button>
			</section>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>