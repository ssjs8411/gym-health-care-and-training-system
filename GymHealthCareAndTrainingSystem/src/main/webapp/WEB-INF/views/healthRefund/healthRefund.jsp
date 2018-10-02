<!-- 2018.10.01(월) 현희문 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthRefound</title>
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
				
					<h1>헬스 프로그램 환불화면</h1><br>
					
					<div class="col-md-6 col-md-offset-3">
						<form role="form" action="${pageContext.request.contextPath}/healthRefund" method="post">
							<div class="form-group">
								<label for="refundReason">환불 사유</label>
								<textarea class="form-control" name="refundReason" rows="5" cols="50"></textarea>
							</div>
							<div class="form-group">
								<label for="refundMethod">환불 방식</label>
								<select class="form-control" name="refundMethod">
									<option>신용카드</option>
									<option>실시간 계좌이체</option>
									<option>무통장 입금</option>
									<option>휴대폰 소액결제</option>
								</select>
							</div>
							<div>
								<button type="button" class="btn btn-primary btn-sm" onclick="location.href='#'">환불신청</button>
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