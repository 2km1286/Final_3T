<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath(); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대리산책러 시험 페이지</title>

<style>

*{font-family: "Jua";}

</style>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
</head>
<body>

<section>
		<c:import url="/WEB-INF/components/index/HeaderForm.jsp">
		</c:import>
	</section>
	
		<div class="bg-light">
			<div class="container quiz-container" style="width: 950px;">
				<br>
				<h1 class="text-center mb-4">대리산책러 시험 문제</h1>
				
				<c:forEach var = "dto" items="${questionList }">
				<div class="card">
					<br>
					<div class="question text-center">
						<h3>문제 1.</h3>
						<h4>${dto.wtbquestion }</h4>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-success answer-btn">O</button>
						<button type="button" class="btn btn-danger answer-btn">X</button>
					</div>
				</div>
				</c:forEach>
				
				
			</div>
			<br>

		<div class="button-container">
			<button type="button" class="btn btn-success test-btn" style="width: 130px; font-size: 1.2rem;">제출하기</button>
		</div>
		<br><br>
	</div>
		
		<section>
		<c:import url="/WEB-INF/components/index/FooterForm.jsp">
		</c:import>
	</section>
		
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>