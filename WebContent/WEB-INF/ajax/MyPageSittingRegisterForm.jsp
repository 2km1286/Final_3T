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

<title>마이페이지_펫시팅_펫시터 지원하도록</title>

<!-- 돌봄장소 이미지 넘기는 스크립트 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-a5z8pA2+zN2T0LdZ6AO3bBq4wuvhs1YLC3E/p6hcaV9w1dt7E/PxI2fYve2IqcO3"
	crossorigin="anonymous"></script>

<script type="text/javascript">
	$(function()
	{
		// 돌봄장소 변경하기를 누르면

		// 돌봄장소 수정하기를 누르면
		$("#updateSPInfo").click(function()
		{
			
			
			$.ajax(
			{
				type : "POST",
				url : "updatespinfoform.action",
				async : true,
				success : function(data)
				{
					$("#sittingPlaceDiv").html(data);

				},
				error : function(e)
				{
					alert(e.responseText);
				}

			});

		});

		

	});
</script>

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

</style>
</head>
<body>
	<div class="row" id="sittingPlaceDiv">
		<div class="card">
			<div class="card-title">
				펫시터 지원하러 가기
			</div>
		</div>
	</div>
	<!-- 1행 끝 -->


</body>
</html>




