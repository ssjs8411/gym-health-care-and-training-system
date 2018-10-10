<!-- 2018.10.02(화) 현희문 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>headRequireDetail</title>
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
				
					<h1>본사 건의사항 세부사항</h1><br>
				
					<table class="table table-condensed">
						<thead>
							<tr>
								<td>본사 건의사항 번호</td>
								<td>이름</td>
								<td>전화번호</td>
								<td>제목</td>
								<td>내용</td>
								<td>등록 일자</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>${headRequire.head_require_no}</td>
								<td>${headRequire.name}</td>
								<td>${headRequire.phone}</td>
								<td>${headRequire.require_title}</td>
								<td>${headRequire.require_content}</td>
								<td>${headRequire.require_date}</td>
							</tr>
						</tbody>
					</table>
					
					<div>
						<button type="button" class="btn btn-primary btn-sm" onclick="location.href='#'">목록</button>
					</div>
				</div>
			</section>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>