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
<title>펫시팅 자격시험 테스트 통과</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
<!-- Google Fonts Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
<!-- icon -->
<link href="https://cdn.jsdelivr.net/npm/@mdi/font/css/materialdesignicons.min.css" rel="stylesheet">
<!-- MDB -->
<link rel="stylesheet" href="css/mdb.min.css" />

</head>
<body>

<div class="container py-5 mx-auto">
	<h2 class="mb-4" style="margin:40px 20px 40px 225px;">펫시팅 시험 결과</h2>
		<div class="card" style="width: 50rem; height: 650px; margin:40px 20px 40px 225px;">
			<img class="card-img-top text-center" src="./images/im1.png" style="height: 400px;">
				<div class="card-body">
					<h4 class="mb-4" style="text-align: center;">펫시터의 위상이 되신것을 축하드립니다!</h4><br>
					<h5 class="card-title text-center">강쥐님</h5>
					<!-- <p class="card-text text-center">테스트 결과 : 100</p> -->
					<h5 class="card-title text-center">테스트 결과 : 100</h5>
					<br>
						<div class="d-flex justify-content-center">
							<button type="button" class="btn btn-warning">공간글 등록하러가기</button>
						</div>
				</div>
		</div>
</div> <!-- close .container py-5  -->



</body>
</html>