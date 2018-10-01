<!-- 18.10.01 최지수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthclubsAdminSearchList</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		
		<!-- 여기에 채워 넣어 주세요 -->
		<div id="main">
			<div class="container">
				<h1>헬스장 관리자 전체 조회</h1>
				<table>
					<thead>
						<tr>
							<th>관리자 번호</th>
							<th>관리자 이름</th>
							<th>관리자 등록일자</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="had" items="${list}">
							<tr>
								<td>${had.healthclubs_admin_no}</td>
								<td><a href="${pageContext.request.contextPath}/healthclubsAdminDetail?healthclubs_admin_no=${had.healthclubs_admin_no}">${had.healthclubs_admin_name}</a></td>
								<td>${had.healthclubs_admin_joindate}</td>
								<td><a href="${pageContext.request.contextPath}/healthclubsAdminUpdate?healthclubs_admin_no=${had.healthclubs_admin_no}">수정</a></td>
								<td><a href="#">삭제</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			
			</div>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>