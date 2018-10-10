<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthclubsFacilitiesUpdate</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		<div id="main">
			<section id="top" class="two">
				<div class="container">
				<h1>시설관리 수정</h1>
					<div class="col-md-6 col-md-offset-3">
						<form role="form" action="${pageContext.request.contextPath}/healthclubsFacilitiesUpdate?healthclubs_facilities_no=${healthclubsFacilities.healthclubs_facilities_no}" method="POST">
							<div class="form-group">
								<label for="username">시설명</label>  
								<input type="text"  class="form-control" name="healthclubs_facilities_name" value="${healthclubsFacilities.healthclubs_facilities_name}">
							</div>
							<div class="form-group">
								<label for="username">세부내용</label>  
								<input type="text"  class="form-control" name="facilities_detail_content" value="${healthclubsFacilities.facilities_detail_content}">
							</div>
							<div class="form-group">
								<label for="username">비용</label>  
								<input type="text"  class="form-control" name="healthclubs_facilities_cost" value="${healthclubsFacilities.healthclubs_facilities_cost}">
							</div>
							<div class="form-group">
								<label for="username">구입날짜</label>  
								<input type="date"  class="form-control" name="facilities_purchase_date" value="${healthclubsFacilities.facilities_purchase_date}">
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
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>