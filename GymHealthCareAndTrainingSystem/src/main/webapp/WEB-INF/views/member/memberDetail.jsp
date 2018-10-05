<!-- 18.10.05 최지수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>memberDetail</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		
		<!-- 여기에 채워 넣어 주세요 -->
		<div id="main">
			<div class="container">
				<h1>회원 정보 상세보기</h1>
				<table>
					<tr>
						<th>회원번호</th>
						<td>${member.member_no}</td>
					</tr>
					<tr>
						<th>헬스장번호</th>
						<td>${member.healthclubs_no}</td>
					</tr>
					<tr>
						<th>아이디</th>
						<td>${member.member_id}</td>
					</tr>
					<tr>
						<th>이름</th>
						<td>${member.member_name}</td>
					</tr>
					<tr>
						<th>성별</th>
						<td>${member.member_gender}</td>
					</tr>
					<tr>
						<th>주소</th>
						<td>${member.member_address}</td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td>${member.member_phone}</td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td>${member.member_birthday}</td>
					</tr>
					<tr>
						<th>가입날짜</th>
						<td>${member.member_joindate}</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>${member.member_email}</td>
					</tr>
					<tr>
						<th>키</th>
						<td>${member.member_tall}</td>
					</tr>
					<tr>
						<th>몸무게</th>
						<td>${member.member_weight}</td>
					</tr>
					<tr>
						<th>목표몸무게</th>
						<td>${member.member_goal_weight}</td>
					</tr>
					<tr>
						<th>헬스장 이용 현황</th>
						<td>${member.member_usage_status}</td>
					</tr>
				</table>
				<a href="${pageContext.request.contextPath}/selectMemberList">목록</a>
			</div>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>