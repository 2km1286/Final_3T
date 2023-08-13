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

<script type="text/javascript">
	
	$().ready(function()
	{
		$(".test-btn").click(function()
		{
			window.location.href="sittingresultform.action";
		});	
	});
	
	
</script>

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
				<div class="card">
					<br>
					<div class="question text-center">
						<h3>문제 1.</h3>
						<h4>강아지는 항상 사람이 좋아하는 냄새를 좋아한다.</h4>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-success answer-btn">O</button>
						<button type="button" class="btn btn-danger answer-btn">X</button>
					</div>
				</div>
			</div>
			<br>
			<div class="container quiz-container" style="width: 950px;;">
				<div class="card">
					<br>
					<div class="question text-center">
						<h3>문제 2.</h3>
						<h4>강아지는 젖니가 나올 때 아플 수 있다. </h4>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-success answer-btn">O</button>
						<button type="button" class="btn btn-danger answer-btn">X</button>
					</div>
				</div>
			</div>
			<br>
			<div class="container quiz-container" style="width: 950px;;">
				<div class="card">
					<br>
					<div class="question text-center">
						<h3>문제 3.</h3>
						<h4>강아지에게 초콜릿을 먹이는 것은 안전하다.</h4>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-success answer-btn">O</button>
						<button type="button" class="btn btn-danger answer-btn">X</button>
					</div>
				</div>
			</div>
			<br>
			<div class="container quiz-container" style="width: 950px;;">
				<div class="card">
					<br>
					<div class="question text-center">
						<h3>문제 4.</h3>
						<h4>강아지는 더위를 잘 견디지 못한다.</h4>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-success answer-btn">O</button>
						<button type="button" class="btn btn-danger answer-btn">X</button>
					</div>
				</div>
			</div>
			<br>
			<div class="container quiz-container" style="width: 950px;">
				<div class="card">
					<br>
					<div class="question text-center">
						<h3>문제 5.</h3>
						<h4>강아지는 매일 산책이 필요하다.</h4>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-success answer-btn">O</button>
						<button type="button" class="btn btn-danger answer-btn">X</button>
					</div>
				</div>
			</div>
			<br>
			<div class="container quiz-container" style="width: 950px;">
				<div class="card">
					<br>
					<div class="question text-center">
						<h3>문제 6.</h3>
						<h4>강아지는 항상 사람의 감정을 이해한다. </h4>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-success answer-btn">O</button>
						<button type="button" class="btn btn-danger answer-btn">X</button>
					</div>
				</div>
			</div>
			<br>
			<div class="container quiz-container" style="width: 950px;">
				<div class="card">
					<br>
					<div class="question text-center">
						<h3>문제 7.</h3>
						<h4>강아지는 온순한 품종이라면 아무리 크더라도 어린 아이와 안전하게 지낼 수 있다.</h4>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-success answer-btn">O</button>
						<button type="button" class="btn btn-danger answer-btn">X</button>
					</div>
				</div>
			</div>
			<br>
			<div class="container quiz-container" style="width: 950px;">
				<div class="card">
					<br>
					<div class="question text-center">
						<h3>문제 8.</h3>
						<h4>강아지의 코가 뜨거워도 반드시 아픈 것은 아니다.</h4>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-success answer-btn">O</button>
						<button type="button" class="btn btn-danger answer-btn">X</button>
					</div>
				</div>
			</div>
			<br>
			<div class="container quiz-container" style="width: 950px;">
				<div class="card">
					<br>
					<div class="question text-center">
						<h3>문제 9.</h3>
						<h4>강아지는 온순한 품종이라면 아무리 크더라도 어린 아이와 안전하게 지낼 수 있다.</h4>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-success answer-btn">O</button>
						<button type="button" class="btn btn-danger answer-btn">X</button>
					</div>
				</div>
			</div>
			<br>
			<div class="container quiz-container" style="width: 950px;">
				<div class="card">
					<br>
					<div class="question text-center">
						<h3>문제 10.</h3>
						<h4>강아지는 모든 종류의 채소를 먹을 수 있다.</h4>
					</div>
					<div class="btn-group">
						<button type="button" class="btn btn-success answer-btn">O</button>
						<button type="button" class="btn btn-danger answer-btn">X</button>
					</div>
				</div>
			</div>
			<br>
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