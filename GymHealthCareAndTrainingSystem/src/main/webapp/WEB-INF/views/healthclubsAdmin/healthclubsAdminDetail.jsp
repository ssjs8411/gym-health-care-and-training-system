<!-- 18.10.01 최지수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthclubsAdminDetail</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		
		<!-- 여기에 채워 넣어 주세요 -->
		<div id="main">
			<div class="container">
				<h1>관리자 세부정보 조회</h1>
				<table>
					<tr>
						<th>관리자번호</th>
						<td>${healthclubsAdmin.healthclubs_admin_no}</td>
					</tr>
					<tr>
						<th>헬스장번호</th>
						<td>${healthclubsAdmin.healthclubs_no}</td>
					</tr>
					<tr>
						<th>관리자이름</th>
						<td>${healthclubsAdmin.healthclubs_admin_name}</td>
					</tr>
					<tr>
						<th>관리자아이디</th>
						<td>${healthclubsAdmin.healthclubs_admin_id}</td>
					</tr>
					<tr>
						<th>관리자전화번호</th>
						<td>${healthclubsAdmin.healthclubs_admin_phone}</td>
					</tr>
					<tr>
						<th>관리자등록일자</th>
						<td>${healthclubsAdmin.healthclubs_admin_joindate}</td>
					</tr>
				</table>
				<a href="${pageContext.request.contextPath}/healthclubsAdminList">목록</a>
			</div>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>