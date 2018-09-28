<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthclubsInsert</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		<div id="main">
		<h1>헬스장 등록</h1>
		<form action="${pageContext.request.contextPath}/healthclubsInsert" method="POST">
			<div>
				헬스장명 :  
				<input type="text" name="healthclubs_name">
			</div>
			<div>
				헬스장주소 :  
				<input type="text" name="healthclubs_address">
			</div>
			<div>
				헬스장대표자 :  
				<input type="text" name="healthclubs_representative">
			</div>
			<div>
				헬스장전화번호 :  
				<input type="text" name="healthclubs_phone">
			</div>
			<div>
				헬스장개업날짜 :  
				<input type="date" name="healthclubs_opening_date">
			</div>
			<div>
				헬스장사업자번호 :  
				<input type="text" name="healthclubs_business_number">
			</div>
			<div>
				<button type="submit">등록</button>
				<input type="reset" value="취소">
			</div>
		</form>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>