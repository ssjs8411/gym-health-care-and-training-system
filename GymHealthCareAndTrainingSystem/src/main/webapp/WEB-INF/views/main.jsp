<!-- 2018. 09. 27. 공세준  -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>GYM HealthCare And Training System</title>

		<!-- Bootstrap Core CSS -->
		<link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

		<!-- Custom Fonts -->
		<link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
		<link href="resources/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

		<!-- Custom CSS -->
		<link href="resources/css/stylish-portfolio.min.css" rel="stylesheet">
		<link href="resources/css/login.css" rel="stylesheet">
		
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	</head>

	<body id="page-top">
		<!-- Navigation -->
		<a class="menu-toggle rounded" href="#"><i class="fas fa-bars"></i></a>
		<nav id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a class="js-scroll-trigger" href="#page-top">HealthCare And Training</a></li>
				<li class="sidebar-nav-item"><a class="js-scroll-trigger" href="#page-top">Home</a></li>
				<li class="sidebar-nav-item"><a class="js-scroll-trigger" href="#about">Login</a></li>
				<li class="sidebar-nav-item"><a class="js-scroll-trigger" href="#services">프로젝트 소개</a></li>
				<li class="sidebar-nav-item"><a class="js-scroll-trigger" href="#portfolio">팀원 소개</a></li>
				<li class="sidebar-nav-item"><a class="js-scroll-trigger" href="#contact">ERD</a></li>
			</ul>
		</nav>

		<!-- Header -->
		<header class="masthead d-flex">
			<div class="container text-center my-auto">
				<h1 class="form-heading">HealthCare And Training System</h1><br><br>	
				<h3 class="form-heading">The Perfect Body Fit</h3>
				<a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Join us</a>
			</div>
			<div class="overlay"></div>
		</header>

		<!-- Login Form -->
		<section class="content-section bg-light" id="about">
			<div class="container">
				<h1 class="form-heading">login Form</h1>
					<div class="login-form">
						<div class="main-div">
							<div class="panel">
								<h2>Login</h2>
								<p>Please enter your ID and Password</p>
							</div>
							<form id="Login" action="${pageContext.request.contextPath}/login" method="post">
        						<div class="form-group">
            						<input type="text" class="form-control" id="member_id" name="member_id" placeholder="ID">
								</div>
        						<div class="form-group">
									<input type="password" class="form-control" id="member_pw" name="member_pw" placeholder="Password">
								</div>
								<div class="forgot">
									<a href="${pageContext.request.contextPath}/joinForm">Join us</a>
									<a href="${pageContext.request.contextPath}/adminLogin">Admin</a>
									<a href="${pageContext.request.contextPath}/trainerLogin">Trainer</a>
								</div>
									<button type="submit" class="btn btn-primary">Login</button>
    						</form>
    					</div>
					</div>
			</div>
		</section>

		<!-- 프로젝트 소개 -->
		<section class="content-section bg-primary text-white text-center" id="services">
			<div class="container">
				<div class="content-section-heading">
					<h3 class="text-secondary mb-0">G.I 조</h3>
					<h2 class="mb-5">프로젝트 소개</h2>
				</div>
				<div class="row">
					<div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
						<span class="service-icon rounded-circle mx-auto mb-3"> 
							<i class="icon-screen-smartphone"></i>
						</span>
						<h4>
							<strong>프로젝트 명</strong>
						</h4>
						<p class="text-faded mb-0">헬스장 통합 관리 시스템(Gym Health Care And Training System)</p>
					</div>
					<div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
						<span class="service-icon rounded-circle mx-auto mb-3"> 
							<i class="icon-pencil"></i>
						</span>
						<h4>
							<strong>프로젝트 주제</strong>
						</h4>
						<p class="text-faded mb-0">구체적 근거 자료를 토대로 회원에게 동기 부여를 해주며, 맞춤 프로그램으로 개인별 체형 및 수준에 맞는 관리를 할수 있고 헬스장 입장에서는 통합적인 관리를 도와주는 시스템입니다. </p>
					</div>
					<div class="col-lg-3 col-md-6 mb-5 mb-md-0">
						<span class="service-icon rounded-circle mx-auto mb-3"> 
							<i class="icon-like"></i>
						</span>
						<h4>
							<strong>기대효과</strong>
						</h4>
						<p class="text-faded mb-0">체계적인 헬스장 관리로 매출 상승 기대효과 뿐만 아니라 전문적인 건강관리로 삶의 질을 향상시켜 회원 유실을 방지 합니다 </p>
					</div>
					<div class="col-lg-3 col-md-6">
						<span class="service-icon rounded-circle mx-auto mb-3"> <i
							class="icon-mustache"></i>
						</span>
						<h4>
							<strong>개발환경</strong>
						</h4>
						<p class="text-faded mb-0">
							OS : Window7<br>
							C.L : HTML,	CSS, JavaScript, JQuery<br>
							S.L : Java, JSP<br>
							WAS : apache-tomcat<br>
							DB : MariaDB<br>
						</p>
					</div>
				</div>
			</div>
		</section>

		<!-- Git 주소 -->
		<section class="content-section bg-light" id="about">
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-10 mx-auto">
						<h2>3팀 프로젝트 Github 주소</h2>
						<a class="btn btn-dark btn-xl js-scroll-trigger" href="https://github.com/ssjs8411/gym-health-care-and-training-system.git">바로가기</a>
					</div>
				</div>
			</div>
		</section>
	
		<!-- 팀원 소개 -->
		<section class="content-section" id="portfolio">
			<div class="container">
				<div class="content-section-heading text-center">
					<h3 class="text-secondary mb-0">개발자 28기 3팀</h3>
					<h2 class="mb-5">프로젝트 팀원 소개</h2>
				</div>
				<div class="row no-gutters">
					<div class="col-lg-6">
						<a class="portfolio-item" href="#"> 
							<span class="caption">
								<span class="caption-content">
									<h2>팀장 : 최지수</h2>
									<p class="mb-0">업무 : </p>
									<p class="mb-0">cafe24 주소 : </p>
								</span>
							</span>
							<img class="img-fluid" src="resources/img/portfolio-1.jpg" alt="">
						</a>
					</div>
					<div class="col-lg-6">
						<a class="portfolio-item" href="#"> 
							<span class="caption">
								<span class="caption-content">
									<h2>팀원 : 김소희</h2>
									<p class="mb-0">업무 : </p>
									<p class="mb-0">cafe24 주소 : </p>
								</span>
							</span>
							<img class="img-fluid" src="resources/img/portfolio-1.jpg" alt="">
						</a>
					</div>
					<div class="col-lg-6">
						<a class="portfolio-item" href="#"> 
							<span class="caption">
								<span class="caption-content">
									<h2>팀원 : 현희문</h2>
									<p class="mb-0">업무 : </p>
									<p class="mb-0">cafe24 주소 : </p>
								</span>
							</span> 
							<img class="img-fluid" src="resources/img/portfolio-2.jpg" alt="">
						</a>
					</div>
					<div class="col-lg-6">
						<a class="portfolio-item" href="#"> 
							<span class="caption">
								<span class="caption-content">
									<h2>팀원 : 공세준</h2>
									<p class="mb-0">업무 : </p>
									<p class="mb-0">cafe24 주소 : </p>
								</span>
							</span>
							<img class="img-fluid" src="resources/img/portfolio-3.jpg" alt="">
						</a>
					</div>
					<div class="col-lg-6">
						<a class="portfolio-item" href="#"> 
							<span class="caption">
								<span class="caption-content">
									<h2>팀원 : 정민수</h2>
									<p class="mb-0">업무 : </p>
									<p class="mb-0">cafe24 주소 : </p>
								</span>
							</span> 
							<img class="img-fluid" src="resources/img/portfolio-4.jpg" alt="">
						</a>
					</div>
				</div>
			</div>
		</section>

		<!-- Footer -->
		<footer class="footer text-center">
			<div class="container">
				<ul class="list-inline mb-5">
					<li class="list-inline-item">
						<a class="social-link rounded-circle text-white mr-3" href="#">
							<i class="icon-social-facebook"></i>
						</a>
					</li>
					<li class="list-inline-item">
						<a class="social-link rounded-circle text-white mr-3" href="#"> 
							<i class="icon-social-twitter"></i>
						</a>
					</li>
					<li class="list-inline-item">
						<a class="social-link rounded-circle text-white" href="https://github.com/ssjs8411/gym-health-care-and-training-system.git"> 
							<i class="icon-social-github"></i>
						</a>
					</li>
				</ul>
				<p class="text-muted small mb-0">Copyright &copy; Your Website 2018</p>
			</div>
		</footer>

		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
			<i class="fas fa-angle-up"></i>
		</a>
	
		<!-- Bootstrap core JavaScript -->
		<script src="resources/vendor/jquery/jquery.min.js"></script>
		<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
		<!-- Plugin JavaScript -->
		<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	
		<!-- Custom scripts for this template -->
		<script src="resources/js/stylish-portfolio.min.js"></script>
</body>
</html>