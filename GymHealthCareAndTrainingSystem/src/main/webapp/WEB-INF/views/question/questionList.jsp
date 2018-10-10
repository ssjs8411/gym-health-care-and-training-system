<!-- 김소희 2018-09-28 / questionList.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>questionList</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		<%

		%>
		<h1>질문 목록</h1>
		<div id="main">
			<section id="top" class="two">
				<div class="container">
					<div>
						<a href="${pageContext.request.contextPath}/questionInsert?member_no=${q.member_no}">글쓰기</a>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="${pageContext.request.contextPath}/home">HOME</a>
					</div>
					<div class="col-md-6-col-md-offset-3">
					<form role="form" action="${pageContext.request.contextPath}/questionList" method = "GET" style="margin:0; padding:0;"> 
						<div class="form-group">
						<label for="category">카테고리</label>
							<select class="form-control" name="search">
								<option>전체</option>
								<option value="question_title">제목</option>
								<option value="question_content">내용</option>	
							</select>
						</div>
						<div class="form-group">
							<label for="searckWord">검색</label>
							<input class="form-control" type="text" name="searchValue">
						</div>
						<div>
							<button class="btn btn-primary btn-sm">검색</button>
						</div>
						<%-- <P style="margin:0; padding:0;">
							<input type="hidden" name="questionCd" value="${question}"/>
							<input type="text" name="searchWord" size="5" maxlength="">
							<input type="submit" value="검색"/>
						</p> --%>
					</form>
					</div>
					
						<table class="table table-condensed">
							<thead>
								<tr>
									<th>질문 번호</th>
									<th>회원 번호</th>
									<th>트레이너 번호</th>
									<th>질문 제목</th>
									<th>등록 일자</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="q" items="${list}">
									<tr>
										<td>${q.question_no}</td>
										<td>${q.member_no}</td>
										<td>${q.trainer_no}</td>
										<td><a href="${pageContext.request.contextPath}/questionDetail?question_no=${q.question_no}">${q.question_title}</a></td>
										<td>${q.question_date}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						</div>
					</section>
				</div>
			<button type="button" class="btn btn-info" onclick="window.location.href='/home'">HOME<i class="fa fa-check spaceLeft"></i></button>
			</div>
		</div>
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>