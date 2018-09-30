<!-- 2018.10.01(월) 현희문 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthclubsPaid</title>
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
					<h1>헬스장 이용권 결제완료화면</h1><br>
					<div class="col-md-6 col-md-offset-3">
						<div class="form-group">
							<label for="username">회원 ID</label>
							<div class="form-control">gusgmlans</div>
						</div>
						<div class="form-group">
							<label for="username">회원 이름</label>
							<div class="form-control">현희문</div>
						</div>
						<div class="form-group">
							<label for="username">헬스장 지점</label>
							<div class="form-control">전북대점</div>
						</div>
						<div class="form-group">
							<label for="username">헬스 프로그램 이름</label>
							<div class="form-control">힐링요가</div>
						</div>
						<div class="form-group">
							<label for="username">헬스장 결제 번호</label>
							<div class="form-control">105248156</div>
						</div>
						<div class="form-group">
							<label for="username">결제 방식</label>
							<div class="form-control">신용카드</div>
						</div>
						<div class="form-group">
							<label for="username">총 결제 금액</label>
							<div class="form-control">100,000원</div>
						</div>
						<div class="form-group">
							<label for="username">결제 일자</label>
							<div class="form-control">2018년 09월 29일</div>
						</div>
						<div class="form-group">
							<label for="username">헬스장 이용 시작일</label>
							<div class="form-control">2018년 10월 01일</div>
						</div>
						<div class="form-group">
							<label for="username">헬스장 이용 종료일</label>
							<div class="form-control">2018년 11월 01일</div>
						</div>
						<div>
							<button type="button" class="btn btn-primary btn-sm" onclick="location.href='#'">홈으로</button>
						</div>
					</div>
				</div>
			</section>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>