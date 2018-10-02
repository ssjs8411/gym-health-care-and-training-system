<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>loginForm</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		
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
	<body>
		<div class="container">
			<h1 class="form-heading">trainerLogin Form</h1>
				<div class="login-form">
					<div class="main-div">
						<div class="panel">
							<h2>Trainer Login</h2>
							<p>Please enter your ID and Password</p>
						</div>
						<form id="Login" action="${pageContext.request.contextPath}/login" method="post">
       						<div class="form-group">
           						<input type="text" class="form-control" id="trainer_id" name="trainer_id" placeholder="ID">
							</div>
       						<div class="form-group">
								<input type="password" class="form-control" id="trainer_pw" name="trainer_pw" placeholder="Password">
							</div>
							<div class="forgot">
								<a href="${pageContext.request.contextPath}/">main</a>
								<button type="submit" class="btn btn-primary">Login</button>
   						</form>
   					</div>
				</div>
		</div>
	</body>
</html>