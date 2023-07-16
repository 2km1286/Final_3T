<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>로그인화면</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
<!-- Google Fonts Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
<!-- MDB -->
<link rel="stylesheet" href="css/mdb.min.css" />

</head>
<body>

	<section class="gradient-form" style="background-color: #eee; height: 100%;">
		<div class="container py-5">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-xl-10">
					<div class="card rounded-3 text-black">
						<div class="row g-0">
							<div class="col-lg-6">
								<div class="card-body p-md-5 mx-md-4">

									<div class="text-center">
										<img
											src="./images/logo_transparent.png"
											style="width: 50%;" >
										<h3 class="mt-1 mb-5">로그인</h3>
									</div>

									<form>

										<div class="form-outline mb-4">
											<input type="email" id="form2Example11" class="form-control"
												placeholder="아이디를 입력해주세요" /> <label
												class="form-label" for="form2Example11">아이디</label>
										</div>

										<div class="form-outline mb-4">
											<input type="password" id="form2Example22"
												class="form-control" placeholder="비밀번호를 입력해주세요"/> 
												<label class="form-label"
												for="form2Example22">비밀번호</label>
										</div>

										<div class="text-center pt-1 mb-5 pb-1">
											<button
												class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"
												type="button">로그인</button>
											<a class="me-5 ml-5" href="" style="font-size: small;">아이디를 잊으셨나요?</a>
											
											<a class="ml-5 mr-5" href="" style="font-size: small;">비밀번호를 잊으셨나요?</a>
										</div>

										<div
											class="d-flex align-items-center justify-content-center pb-4">
											<p class="mb-0 me-2">계정이 없으신가요?</p>
											<button type="button" class="btn btn-outline-danger">회원가입 하기</button>
										</div>

									</form>

								</div>
							</div>
							<div class="col-lg-6 d-flex align-items-center gradient-custom-2">
								<div class="text-center px-3 py-4 p-md-5 mx-md-4">
									<h4 class="mb-4 text-muted" style="font-weight: bold;">당신의 반려견을 더 행복하게</h4>
									<img src="./images/loginhugdog.png" style="width: 130%;">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
</body>
<script type="text/javascript" src="js/mdb.min.js"></script>
</html>