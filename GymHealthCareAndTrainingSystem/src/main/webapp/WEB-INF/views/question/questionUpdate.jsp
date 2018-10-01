<!-- 김소희 2018-10-01 / questionUpdate.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.cafe24.chgs8411.question.service.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>questionUpdate</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		
		<!-- 여기에 채워 넣어 주세요 -->
		<!-- 
		question_no
		member_no
		trainer_no
		question_title
		question_content
		question_date
		 -->
		<% 
		
			String memberNo = request.getParameter("member_no");
			if(memberNo == null){
				memberNo="0";
			}
			int member_no = Integer.parseInt(memberNo);
			
			String trainerNo = request.getParameter("trainer_no");
			if(trainerNo == null){
				trainerNo="0";
			}
			int trainer_no = Integer.parseInt(trainerNo);
			
			Question question = new Question();
			
			String question_title = null;
			String question_content = null;
			
		%>
		<%-- <h1>질문 수정</h1>
		<form action="${pageContext.request.contextPath}/questionUpdate" method="POST">
			<div>
			 	작성자 : 
			 	<input type="text" name="member_no" value= "<%= member_no %>" readonly>
			</div>
			<div>
				트레이너 : 
				<input type="text" name="member_no" value= "<%= trainer_no %>">
			</div>
			<div>
				제목 :
				<input type="text" name="question_title" value= "<%= question_title %>">
			</div>
			<div>
				내용 :
				<textarea name="question_content" rows="10" cols="10" value= "<%= question_content %>"></textarea>
			</div>
			<div>
				<button type="submit">수정</button>
			</div> 
		</form> --%>
		
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>