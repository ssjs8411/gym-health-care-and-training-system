<!-- 18.10.05 최지수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>memberSearchList</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		
		<!-- 여기에 채워 넣어 주세요 -->
		<div id="main">
			<section id="top" class="two">
				<div class="container">
		<h1>회원 전체목록</h1>
			<table class="table table-condensed">
				<thead>
					<tr>
						<th>회원번호</th>
						<th>헬스장번호</th>
						<th>아이디</th>
						<th>이름</th>
						<th>성별</th>
						<th>주소</th>
						<th>전화번호</th>
						<th>생년월일</th>
						<th>가입날짜</th>
						<th>이메일</th>
						<th>키</th>
						<th>몸무게</th>
						<th>목표몸무게</th>
						<th>헬스장 이용 현황</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="m" items="${list}">
						<tr>
							<td>${m.member_no}</td>
							<td>${m.healthclubs_no}</td>
							<td>${m.member_id}</td>
							<td>${m.member_name}</td>
							<td>${m.member_gender}</td>
							<td>${m.member_address}</td>
							<td>${m.member_phone}</td>
							<td>${m.member_birthday}</td>
							<td>${m.member_joindate}</td>
							<td>${m.member_email}</td>
							<td>${m.member_tall}</td>
							<td>${m.member_weight}</td>
							<td>${m.member_goal_weight}</td>
							<td>${m.member_usage_status}</td>
							<td><a href="${pageContext.request.contextPath}/">수정</a></td>
							<td><a href="${pageContext.request.contextPath}/">삭제</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
				<button type="button" class="btn btn-info" onclick="window.location.href='/chgs8411/'">홈으로<i class="fa fa-check spaceLeft"></i></button>
			</section>
		</div>
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>