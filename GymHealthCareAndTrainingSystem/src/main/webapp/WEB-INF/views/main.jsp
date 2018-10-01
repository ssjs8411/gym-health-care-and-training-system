<!-- 2018. 09. 27. 공세준  -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
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
				<li class="sidebar-nav-item"><a class="js-scroll-trigger" href="#services">Services</a></li>
				<li class="sidebar-nav-item"><a class="js-scroll-trigger" href="#portfolio">SiteMap</a></li>
				<li class="sidebar-nav-item"><a class="js-scroll-trigger" href="#contact">Contact</a></li>
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
            						<input type="text" class="form-control" id="id" name="id" placeholder="ID">
								</div>
        						<div class="form-group">
									<input type="password" class="form-control" id="pw" name="pw" placeholder="Password">
								</div>
								<div class="forgot">
									<a href="${pageContext.request.contextPath}/joinForm">Join us</a>
								</div>
									<button type="submit" class="btn btn-primary">Login</button>
    						</form>
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
						<a class="social-link rounded-circle text-white" href="#"> 
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