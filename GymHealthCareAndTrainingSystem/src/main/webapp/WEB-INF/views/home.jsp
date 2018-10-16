<!-- 2018. 09. 27. 공세준  -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Home</title>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		
		<!-- Bootstrap core CSS-->
		<link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Custom fonts for this template-->
		<link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		
		<!-- Page level plugin CSS-->
		<link href="resources/vendor/datatables/dataTables.bootstrap4.css"
			rel="stylesheet">
		
		<!-- Custom styles for this template-->
		<link href="resources/css/sb-admin.css" rel="stylesheet">
		
		<!-- Bootstrap core JavaScript-->
		<script src="resources/vendor/jquery/jquery.min.js"></script>
		<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
		<!-- Core plugin JavaScript-->
		<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	
		<!-- Page level plugin JavaScript-->
		<script src="resources/vendor/datatables/jquery.dataTables.js"></script>
		<script src="resources/vendor/datatables/dataTables.bootstrap4.js"></script>
	
		<!-- Custom scripts for all pages-->
		<script src="resources/js/sb-admin.min.js"></script>
	
		<!-- Demo scripts for this page-->
		<script src="resources/js/demo/datatables-demo.js"></script>
	</head>
	<body id="page-top">
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		<!-- Main -->
		<div id="content-wrapper">
			<div class="container-fluid">
				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item">지점명 </li>
					<li class="breadcrumb-item active">${sessionScope.healthclubsName}</li>
				</ol>
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> <!-- 제목(ex : 헬스장 리스트) -->
					</div>
						<div class="card-body">
							<div class="table-responsive">
							<!-- 팀원 소개 -->
							<section class="content-section" id="portfolio">
								<div class="container">
									<div class="content-section-heading text-center">
										<h2 class="mb-5">Health Program</h2>
									</div>
									<div class="row no-gutters">
										<div class="col-lg-6">
											<a class="portfolio-item" href="#"> 
												<span class="caption">
													<span class="caption-content">
														<h2>Diet</h2>
														<p class="mb-0"> </p>
														<p class="mb-0"></p>
													</span>
												</span>
												<img class="img-fluid" src="resources/img/diet.jpg" alt="">
											</a>
										</div>
										<div class="col-lg-6">
											<a class="portfolio-item" href="#"> 
												<span class="caption">
													<span class="caption-content">
														<h2>Fitness</h2>
														<p class="mb-0"></p>
														<p class="mb-0"></p>
													</span>
												</span>
												<img class="img-fluid" src="resources/img/up.PNG" alt="">
											</a>
										</div>
										<div class="col-lg-6">
											<a class="portfolio-item" href="#"> 
												<span class="caption">
													<span class="caption-content">
														<h2>Body Correction</h2>
														<p class="mb-0"></p>
														<p class="mb-0"></p>
													</span>
												</span> 
												<img class="img-fluid" src="resources/img/body.jpg" alt="">
											</a>
										</div>
										<div class="col-lg-6">
											<a class="portfolio-item" href="#"> 
												<span class="caption">
													<span class="caption-content">
														<h2>Rehabilitation</h2>
														<p class="mb-0"></p>
														<p class="mb-0"></p>
													</span>
												</span>
												<img class="img-fluid" src="resources/img/red.jpg" alt="">
											</a>
										</div>
										<div class="col-lg-6">
											<a class="portfolio-item" href="#"> 
												<span class="caption">
													<span class="caption-content">
														<h2>Personal Training</h2>
														<p class="mb-0"></p>
														<p class="mb-0"></p>
													</span>
												</span> 
												<img class="img-fluid" src="resources/img/PT.jpg" alt="">
											</a>
										</div>
									</div>
								</div>
							</section>	
							</div>
						</div>
				</div>
			</div>
		</div>
		
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>
