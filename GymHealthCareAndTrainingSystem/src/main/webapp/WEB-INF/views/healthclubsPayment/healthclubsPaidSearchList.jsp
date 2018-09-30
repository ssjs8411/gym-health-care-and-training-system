<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>heatlhclubsPaidSearchList</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body class="is-preload">
		<!-- header include -->
		<jsp:include page="/WEB-INF/views/module/header.jsp"></jsp:include>
		
		<!-- 여기에 채워 넣어 주세요 -->
		<div id="main">
			<section id="top">
				<div class="container">
					<h1>헬스장 이용권 환불 현황 검색</h1><br>
						<form role="form" action="${pageContext.request.contextPath}/healthclubsPaidSearchList" method="post">

							<select class="form-control" name = "searchKey">
								<option value="g_code">상품코드</option>
								<option value="u_id">아이디</option>
								<option value="g_name">상품명</option>
								<option value="g_cate">카테고리</option>
								<option value="g_price">가격</option>
								<option value="g_color">색상</option>
								<option value="g_size">사이즈</option>
								<option value="g_date">날짜</option>
								<option value="g_desc">상세설명</option>
							</select>

							
							<input type = "text" name = "searchValue">
							
							<input type = "submit" value = "검색">
						</form>
						
					<table>
						<thead>
							<tr>
								<td>1</td>
								<td>2</td>
								<td>3</td>
							</tr>
						</thead>
							<tr>
								<td>4</td>
								<td>5</td>
								<td>6</td>
							</tr>
						<tbody>
						</tbody>
							<tr>
								<td>7</td>
								<td>8</td>
								<td>9</td>
							</tr>
						<tfoot>
						</tfoot>
					</table>
						
				</div>
			</section>
		</div>
		
		<!-- footer Include -->
		<jsp:include page="/WEB-INF/views/module/footer.jsp"></jsp:include>
	</body>
</html>