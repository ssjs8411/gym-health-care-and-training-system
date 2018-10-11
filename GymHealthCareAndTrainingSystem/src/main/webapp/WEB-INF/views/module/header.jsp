<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>header</title>
		
		<!-- home css -->
		<link rel="stylesheet" href="resources/assets/css/main.css" />
		
		<!-- Scripts -->
		<script src="resources/assets/js/jquery.min.js"></script>
		<script src="resources/assets/js/jquery.scrolly.min.js"></script>
		<script src="resources/assets/js/jquery.scrollex.min.js"></script>
		<script src="resources/assets/js/browser.min.js"></script>
		<script src="resources/assets/js/breakpoints.min.js"></script>
		<script src="resources/assets/js/util.js"></script>
		<script src="resources/assets/js/main.js"></script>
	</head>
	<body>
		<!-- Header -->
			<div id="header">
				<div class="top">
					<!-- Nav 권한별 권한 설정-->
					<!-- 관리자 -->
					<c:if test="${!empty sessionScope.adminSessionId}">	
						<!-- Logo -->
						<div id="logo">
							<h1 id="title">${sessionScope.adminSessionName} 님 로그인 중</h1>
							<p><a href="${pageContext.request.contextPath}/logout">로그아웃</a></p>
						</div>
						<nav id="nav">
							<ul>
								<li><a href="#top" id="top-link"><span class="icon fa-home">마이페이지</span></a></li>
								<li><a href="${pageContext.request.contextPath}/healthclubsInsert" id="portfolio-link"><span class="icon fa-th">헬스장 등록</span></a></li>
								<li><a href="${pageContext.request.contextPath}/healthclubsList" id="portfolio-link"><span class="icon fa-th">헬스장 리스트</span></a></li>
								<li><a href="#portfolio" id="portfolio-link"><span class="icon fa-th">헬스장 결제</span></a></li>
								<li><a href="#about" id="about-link"><span class="icon fa-user">헬스 프로그램 등록</span></a></li>
								<li><a href="#about" id="about-link"><span class="icon fa-user">헬스 프로그램</span></a></li>
								<li><a href="#about" id="about-link"><span class="icon fa-user">트레이너 관리</span></a></li>
								<li><a href="${pageContext.request.contextPath}/healthclubsFacilitiesInsert" id="about-link"><span class="icon fa-user">시설 관리</span></a></li>
								<li><a href="${pageContext.request.contextPath}/questionList" id="contact-link"><span class="icon fa-envelope">피드백</span></a></li>
								<li><a href="${pageContext.request.contextPath}/adminHeadRequireInsert" id="contact-link"><span class="icon fa-envelope">건의사항</span></a></li>
							</ul>
						</nav>
					</c:if>

					<!-- 트레이너 -->
					<c:if test="${!empty sessionScope.trainerSessionId}">	
						<!-- Logo -->
						<div id="logo">
							<h1 id="title">${sessionScope.trainerSessionName} 님 로그인 중</h1>
							<p><a href="${pageContext.request.contextPath}/logout">로그아웃</a></p>
						</div>	
						<nav id="nav">
							<ul>
								<li><a href="#top" id="top-link"><span class="icon fa-home">마이페이지</span></a></li>
								<li><a href="#about" id="about-link"><span class="icon fa-user">헬스 프로그램 등록</span></a></li>
								<li><a href="#about" id="about-link"><span class="icon fa-user">헬스 프로그램</span></a></li>
								<li><a href="${pageContext.request.contextPath}/questionList" id="contact-link"><span class="icon fa-envelope">피드백</span></a></li>
								<li><a href="${pageContext.request.contextPath}/trainerHeadRequireInsert" id="contact-link"><span class="icon fa-envelope">건의사항</span></a></li>
							</ul>
						</nav>
					</c:if>


					<!-- 회원  -->
					<c:if test="${!empty sessionScope.memberSessionId}">
						<!-- Logo -->
						<div id="logo">
							<h1 id="title">${sessionScope.memberSessionName} 님 로그인 중</h1>
							<p><a href="${pageContext.request.contextPath}/logout">로그아웃</a></p>
						</div>	
						<nav id="nav">
							<ul>
								<li><a href="#top" id="top-link"><span class="icon fa-home">마이페이지</span></a></li>
								<li><a href="#portfolio" id="portfolio-link"><span class="icon fa-th">헬스장 결제</span></a></li>
								<li><a href="#about" id="about-link"><span class="icon fa-user">헬스 프로그램</span></a></li>
								<li><a href="${pageContext.request.contextPath}/questionInsert" id="contact-link"><span class="icon fa-envelope">피드백</span></a></li>
								<li><a href="${pageContext.request.contextPath}/memberHeadRequireInsert" id="contact-link"><span class="icon fa-envelope">건의사항</span></a></li>
							</ul>
						</nav>
					</c:if>
				</div>
				<div class="bottom">
					<!-- Social Icons -->
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
							<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
							<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
						</ul>
				</div>
			</div>
	</body>
</html>