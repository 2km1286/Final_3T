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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>펫시터 자격시험 테스트 통과</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
<!-- Google Fonts Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
<link rel="stylesheet" href="css/bootstrap.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<style>

*{font-family: "Jua";}

</style>

<script type="text/javascript">
	
	
	$().click(function()
	{
		
		
		
	});
	
	function goMainPage()
	{
		window.location.href="mainpage.action";
	}
	
	function goMyPage()
	{
		window.location.href="mypage.action?flag=4";

	}
	
</script>

</head>
<body>
<section>
	<c:import url="/WEB-INF/components/index/HeaderForm.jsp">
	</c:import>
</section>

	<div class="bg-light">
		<div class="container py-5 mx-auto" style="margin-right: 250px;">
			<h1 class="mb-4 text-center">펫시터 시험 결과</h1>
			<div class="card"
				style="width: 50rem; height: 780px; margin: 40px 20px 40px 195px;">
				<img class="card-img-top text-center" src="./images/petsitter.jpg"
					style="height: 400px;">
				
				<c:choose>
					<c:when test="${passed}">
						<br>
						<div class="text-center">
							<h1>${nickName}님,합격하셨습니다!</h1>
							<h2>펫시터의 위상이 되신것을 축하드립니다!</h2>
						</div>
					</c:when>
					<c:otherwise>
						<div class="text-center">
							<h1>${nickName}님,불합격하셨습니다.</h1>
							<h2>다음에 또 도전해주세요!</h2>
						</div>
					</c:otherwise>
				</c:choose>

				<div class="card-body">
					<!-- <h4 class="mb-4" style="text-align: center;">펫시터의 위상이 되신것을 축하드립니다!</h4> -->
					<br>
					<h4 class="card-title text-center">${nickName}님</h4>
					<h4 class="card-text text-center">테스트 결과 : ${totalScore}</h4>
					<br>
					
					<div class="d-flex justify-content-center" style="margin-top: -10px;">
					<c:choose>
					<c:when test="${passed}">
						<button type="button" class="btn btn-success place-btn" id="placebtn" onclick="goMyPage()">돌봄장소 등록하러가기</button>
						</c:when>
						<c:otherwise>
						<button type="button" class="btn btn-success place-btn" id="goMainPage" onclick="goMainPage()">메인으로 가기</button>
						</c:otherwise>
						</c:choose>
					</div>
										
					<br>
					<br>
				</div>

			</div>
		</div>
	</div>

	<section>
		<c:import url="/WEB-INF/components/index/FooterForm.jsp">
		</c:import>
	</section>

</body>
</html>