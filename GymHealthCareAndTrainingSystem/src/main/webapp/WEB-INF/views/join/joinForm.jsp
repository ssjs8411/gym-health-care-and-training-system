<!-- 18.09.28 최지수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<title>joinForm</title>
		
		<!-- Bootstrap -->
		<link href="resources/css/bootstrap.min.css" rel="stylesheet">
		<!-- font awesome -->
		<link rel="stylesheet" href="resources/css/font-awesome.min.css">
		<!-- Custom style -->
		<link rel="stylesheet" href="resources/css/style.css">
		
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="resources/js/bootstrap.min.js"></script>
	</head>
	<body>
		<article class="container">
			<div class="page-header">
				<h1>회원가입</h1>
			</div>
			<div class="col-md-6 col-md-offset-3">
				<form role="form" action="${pageContext.request.contextPath}/AddJoin" method="POST">
					<div class="form-group">
						<label for="username">헬스장 선택</label>
						<select name="healthclubs_no">
							<c:forEach var="h" items="${list}">
							<option value="${h.healthclubs_no}">${h.healthclubs_name}</option>
							</c:forEach>
						</select>
					</div>
	
					<div class="form-group">
						<label for="username">아이디</label>
						<input type="text" class="form-control" name="member_id">
					</div>
	
					<div class="form-group">
						<label for="username">비밀번호</label>
						<input type="text" class="form-control" name="member_pw">
					</div>
	
					<div class="form-group">
						<label for="username">이름</label>
						<input type="text" class="form-control" name="member_name">
					</div>
	
					<div class="form-group">
						<label for="username">성별</label>
						<input type="radio" name="member_gender" value="여">여 
						<input type="radio" name="member_gender" value="남">남
					</div>
	
					<div class="form-group">
						<label for="username">주소</label>
						<input type="text" class="form-control" name="member_address">
					</div>
	
					<div class="form-group">
						<label for="username">전화번호</label>
						<input type="text" class="form-control" name="member_phone">
					</div>
	
					<div class="form-group">
						<label for="username">생년월일</label>
						<input type="date" class="form-control" name="member_birthday">
					</div>
	
					<div class="form-group">
						<label for="username">이메일</label>
						<input type="text" class="form-control" name="member_email">
					</div>
	
					<div class="form-group">
						<label for="username">키</label>
						<input type="text" class="form-control" name="member_tall">
					</div>
	
					<div class="form-group">
						<label for="username">몸무게</label>
						<input type="text" class="form-control" name="member_weight">
					</div>
	
					<div class="form-group">
						<label for="username">목표 몸무게</label>
						<input type="text" class="form-control" name="member_goal_weight">
					</div>
	
					<div class="form-group text-center">
						<button type="submit" class="btn btn-info">
							회원가입<i class="fa fa-check spaceLeft"></i>
						</button>
						<button type="button" class="btn btn-warning" onclick="window.location.href='/chgs8411/'">
							가입취소<i class="fa fa-times spaceLeft"></i>
						</button>
						<input type="reset" class="btn btn-danger" value="초기화">
					</div>
				</form>
			</div>
		</article>
	</body>
</html>