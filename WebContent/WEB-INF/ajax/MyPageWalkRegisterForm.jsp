<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="./images/logo_transparent.png" />
<meta charset="UTF-8">

<title>마이페이지_대리산책 지원하도록</title>

<!-- 돌봄장소 이미지 넘기는 스크립트 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-a5z8pA2+zN2T0LdZ6AO3bBq4wuvhs1YLC3E/p6hcaV9w1dt7E/PxI2fYve2IqcO3"
	crossorigin="anonymous"></script>


<style type="text/css">
.place {
	padding: 20px; /* 테두리와 요소들 사이의 간격 조정 */
	border-right: 2px solid black;
}

.carousel-control-prev, .carousel-control-next {
	background-color: transparent; /* 배경색 투명으로 설정 */
	border: none; /* 테두리 제거 */
}

.sittingtime {
	font-size: 13pt;
}

.mypageWalkMonDon {
	margin-left: 500px;
}

.firstInfo {
	font-size: 15pt;
	font-weight: bold;
	color: #2dd0fc;
}

.container-mypage {
	width: 300px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	text-align: center;
	height: 100px; /* 뷰포트 높이를 기준으로 컨테이너의 높이 설정 */
	margin: 0 auto;
}

.card {
	max-width: 300px;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

#sittingPlaceDiv {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 300px;
	margin: 0;
}

.card-title {
	font-size: 18pt;
	transition: color 0.3s ease-in-out;
}

.card-title:hover {
	color: #4caf50;
}

.test {
            cursor: pointer;
}
</style>
</head>
<body>
	<div class="row" id="walkDiv"
		style="display: flex; justify-content: center; align-items: center; min-height: 300px; margin: 0;">
		<div class="col-md-4 container-mypage">
			<div class="card-title">
			<div class="test" onclick="sittingTest()">대리산책 지원하러 가기</div>
			</div>
		</div>
	</div>

<script>
			function sittingTest()
			{
				window.location.href = "walktest.action";
			}
</script>




</body>
</html>




