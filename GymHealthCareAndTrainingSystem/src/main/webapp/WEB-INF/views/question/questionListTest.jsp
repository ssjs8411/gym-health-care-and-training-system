<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 페이징 테스트 파일 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/Libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	function page(idx) {
		var pageNum = idx;
		var contentNum = $("contentNum option:selected").val();
		location.href="${pageContext.request.contextPath}/questionListTest?pageNum="pageNum+"&contentNum="+contentNum";
		
	}
</script>
</head>
<body>
	<select name="contentNum" id="contentNum">
		<option value="10">10</option>
		<option value="20">20</option>
		<option value="30">30</option>
	</select>
	<table>
		<thead>
			<tr>
				<th>질문 번호</th>
				<th>회원 번호</th>
				<th>트레이너 번호</th>
				<th>질문 제목</th>
				<th>등록 일자</th>
				<th>수정</th>
				<th>삭제</th>
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
					<td><a href="${pageContext.request.contextPath}/questionUpdate?question_no=${q.question_no}">수정</a></td>
					<td><a href="${pageContext.request.contextPath}/questionDelete?question_no=${q.question_no}">삭제</a></td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">
					<c:if test ="${page.prev}">
						<a style="text-decoration : none;" href="javascript.page(${page.getStartPage()-1})">&laquo;</a>
					</c:if>
					<c:forEach	begin="${page.getStartPage()}" end="${page.getEndPage()}" var="idx">
						<a style="text-decoration : none;" href="javascript.page(${idx});">${idx}</a>
					</c:forEach>
					
					<c:if test ="${page.next}">
						<a style="text-decoration : none;" href="javascript.page(${page.getEndPage()-1})">&raquo;</a>
					</c:if>
				</td>
			</tr>
		</tfoot>
	</table>
</body>
</html>