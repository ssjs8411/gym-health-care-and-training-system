<!-- 2018. 09. 27. 공세준  -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Home</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<jsp:include page="module/header.jsp"></jsp:include>
		<!-- Main -->
			<div id="main">
				<!-- Intro -->
					<section id="top" class="one dark cover">
						<div class="container">

							<header>
								<h2 class="alt">헬스장 명</h2>
								<p>ex) 헬스 프로그램 정보 혹은 헬스장 정보<br/></p>
							</header>

							<footer>
								<a href="${pageContext.request.contextPath}/" class="button scrolly">마이 페이지</a>
							</footer>

						</div>
					</section>

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

				<!-- About Me -->
					<section id="about" class="three">
						<div class="container">

							<header>
								<h2>About Me</h2>
							</header>

							<a href="#" class="image featured"><img src="images/pic08.jpg" alt="" /></a>

							<p>Tincidunt eu elit diam magnis pretium accumsan etiam id urna. Ridiculus
							ultricies curae quis et rhoncus velit. Lobortis elementum aliquet nec vitae
							laoreet eget cubilia quam non etiam odio tincidunt montes. Elementum sem
							parturient nulla quam placerat viverra mauris non cum elit tempus ullamcorper
							dolor. Libero rutrum ut lacinia donec curae mus vel quisque sociis nec
							ornare iaculis.</p>

						</div>
					</section>

				<!-- Contact -->
					<section id="contact" class="four">
						<div class="container">

							<header>
								<h2>Contact</h2>
							</header>

							<p>Elementum sem parturient nulla quam placerat viverra
							mauris non cum elit tempus ullamcorper dolor. Libero rutrum ut lacinia
							donec curae mus. Eleifend id porttitor ac ultricies lobortis sem nunc
							orci ridiculus faucibus a consectetur. Porttitor curae mauris urna mi dolor.</p>

							<form method="post" action="#">
								<div class="row">
									<div class="col-6 col-12-mobile"><input type="text" name="name" placeholder="Name" /></div>
									<div class="col-6 col-12-mobile"><input type="text" name="email" placeholder="Email" /></div>
									<div class="col-12">
										<textarea name="message" placeholder="Message"></textarea>
									</div>
									<div class="col-12">
										<input type="submit" value="Send Message" />
									</div>
								</div>
							</form>

						</div>
					</section>

			</div>
		<jsp:include page="module/footer.jsp"></jsp:include>
	</body>
</html>
