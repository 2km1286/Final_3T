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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>대리산책 폼 구성</title>
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

<!-- py-5 mx-auto -->
<div class="container py-5 mx-auto">
	<h2 class="mb-4" style="margin:40px 20px 40px 225px;">대리산책 시험 결과</h2>
		<div class="row">
			<div class="col-lg-6">
				<div class="card" style="width: 50rem; height: 550px; margin:40px 20px 40px 225px;">
				<!-- <img  src="./images/alert.png" height="50px;" style="width: 70rem; height: 350px;"> -->
				<img class="card-img-top text-center" src="./images/cong.png" style="height: 390px;">
				<!-- <img src="./images/cong.png" class=""> -->
					<div class="card-body">
						<h5 class="card-title text-center">강쥐님</h5>
						<p class="card-text text-center">테스트 결과 : 100</p>
						<!-- <a href="#" class="btn btn-warning">약관동의 보러가기</a> -->
						<div class="d-flex justify-content-center">
						<button type="button" class="btn btn-warning">공고글 등록하러가기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>

</body>
<script type="text/javascript" src="js/mdb.min.js"></script>
</html>