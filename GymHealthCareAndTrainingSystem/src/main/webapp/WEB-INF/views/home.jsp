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

					<header>
						<h2 class="alt">헬스장 명</h2>
						<p>ex) 헬스 프로그램 정보 혹은 헬스장 정보<br/></p>
					</header>

					<footer>
						<a href="${pageContext.request.contextPath}/" class="button scrolly">마이 페이지</a>
					</footer>

			</div>

				<!-- Portfolio -->
					<section id="portfolio" class="two">
						<div class="container">

							<header>
								<h2>헬스장 프로그램</h2>
							</header>

							<p>헬스장 프로그램</p>

							<div class="row">
								<div class="col-4 col-12-mobile">
									<article class="item">
										<header>
											<a href="${pageContext.request.contextPath}/healingYoga?program=1" class="image fit"><h3>힐링요가</h3></a>
										</header>
									</article>
									<article class="item">
										<header>
											<a href="${pageContext.request.contextPath}/TotalBodyToning?program=2" class="image fit"><h3>토탈바디토닝</h3></a>
										</header>
									</article>
									<article class="item">
										<header>
											<a href="${pageContext.request.contextPath}/gymTicket?program=3" class="image fit"><h3>헬스장이용권</h3></a>
										</header>
									</article>
								</div>
								<div class="col-4 col-12-mobile">
									<article class="item">
										<header>
											<a href="${pageContext.request.contextPath}/powerStretching?program=4" class="image fit"><h3>파워스트레칭</h3></a>
										</header>
									</article>
									<article class="item">
										<header>
											<a href="${pageContext.request.contextPath}/absStretching?program=5" class="image fit"><h3>ABS스트레칭</h3></a>
										</header>
									</article>
									<article class="item">
										<header>
											<a href="${pageContext.request.contextPath}/personalTraining?program=6" class="image fit"><h3>P.T</h3></a>
										</header>
									</article>
								</div>
								<div class="col-4 col-12-mobile">
									<article class="item">
										<header>
											<a href="${pageContext.request.contextPath}/muscularStrengthStretching?program=7" class="image fit"><h3>근력스트레칭</h3></a>
										</header>
									</article>
									<article class="item">
										<header>
											<a href="${pageContext.request.contextPath}/jumpSports?program=8" class="image fit"><h3>점프스포츠</h3></a>
										</header>
									</article>
								</div>
							</div>

						</div>
					</section>
				</div>
			</div>
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>
