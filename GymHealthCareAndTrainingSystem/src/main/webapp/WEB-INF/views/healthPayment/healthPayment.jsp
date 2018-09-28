<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthPayment</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		
		<!-- 여기에 채워 넣어 주세요 -->
		<div id="main">
			<section id="top">
				<div class="container">
					<form id="healthPayment" action="${pageContext.request.contextPath}/healthPayment" method="post">
						<div class="form-group">
							<label for="username">결제 수단</label>
							<select class="form-control" name="payment">
								<option>신용카드</option>
								<option>실시간 계좌이체</option>
								<option>무통장 입금</option>
								<option>휴대폰 소액결제</option>
							</select>
						</div>
						<div class="form-group">
							<label for="username">결제금액</label>
							<div class="form-control">100,000원</div>
						</div>
					</form>
				</div>
			</section>
		</div>

		
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>