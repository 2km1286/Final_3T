<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath(); 
%>
<%
	String memSid = (String)session.getAttribute("memSid"); // 최초 요청시 "0"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펫시터 시험 페이지</title>

<style>

*{font-family: "Jua";}

.question {
	font-size: 1.2rem;
	margin-bottom: 20px;
}

 .btn-group {
    display: flex;
    justify-content: center;
    margin: 10px 0;
}
.btn-group button {
    width: 0px; /* 버튼의 크기 조절 */
    height: 30px; /* 버튼의 높이 조절 */
    font-size: 16px; /* 텍스트 크기 조절 */
    font-weight: bold;
    margin: 0 5px;
    margin-left: 260px;
    margin-right: 260px;
}

.button-container {
  display: flex;
  justify-content: center;
}

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
				<h1 class="text-center mb-4">펫시터 시험 문제</h1>
				
			<form id="quizForm" action="submitQuiz.action" method="post">
				<c:forEach var="dto" items="${questionSittingList}" varStatus="status">
					<div class="card question-container">
						<input type="hidden" class="user-answer" name="userAnswer${status.index}" value="">
						<br> 
						<div class="question text-center">
							<h3>문제 ${status.index + 1}</h3>
							<h4>${dto.stbquestion}</h4>
						</div>
						<div class="btn-group">
							<button type="button" class="btn btn-success answer-btn" onclick="setAnswer(${status.index}, 'O')">O</button>
							<button type="button" class="btn btn-danger answer-btn" onclick="setAnswer(${status.index}, 'X')">X</button>
						</div>
					</div>
					<br>
					<br>
				</c:forEach>

				<input type="hidden" id="answers" name="answers">
				<div class="button-container">
					<button type="button" class="btn btn-success test-btn"
						style="width: 130px; font-size: 1.2rem;" onclick="submitQuiz();">제출하기</button>
				</div>
				<br>
				<br>

			</form>
		</div>	
	</div>
		
		<section>
		<c:import url="/WEB-INF/components/index/FooterForm.jsp">
		</c:import>
	</section>
	
	<script>
		
	
	function setAnswer(index, answer) 
	{
		document.querySelectorAll('.user-answer')[index].value = answer;
	}

	function submitQuiz() 
	{
		var answers = [];
		document.querySelectorAll('.user-answer').forEach(function(input) 
		{
			answers.push(input.value);
		});
		
		document.getElementById('answers').value = answers.join(',');
		document.getElementById('quizForm').submit(); 	/* 폼 서브밋  */
	}
		
		
	</script>
	
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>