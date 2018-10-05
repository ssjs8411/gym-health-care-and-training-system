<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthclubsDetail</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		
		<!-- 여기에 채워 넣어 주세요 -->
		<div id="main">
			<div class="container">
				<h1>헬스장 세부정보</h1>
				<table>
					<tr>
						<th>헬스장 번호</th>
						<td>${healthclubs.healthclubs_no}</td>
					</tr>
					<tr>
						<th>헬스장 이름</th>
						<td>${healthclubs.healthclubs_name}</td>
					</tr>
					<tr>
						<th>헬스장 주소</th>
						<td>${healthclubs.healthclubs_address}</td>
					</tr>
					<tr>
						<th>헬스장 대표자</th>
						<td>${healthclubs.healthclubs_representative}</td>
					</tr>
					<tr>
						<th>헬스장 전화번호</th>
						<td>${healthclubs.healthclubs_phone}</td>
					</tr>
					<tr>
						<th>헬스장 개업일</th>
						<td>${healthclubs.healthclubs_opening_date}</td>
					</tr>
					<tr>
						<th>헬스장 사업자번호</th>
						<td>${healthclubs.healthclubs_business_number}</td>
					</tr>
					<tr>
						<th>헬스장 등록일</th>
						<td>${healthclubs.healthclubs_joindate}</td>
					</tr>
				</table>
				<a href="${pageContext.request.contextPath}/healthclubsList">목록</a>
			</div>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>