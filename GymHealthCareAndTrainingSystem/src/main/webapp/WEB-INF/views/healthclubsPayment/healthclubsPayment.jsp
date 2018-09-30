<!-- 2018.10.01(월) 현희문 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthclubsPayment</title>
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
					<h1>헬스장 이용권 결제화면</h1><br>
					<div class="col-md-6 col-md-offset-3">
						<form role="form" action="${pageContext.request.contextPath}/healthclusbsPaid" method="post">
							<div class="form-group">
								<label for="paymentMethod">결제 수단</label>
								<select class="form-control" name="paymentMethod">
									<option>신용카드</option>
									<option>실시간 계좌이체</option>
									<option>무통장 입금</option>
									<option>휴대폰 소액결제</option>
								</select>
							</div>
							<div class="form-group">
								<label for="paymentTotal">총 결제 금액</label>
								<div class="form-control">100,000원</div>
							</div>
							<div>
							<button type="button" class="btn btn-primary btn-sm" onclick="location.href='#'">취소</button>
							<button class="btn btn-primary btn-sm">결제</button>
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