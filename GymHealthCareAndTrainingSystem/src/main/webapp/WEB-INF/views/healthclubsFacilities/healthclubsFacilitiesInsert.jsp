<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>FacilitiesMaintenanceForm</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		<div id="main">
			<section id="top" class="two">
				<div class="container">
				<h1>시설관리 등록</h1>
					<div class="col-md-6 col-md-offset-3">
						<form role="form" action="${pageContext.request.contextPath}/healthclubsInsert" method="POST">
							<div class="form-group">
								<label for="username"> </label>  
								<input type="text"  class="form-control" name="">
							</div>
							<div>
								<button type="submit" class="btn btn-info">등록<i class="fa fa-check spaceLeft"></i></button>
								<button type="button" class="btn btn-info" onclick="window.location.href='/chgs8411/'">취소<i class="fa fa-check spaceLeft"></i></button>
							</div>
						</form>
					</div>
				</div>
			</section>
		</div>
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>