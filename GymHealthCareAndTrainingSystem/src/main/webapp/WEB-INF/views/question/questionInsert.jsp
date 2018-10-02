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
		<div id="main">
			<section id="top" class="two">
				<div class="container">
				<h1>질문 등록</h1>
					<div class="col-md-6 col-md-offset-3">
						<form role="form "action="${pageContext.request.contextPath}/questionInsert" method="POST">
							<div class="form-group">
								<label>작성자</label>
							 	<input type="text" name="member_no" value="<%=question.getMember_no()%>" required>
							</div>
							<div class="form-group">
								<label>트레이너 </label>
								<input type="text" name="member_no" value="<%=question.getTrainer_no()%>" required>
							</div>
							<div class="form-group">
								<label>제목</label>
								<input type="text" name="question_title" placeholder="제목" required>
							</div>
							<div class="form-group">
								<label>내용</label>
								<textarea name="question_content" rows="10" cols="10" placeholder="내용을 입력해주세요" required></textarea>
							</div>
							<div>
								<button type="submit" class="btn btn-info">확인<i class="fa fa-check spaceLeft"></i></button>
							</div>
						</form>
					</div>
				</div>
			</section>
		</div>
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>