<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<%
	String memSid = (String) session.getAttribute("memSid"); // 최초요청시 null
String memNickName = (String) session.getAttribute("memNickName"); // 최초요청시 null

if (memSid == null) {
	memSid = "0";
	session.setAttribute("memSid", memSid);
}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="./images/logo_transparent.png" />

<meta charset="UTF-8">
<title>Main</title>

<!-- slider stylesheet -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

<!-- fonts style -->
<link
	href="https://fonts.googleapis.com/css?family=Dosis:400,500|Poppins:400,700&display=swap"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet" />
<!-- responsive style -->
<link href="css/responsive.css" rel="stylesheet" />

<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>



</head>
<body>

	<c:import url="/WEB-INF/components/index/HeaderForm.jsp">

	</c:import>
	<section>
		<div>
			<c:import url="/WEB-INF/components/index/DefaultMainForm.jsp"></c:import>
		</div>
	</section>
	<section>
		<div>
			<c:import url="/WEB-INF/components/index/BestListForm.jsp">
			</c:import>
		</div>
	</section>
	<section>
		<div>
			<c:import url="/WEB-INF/components/index/FooterForm.jsp">
			</c:import>
		</div>
	</section>

	<!-- 기배 Modal 시작 ( 대리산책 펫시터 기록 X ) -->
	<div class="modal fade" id="initialModal1" tabindex="-1" role="dialog"
		aria-labelledby="initialModalLabel1" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title" id="initialModalLabel">지원해보세요!</h2>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<div class="card rec">
									<img src="./images/welcome-walk.png"
										class="card-img-top hover-shadow"
										alt="Los Angeles Skyscrapers" />
									<div class="card-body">
										<h3 class="card-title">대리산책러 지원해보기</h3>
										<p class="card-text">대리산책러가 되어서 다양한 강아지들과 산책해보세요! 귀여운
											강아지들과 친구가 될 수 있어요.</p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="card rec">
									<img src="./images/welcome-petsitter.png"
										class="card-img-top hover-shadow" alt="Palm Springs Road" />
									<div class="card-body">
										<h3 class="card-title">펫시터 지원해보기</h3>
										<p class="card-text">
											펫시터가 되어서 다양한 강아지들을 돌봐주세요! <br /> 귀여운 강아지들과 친구가 될 수 있어요.
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 기배 Modal 끝 -->

	<!-- 기배 Modal 시작 ( 대리산책 타임라인 종료 횟수 > 펫시터 타임라인 종료 횟수 ) -->
	<div class="modal fade" id="initialModal2" tabindex="-1" role="dialog"
		aria-labelledby="initialModalLabel2" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title" id="initialModalLabel">나의 대리산책 페이지</h2>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container-mypage">
						<div class="row">
							<div class="col-md-6">
								<!-- 1행 1열 시작 -->
								<h3>
									<span class="badge">맡겨보개 회원분포지도</span>
								</h3>
								<div style="float: left; margin-left: 20px;">
									<div id="map" style="width: 100%; height: 100%;"></div>
								</div>
								<div style="float: left;">
									<div class="moneyReview" style="margin-left: 15px;">
										<div class="mypageWalkMonDon">
											<h3>
												<span class="badge">수익</span>
											</h3>
											<p id="totalEarningsValue" class="superscript">이번달 총 수익</p>
											<h4>
												<span id="totalEarningsLabel">1,000,000 원</span>
											</h4>
										</div>

										<div>
											<h3>
												<span class="badge">후기</span>
											</h3>
											4.8 ⭐ (40개의 후기)
										</div>
									</div>
								</div>
							</div>
							<!-- 1행 1열 끝 -->
							<div class="col-md-6">

								<h3>
									<span class="badge">내 프로필(대리산책러)</span>
								</h3>

								<div class="card profil">

									<div class="row g-0">
										<div class="col-md-4">
											<img src="images/client.jpg" class="img-fluid rounded-start"
												alt="프로필이미지">
										</div>
										<div class="col-md-8 cardInfo">
											<div class="card-body">
												<div class="oneText">
													<span class="card-text"><small class="text-muted">프로산책러</small></span><br>
													<span class="nick card-text">폴폴이</span>
												</div>
												<span class="card-text">4.8 ⭐ (40개의 후기)</span>
											</div>
											<div class="porfilSu">
												<small class="text-muted ">알람</small>&nbsp;&nbsp;&nbsp; <small
													class="text-muted">후기</small>&nbsp;&nbsp;&nbsp; <small
													class="text-muted">팔로잉</small><br> <span>1건</span>&nbsp;&nbsp;&nbsp;
												<span>30건</span>&nbsp;&nbsp;&nbsp; <span>5건</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-6">

								<h3>
									<span class="badge">확정된 예약</span>
								</h3>

								<div class="card">
									<div class="card-header d-flex justify-content-between"">
										대리산책
										<button type="button" class="detailBtn">자세히보러가기</button>
									</div>
									<div class="row g-0">
										<div class="col-md cardInfo">
											<div class="card-body">
												<div class="oneText">
													<span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
													<span class="card-text" style="font-size: 14pt;">2023-08-04
														14:00 ~ 2023-08-05 16:00</span>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="card">
									<div class="card-header d-flex justify-content-between"">
										대리산책
										<button type="button" class="detailBtn">자세히보러가기</button>
									</div>
									<div class="row g-0">
										<div class="col-md cardInfo">
											<div class="card-body">
												<div class="oneText">
													<span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
													<span class="card-text" style="font-size: 14pt;">2023-08-04
														14:00 ~ 2023-08-05 16:00</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 기배 Modal 끝 -->

	<!-- 기배 Modal 시작 ( 대리산책 타임라인 종료 횟수 < 펫시터 타임라인 종료 횟수 ) -->
	<div class="modal fade" id="initialModal3" tabindex="-1" role="dialog"
		aria-labelledby="initialModalLabel3" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title" id="initialModalLabel">나의 펫시팅 페이지 기록</h2>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container-mypage">
						<div class="row">
							<div class="col-md-6">
								<!-- 1행 1열 시작 -->
								<h3>
									<span class="badge">내 돌봄장소</span>
								</h3>
								<div class="row">
									<div class="col-md-6">
										<h2>
											<span class="badge">핫도그님의 돌봄장소</span>
										</h2>
									</div>
									<div class="col-md-6">
										<h3>
											<span class="badge">팔로워 5명</span>
										</h3>
									</div>
								</div>
								<div style="float: left; margin-left: 20px;">
									<!-- 돌봄장소 슬라이드 사진 시작 -->
									<div id="carouselExample" class="carousel slide"
										style="width: 600px;">
										<div class="carousel-inner">
											<div class="carousel-item active">
												<img src="images/sitterroom.jpg" class="d-block w-100"
													alt="...">
											</div>
											<div class="carousel-item">
												<img
													src="https://mdbcdn.b-cdn.net/img/Photos/Slides/img%20(22).webp"
													class="d-block w-100" alt="...">
											</div>
											<div class="carousel-item">
												<img
													src="https://mdbcdn.b-cdn.net/img/Photos/Slides/img%20(23).webp"
													class="d-block w-100" alt="...">
											</div>
										</div>
										<button class="carousel-control-prev" type="button"
											data-bs-target="#carouselExample" data-bs-slide="prev">
											<span class="carousel-control-prev-icon" aria-hidden="true"></span>
										</button>
										<button class="carousel-control-next" type="button"
											data-bs-target="#carouselExample" data-bs-slide="next">
											<span class="carousel-control-next-icon" aria-hidden="true"></span>
										</button>
									</div>
									<!-- 돌봄장소 슬라이드 사진 끝 -->
								</div>
								<div style="float: left;">
									<div class="moneyReview" style="margin-left: 15px;">
										<div class="mypageWalkMonDon">
											<h3>
												<span class="badge">수익</span>
											</h3>
											<p id="totalEarningsValue" class="superscript">이번달 총 수익</p>
											<h4>
												<span id="totalEarningsLabel">1,000,000 원</span>
											</h4>
										</div>

										<div>
											<h3>
												<span class="badge">후기</span>
											</h3>
											4.8 ⭐ (40개의 후기)
										</div>
									</div>
								</div>
							</div>
							<!-- 1행 1열 끝 -->
							<div class="col-md-6">

								<h3>
									<span class="badge">내 프로필(펫시터)</span>
								</h3>

								<div class="card profil">

									<div class="row g-0">
										<div class="col-md-4">
											<img src="images/client.jpg" class="img-fluid rounded-start"
												alt="프로필이미지">
										</div>
										<div class="col-md-8 cardInfo">
											<div class="card-body">
												<div class="oneText">
													<span class="card-text"><small class="text-muted">프로펫시터</small></span><br>
													<span class="nick card-text">폴폴이</span>
												</div>
												<span class="card-text">4.8 ⭐ (40개의 후기)</span>
											</div>
											<div class="porfilSu">
												<small class="text-muted ">알람</small>&nbsp;&nbsp;&nbsp; <small
													class="text-muted">후기</small>&nbsp;&nbsp;&nbsp; <small
													class="text-muted">팔로잉</small><br> <span>1건</span>&nbsp;&nbsp;&nbsp;
												<span>30건</span>&nbsp;&nbsp;&nbsp; <span>5건</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-6">

								<h3>
									<span class="badge">확정된 예약</span>
								</h3>

								<div class="card">
									<div class="card-header d-flex justify-content-between"">
										펫시팅
										<button type="button" class="detailBtn">자세히보러가기</button>
									</div>
									<div class="row g-0">
										<div class="col-md cardInfo">
											<div class="card-body">
												<div class="oneText">
													<span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
													<span class="card-text" style="font-size: 14pt;">2023-08-04
														14:00 ~ 2023-08-05 16:00</span>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="card">
									<div class="card-header d-flex justify-content-between"">
										펫시팅
										<button type="button" class="detailBtn">자세히보러가기</button>
									</div>
									<div class="row g-0">
										<div class="col-md cardInfo">
											<div class="card-body">
												<div class="oneText">
													<span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
													<span class="card-text" style="font-size: 14pt;">2023-08-04
														14:00 ~ 2023-08-05 16:00</span>
												</div>
											</div>
										</div>
									</div>
								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 기배 Modal 끝 -->
</body>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script>
	$(document).ready(function()
	{

		var dbValue = <%=session.getAttribute("dbValue")%>;

		if (dbValue === 0)
		{
			$('#initialModal1').modal('show');
			
		} 
		else if (dbValue === 1)
		{
			$('#initialModal2').modal('show');
			
		} 
		else if (dbValue === 2)
		{
			$('#initialModal3').modal('show');
		
		}
	});
</script>
</html>