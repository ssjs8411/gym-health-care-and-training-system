<!-- 2018.10.02(화) 현희문 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthRefoundedSearchList</title>
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
				
					<h1>헬스 프로그램 환불 현황 검색</h1><br>
					
					<div class="col-md-6 col-md-offset-3">
						<form role="form" action="${pageContext.request.contextPath}/healthclubsRefundedSearchList" method="post">
							<div class="form-group">
								<label for="category">카테고리</label>
								<select class="form-control" name="searchKey">
									<option>전체</option>
									<option value="healthRefundNo">헬스 프로그램 환불 번호</option>
									<option value="userId">회원 아이디</option>
									<option value="userName">회원 이름</option>
									<option value="paymentDate">환불 일자</option>
								</select>
							</div>
							<div class="form-group">
								<label for="searchValue">검색</label>
								<input class="form-control" type="text" name="searchValue">
							</div>
							<div>
								<button class="btn btn-primary btn-sm">검색</button>
							</div>
						</form>
					</div>
					
					<table class="table table-condensed">
						<thead>
							<tr>
								<td>프로그램 환불 번호</td>
								<td>프로그램 결제 번호</td>
								<td>회원 번호</td>
								<td>프로그램 모집 번호</td>
								<td>환불 사유</td>
								<td>환불 방식</td>
								<td>환불 금액</td>
								<td>환불 일시</td>
								<td>승인</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>2</td>
								<td>3</td>
								<td>4</td>
								<td>5</td>
								<td>6</td>
								<td>7</td>
								<td>8</td>
								<td><a href="${pageContext.request.contextPath}/healthRefundCheck">승인</a></td>
							</tr>
						</tbody>
					</table>
					
					<div>
						<button type="button" class="btn btn-primary btn-sm" onclick="location.href='#'">홈으로</button>
					</div>
					
				</div>
			</section>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>