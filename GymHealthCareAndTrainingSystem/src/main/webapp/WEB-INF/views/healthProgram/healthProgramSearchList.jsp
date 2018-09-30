<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthProgramSearchList</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		
		<!-- 여기에 채워 넣어 주세요 -->
		<div id="main">
			<section id="top">
				<div class="container">
				<c:set var="program" value="${param.program}"/>
				<c:choose>
					<c:when test="${program eq 3}">
						<a href="${pageContext.request.contextPath}/healthclubsPayment">헬스장 이용권 결제하기</a>
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/healthPayment">헬스 프로그램 결제하기</a>
					</c:otherwise>
				</c:choose>
				</div>
			</section>
		</div>
		
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>