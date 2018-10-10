<!-- 2018.10.02(화) 현희문 -->

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
				
					<h1>본사 건의사항 현황 검색</h1><br>
					
					<div class="col-md-6 col-md-offset-3">
						<form role="form" action="${pageContext.request.contextPath}/headRequireSearchList" method="post">
							<div class="form-group">
								<label for="category">카테고리</label>
								<select class="form-control" name="searchKey">
									<option>전체</option>
									<option value="headRequireNo">본사 건의사항 번호</option>
									<option value="userName">이름</option>
									<option value="requireTitle">제목</option>
									<option value="requireContent">내용</option>
									<option value="requireDate">등록 일자</option>
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
									<td><a href="${pageContext.request.contextPath}/headRequireUpdate?headRequireNo=${hRL.head_require_no}">수정</a></td>
									<td><a href="${pageContext.request.contextPath}/headRequireDelete?headRequireNo=${hRL.head_require_no}">삭제</a></td>
								</tr>
							</c:forEach>
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