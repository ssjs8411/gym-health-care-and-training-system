<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>healthclubsAdminUpdate</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		
		<!-- 여기에 채워 넣어 주세요 -->
		<div id="main">
		<div class="container">
			<form action="${pageContext.request.contextPath}/UpdateHealthclubsAdmin" method="POST">
				<div>
					<input type="hidden" name="healthclubs_admin_no" value="${healthclubsAdmin.healthclubs_admin_no}">
				</div>
				<div>
					헬스장선택
					<select name="healthclubs_no">
						<c:forEach var="h" items="${list}">
						<option value="${h.healthclubs_no}">${h.healthclubs_name}</option>
						</c:forEach>
					</select>
				</div>
				<div>
					관리자아이디
					<input type="text" name="healthclubs_admin_id" readonly="readonly" value="${healthclubsAdmin.healthclubs_admin_id}">
				</div>
				<div>
					관리자비밀번호
					<input type="password" name="healthclubs_admin_pw">
				</div>
				<div>
					관리자이름
					<input type="text" name="healthclubs_admin_name" value="${healthclubsAdmin.healthclubs_admin_name}">
				</div>
				<div>
					관리자전화번호
					<input type="text" name="healthclubs_admin_phone" value="${healthclubsAdmin.healthclubs_admin_phone}">
				</div>
				<div>
					<button type="submit">등록</button>
					<input type="reset" value="리셋" >
				</div>
			</form>
		</div>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>