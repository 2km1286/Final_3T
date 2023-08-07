<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>대리산책러 공고글 예약화면</title>

<style>
h2, h4, h5 {
	font-family: "Jua";
	font-size: 20pt;
}
</style>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<link rel="icon" href="./images/logo_transparent.png"/>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<script type="text/javascript">
	$().ready(function()
	{
		
		$("#reportButton").click(function()
		{
			alert("프로필 신고가 접수되었습니다.");
		});
		
		$("#reportPost").click(function()
		{
			alert("게시글 신고가 접수되었습니다.");
		});
		
		/* $("#reportReservation").click(function()
		{
			window.location.href = "walk-pay.action";
		}); */
	
	});
	
    function openPopup() {
      window.open("reservationpaymentpage.action", "paymentWindow", "width=600,height=600");
    }
    
    
</script>

<style>

.card-img-top {
    margin-left: 30px; /* 이미지를 오른쪽으로 10픽셀 이동 */
}

.custom-btn {
	background-color: #4CAF50; /* 버튼 배경 색 */
	color: white; /* 글자 색 */
	border: none; /* 테두리 제거 */
	border-radius: 5px; /* 모서리 둥글게 */
	padding: 10px 20px; /* 패딩 적용 */
	font-size: 16px; /* 폰트 크기 조절 */
	box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1); /* 그림자 추가 */
	transition: 0.3s; /* 호버 효과를 위한 전환 효과 */
}

 .custom-btn:hover {
	background-color: #45a049; /* 호버시 배경 색 변경 */
} 

.carousel-control-prev, .carousel-control-next
{
    background-color: transparent; /* 배경색 투명으로 설정 */
    border: none; /* 테두리 제거 */
}

.image-container {
    display: flex;
    width: 100%;
    height: 50vh; /* 뷰포트 높이에 맞게 조절 */
}
.image-half {
    width: 90%; /* 각 이미지가 화면의 절반을 차지하도록 설정 */
    height:100%;
    background-size: cover; /* 이미지 크기를 컨테이너에 맞게 조절 */
    background-position: center; /* 이미지를 중앙에 배치 */
    position: relative;
    /* margin-left: 15%; */
}
#calendar {
	
   position: absolute; /* 캘린더를 절대 위치로 설정 */
   width:40%;
   height:100%;
    top: 100%; /* 상단에서 50% 위치에 배치 */
    left: 100%; /* 왼쪽에서 50% 위치에 배치 */
    transform: translate(-50%, -50%); /* 좌표를 정확하게 중앙으로 이동 */
}

</style>

</head>
<body>
	<section>
		<c:import url="/WEB-INF/components/index/HeaderForm.jsp">
		</c:import>
	</section>
	
	<section>
		<div class="d-flex justify-content-center align-items-center" style="height: 100vh; overflow: hidden;">
			<div id="cardContainer" class="row" style="margin: 50px 10px 10px 10px; height: 100%;">
				<div class="col-md-7" style="height: 100%;">
					<div class="card" style="height: 100%; overflow: auto;">
					<br>
						<div style="text-align: right;">
							<button type="button" class="btn btn-outline-danger"
								id="reportButton">
								<i class="fas fa-exclamation-triangle"></i>프로필 신고
							</button>
						</div>
						<br>
							<div class="profile-card">
								<div class="text-center">
									<img src="images/dogdog.png" alt="" class="rounded-circle" style="width: 200px; margin: 20px;">
								</div>
								<div class="text-center">
									<h5>[마스터 산책러] 멍멍박사</h5>
									<h6 class="text-muted">시간 약속을 잘 지키는 성실한 집사입니다!</h6>
									<p>4.2 ⭐ (991개의 후기) 15,000원</p>
								</div>
							</div>
							<br>
							<hr>
							<div>
								<h5 class="card-title text-center">멍멍박사 산책러님을 소개합니다</h5><br>
								<h6 class="card-subtitle text-muted text-center">
									반갑습니다~ 반려동물을 사랑하는 대리산책러입니당 <br>귀하의 반려 동물에게 집처럼 편안한 경험을 제공합니다.<br>
									여러분이 없을 때도 사랑받는 가족처럼 대해드립니다.
								</h6>
							</div>
							<hr>
							<br>
							<div>
								<h5 class="card-title text-center">이용 가능 서비스</h5>
								<button class="btn btn-outline-warning" style="margin-left: 170px;">대형견 가능</button>
								<button class="btn btn-outline-warning">노견 가능</button>
								<button class="btn btn-outline-warning">응급 처치 가능</button>
							</div>
							<br>
							<hr><br>

							<!-- 이용요금 -->
							<div>
								<h5 class="card-title text-center">이용 요금</h5>
								<br>
								<div class="row">
									<div class="col">
										<h6 class="card-title text-center">초보 산책러</h6>
									</div>
									<div class="col">
										<h6 class="card-subtitle text-muted">7,000원 (1시간 기준)</h6>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<h6 class="card-title text-center">프로 산책러</h6>
									</div>
									<div class="col">
										<h6 class="card-subtitle text-muted">10,000원 (1시간 기준)</h6>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<h6 class="card-title text-center">마스터 산책러</h6>
									</div>
									<div class="col">
										<h6 class="card-subtitle text-muted">15,000원 (1시간 기준)</h6>
									</div>
								</div>
								<br>
								<h5 class="card-title text-center">반려견 추가비</h5><br>
								<div class="row">
									<div class="col">
										<h6 class="card-title text-center">모든 산책러</h6>
									</div>
									<div class="col">
										<h6 class="card-subtitle text-muted">1마리 추가시 5,000원</h6>
									</div>
								</div>
								<br>

						</div>
							<br>
							<hr>

							<!-- 후기 -->
							<div>
								<h5 class="card-title text-center">고객 후기 991개 ⭐⭐⭐⭐⭐</h5>
								<br>

								<!-- 후기 사진 -->
							<div id="carouselExample" class="carousel slide">
								<div class="carousel-inner">
									<div class="carousel-item active">
										<img src="images/walktestpro.jpg" class="d-block w-100"
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
							<br>
								<hr>
								
								<div class="row">
									<div class="col-4">
										<img src="images/cute.png" alt="" class="card-img-top" style="width: 100px; height: 100px; border-radius: 50%;">
									</div>
									<div class="col-8">
										<h5 class="card-title" style="margin-top: 8px;">baby</h5>
										<h6 class="card-subtitle text-muted">2023년 6월 18일</h6>
										<br>
										<h6 class="card-subtitle text-muted mt-2">
											저희 아기 산책 잘해주셔서 너무 감사해용~~<br> 다음에 또 이용할게요
										</h6>
									</div>
								</div>

								<br>
								<br>
							</div>
					</div>
				</div>

				<!-- 여기에는 견주의 정보입력칸  -->
				<div class="col-md-5">
					<div class="card" style="height: 945px; width: 38rem;">
						<div class="card-header d-flex justify-content-between">
							예약정보 입력</div>
						<div class="row g-0">
							<div class="col-md cardInfo">
								<div class="card-body">
									<div class="oneText">
										<span class="card-text"><small class="text-muted">지역</small></span><br>
										<span class="nick card-text">서울시 마포구 월드컵북로</span>
									</div>
									<hr>
									<div class="oneText">
										<span class="card-text"><small class="text-muted">만남
												장소</small></span><br> <span class="card-text">멍멍동 멍멍아파트 단지 앞 왈왈
											공원 입구</span>
									</div>
									<hr>
									<div class="oneText row">
										<div class="col">
											<span class="card-text"><small class="text-muted">날짜</small></span><br>
											<span class="card-text">2023-08-06</span>
										</div>
									</div>
									<hr>
									<div class="oneText row">
										<div class="col">
											<span class="card-text"><small class="text-muted">시작 시간</small></span><br> 
											<label for="time"></label> <input type="time" id="time" class="custom-textbox">
										</div>
										<div class="col">
											<span class="card-text"><small class="text-muted">종료 시간</small></span><br> 
											<label for="time"></label> <input type="time" id="time" class="custom-textbox">
											<span id="addResult"></span> <!-- 사용자가 시간을 추가한다면 ajax로 그 시간만큼 보여줘야함 -->
										</div>
									</div>
									<hr>
									<div class="oneText">
										<span class="card-text"><small class="text-muted">최대 반려견 수</small></span><br> 
										<label for="dogs"></label> <input type="number" id="dogs" class="custom-textbox" min="1" max="5" value="2">
									</div>
									<hr>
									<div class="oneText">
										<span class="card-text"><small class="text-muted">반려견 선택</small></span><br>
										<div class="row">
											<div class="col d-flex align-items-center justify-content-center"><!-- 마이너스 버튼  -->
												<button class="btn btn-warning">
													<i class="fas fa-minus"></i>
												</button>
											</div>
											<div class="col">
												<!-- <img src="images/walktestpro.jpg" alt="" class="card-img-top" style="width: 190px;"><br> -->
												<img src="images/cute.png" alt="" class="card-img-top" style="width: 150px; height: 150px; border-radius: 50%;">
												<br>
												<div class="text-center">
													<span class="card-text">&nbsp;&nbsp;까미</span>
												</div>
											</div>
											<div class="col">
												<!-- <img src="images/walktestpro.jpg" alt="" class="card-img-top" style="width: 190px;"><br> -->
												<img src="images/dogdog.png" alt="" class="card-img-top" style="width: 150px; height: 150px; border-radius: 50%;">
												<br>
												<div class="text-center">
													<span class="card-text">&nbsp;&nbsp;깜돌이</span>
												</div>
											</div>
											<div class="col d-flex align-items-center justify-content-center"><!-- 플러스버튼  -->
												<button class="btn btn-warning">
													<i class="fas fa-plus"></i>
												</button>
											</div>
										</div>
									</div>
									<hr>
									<div class="oneText">
										<span class="card-text"><small class="text-muted">최종금액</small></span><br><br>
										<div class="row">
											<div class="col">
												<span class="card-text">기본금액</span>
											</div>
											<div class="col">
												<span class="card-text"> + 15,000원</span>
											</div>
										</div>
										<!-- .row -->
										<div class="row">
											<div class="col">
												<span class="card-text"> + 1시간 추가</span>
											</div>
											<div class="col">
												<span class="card-text"> + 15,000원</span>
											</div>
										</div>
									</div>
									<!-- .oneText -->
									<hr>
									<div class="oneText" style="text-align: right;">
										<span class="card-text">30,000원(ajax 처리될 최종금액)</span>
									</div>
									<br>
									<!-- <div
										class="col d-flex align-items-center justify-content-center">
										<button class="btn btn-warning">예약요청</button>
									</div> -->
									<div class="col d-flex align-items-center justify-content-center">
    									<button class="btn btn-warning custom-button" id="reportReservation" onclick="openPopup()">예약요청</button>
									</div>
								</div>
								<!-- close .card-body -->
							</div>
						</div>
					</div>
					<br>

				</div>
			</div>
		</div>
		<!-- </div> -->
	</section>
	<!-- 게시글 신고버튼  -->
	<div class="d-flex align-items-center justify-content-end">
		<button type="button" class="btn btn-outline-danger" id="reportPost"
			style="margin-right: 320px;">
			<i class="fas fa-exclamation-triangle"></i>게시글 신고
		</button>
	</div>
	
	<section>
		<div>
			<c:import url="/WEB-INF/components/index/FooterForm.jsp">
			</c:import>
		</div>
	</section>


<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
</body>
<script>
	    flatpickr("#datepicker", {
	      dateFormat: 'Y-m-d',
	      position: "below",
	      defaultDate: "today",
	      theme: "airbnb"
	    });
	    
	    flatpickr("#calendar", {
            inline: true
        });
</script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
</html>