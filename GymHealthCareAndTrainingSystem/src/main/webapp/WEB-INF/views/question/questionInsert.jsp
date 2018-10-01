<!-- 김소희 2018-09-28 / questionInsert.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.cafe24.chgs8411.question.service.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>questionInsert</title>
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
				
			Question question = new Question();			// 객체 생성
		%>
		
		<h1>질문 등록</h1>
		<form action="${pageContext.request.contextPath}/questionInsert" method="POST">
			<div>
			 	작성자 : <%=question.getMember_no()%>	
			</div>
			<div>
				트레이너 : <%=question.getTrainer_no()%>
			</div>
			<div>
				제목 :
				<input type="text" name="question_title" placeholder="제목" required>
			</div>
			<div>
				내용 :
				<textarea name="question_content" rows="10" cols="10" placeholder="내용을 입력해주세요" required></textarea>
			</div>
			<div>
				<button type="submit">확인</button>
			</div>
		</form>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>