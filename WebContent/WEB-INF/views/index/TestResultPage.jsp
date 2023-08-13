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
<!-- MDB -->
<link rel="stylesheet" href="css/mdb.min.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<style>

*{font-family: "Jua";}

</style>

<script type="text/javascript">
	
	$().click(function()
	{
		$(".place-btn").click(function()
		{
			window.location.href="registerspinfoform.action";
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
		<div class="container py-5 mx-auto" style="margin-right: 250px;">
			<h1 class="mb-4 text-center">펫시터 시험 결과</h1>
			<div class="card"
				style="width: 50rem; height: 650px; margin: 40px 20px 40px 195px;">
				<img class="card-img-top text-center" src="./images/petsitter.jpg"
					style="height: 400px;">
				<div class="card-body">
					<h4 class="mb-4" style="text-align: center;">펫시터의 위상이 되신것을
						축하드립니다!</h4>
					<br>
					<h5 class="card-title text-center" style="margin-top: -10px;">cutedog님</h5>
					<h4 class="card-text text-center">테스트 결과 : 100</h4>
					<br>
					
					<div class="d-flex justify-content-center" style="margin-top: -10px;">
						<button type="button" class="btn btn-success place-btn">돌봄장소 등록하러가기</button>
					</div>
					
					 
					<!-- 대리산책러라면
					<div class="d-flex justify-content-center" style="margin-top: -10px;">
						<button type="button" class="btn btn-success place-btn">공고글 등록하러가기</button>
					</div> -->
										
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
<script type="text/javascript" src="js/mdb.min.js"></script>
</html>