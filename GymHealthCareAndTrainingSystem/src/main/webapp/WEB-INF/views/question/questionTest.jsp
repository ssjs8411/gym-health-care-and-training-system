<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 페이징 테스트 파일 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/questionListTest?pageNum=1&contentNum=10" method="POST">
		<input type="submit" value=체크">
	</form>
</body>
</html>