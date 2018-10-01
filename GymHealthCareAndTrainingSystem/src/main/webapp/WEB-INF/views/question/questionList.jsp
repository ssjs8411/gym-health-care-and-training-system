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
		<!-- 
		질문 번호
		회원 번호
		트레이너 번호
		질문 제목
		질문 내용
		등록 일시
	-->
		<!-- 여기에 채워 넣어 주세요 -->
		<%
	
			
		
		%>
		<div id="main">
		<div class="container">
		<h1>질문 목록</h1>
		<table>
			<thead>
				<tr>
					<th>질문 번호</th>
					<th>회원 번호</th>
					<th>트레이너 번호</th>
					<th>질문 제목</th>
					<!-- <th>질문 내용</th> -->
					<th>등록 일자</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="q" items="${list}">
				<tr>
					<td>${q.question_no}</td>
					<td>${q.member_no}</td>
					<td>${q.trainer_no}</td>
					<td>${q.question_title}</td>
					<%-- <td>${q.question_content}</td> --%>
					<td>${q.question_date}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
		</div>
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>