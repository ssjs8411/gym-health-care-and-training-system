<!-- 2018.10.11(목) 현희문 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>headRequireSearchList</title>
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
				
					<h1>본사 건의사항 리스트</h1><br>
				
					<table class="table table-condensed">
						<thead>
							<tr>
								<td>본사 건의사항 번호</td>
								<td>제목</td>
								<td>등록 일자</td>
								<td>수정</td>
								<td>삭제</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="hRL" items="${headRequireList}">
								<tr>
									<td>${hRL.head_require_no}</td>
									<td><a href="${pageContext.request.contextPath}/headRequireDetail?headRequireNo=${hRL.head_require_no}">${hRL.require_title}</a></td>
									<td>${hRL.require_content}</td>
									<td><a href="${pageContext.request.contextPath}/headRequireUpdateGet?headRequireNo=${hRL.head_require_no}">수정</a></td>
									<td><a href="${pageContext.request.contextPath}/headRequireDeleteGet?headRequireNo=${hRL.head_require_no}">삭제</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					
					<div>
						<button type="button" class="btn btn-primary btn-sm" onclick="location.href='${pageContext.request.contextPath}/home'">홈으로</button>
					</div>
					
				</div>
			</section>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>