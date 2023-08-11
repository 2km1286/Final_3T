<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RecommendForm.jsp</title>
<link rel="stylesheet" type="text/css" href="css/mdb.min.css">
<style>
.container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.rec {
	flex: 0 0 25rem;
	height: 550px;
}
</style>
</head>
<body>
	<div class="container">
	<h2 class="card-header text-center">지원해보세요 !</h2><hr>
		<div class="card rec">
			<img src="./images/welcome-walk.png"
				class="card-img-top hover-shadow" alt="Los Angeles Skyscrapers" />
			<div class="card-body">
				<h5 class="card-title">대리산책러 지원해보기</h5>
				<p class="card-text">
					대리산책러가 되어서 다양한 강아지들과 산책해보세요! 귀여운 강아지들과 친구가 될 수 있어요
				</p>
			</div>

		</div>
		<div class="card rec">
			<img src="./images/welcome-petsitter.png"
				class="card-img-top hover-shadow" alt="Palm Springs Road" />
			<div class="card-body">
				<h5 class="card-title">펫시터 지원해보기</h5>
				<p class="card-text">
					펫시터가 되어서 다양한 강아지들을 돌봐주세요! <br /> 귀여운 강아지들을 맡아주고 수익도 실현 할 수 있습니다!
				</p>
			</div>
		</div>
	</div>
</body>
</html>
