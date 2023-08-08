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

<title>마이페이지_펫시팅</title>

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

		<div class="col place">
			<div class="row">
				<div class="col-md-4">
					<h2>
						<span class="badge">핫도그님의 돌봄장소</span>
					</h2>
				</div>
				<div class="col-md-4">
					<h3>
						<span class="badge">팔로워 5명</span>
					</h3>
				</div>
				<div class="col-md-4">
					<button type="button" class="updatePlace">돌봄장소 변경하기</button>
				</div>
			</div>

			<!-- 돌봄장소 슬라이드 사진 시작 -->
			<div id="carouselExample" class="carousel slide">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="images/sitterroom.jpg" class="d-block w-100" alt="...">
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

			<!-- 캘린더 -->
			<div class="container" style="padding: 0;">
				<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
			
				<link rel="stylesheet" href="css/styleCal.css">
				<div class="row">
					<div class="col-md-12">
						<div class="content w-100">
							<div class="calendar-container" style="padding: 0px;">
								<div class="calendar">
									<div class="year-header">
										<span class="left-button fa fa-chevron-left" id="prev">
										</span> <span class="year" id="label"></span> <span
											class="right-button fa fa-chevron-right" id="next"> </span>
									</div>
									<table class="months-table w-100">
										<tbody>
											<tr class="months-row">
												<td class="month">1월</td>
												<td class="month">2월</td>
												<td class="month">3월</td>
												<td class="month">4월</td>
												<td class="month">5월</td>
												<td class="month">6월</td>
												<td class="month">7월</td>
												<td class="month">8월</td>
												<td class="month">9월</td>
												<td class="month">10월</td>
												<td class="month">11월</td>
												<td class="month">12월</td>
											</tr>
										</tbody>
									</table>

									<table class="days-table w-100">
										<td class="day">일</td>
										<td class="day">월</td>
										<td class="day">화</td>
										<td class="day">수</td>
										<td class="day">목</td>
										<td class="day">금</td>
										<td class="day">토</td>
									</table>
									<div class="frame">
										<table class="dates-table w-100">
											<tbody class="tbody">
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="events-container" style="background-color: #53e3a6;"></div>

						</div>
					</div>
				</div>
				<script type="text/javascript" src="js/popperCal.js"></script>
				<script type="text/javascript" src="js/mainCal.js"></script>
			</div>
			<!-- 캘린더 끝 -->

			<div class="card-body">
				<h3>
					<span class="badge">돌봄장소 특이사항</span>
				</h3>
				<button class="btn btn-outline-warning">대형견 가능</button>
				<button class="btn btn-outline-warning">노견 가능</button>
				<button class="btn btn-outline-warning">홈캠 가능</button>

				<br>
				<h3>
					<span class="badge">최대 가능 견수</span>
				</h3>
				<button class="btn btn-outline-warning">2마리</button>

				<br>
				<br>
				<h3>
					<span class="badge">돌봄장소 이름</span>
				</h3>
				<!-- 가져와져있음 -->
				<input type="text" id="" class="" style="width: 600px;"
					readonly="readonly"> <br>
				<br>
				<h3>
					<span class="badge">돌봄장소 소개</span>
				</h3>
				<!-- 가져와져있음 -->
				<textarea rows="5" cols="80" readonly="readonly"></textarea>

				<br>
				<br>
				<h3>
					<span class="badge">돌봄장소 주소</span>
				</h3>
				<!-- 가져와져있음 -->
				<input type="text" id="" class="" style="width: 600px;"
					readonly="readonly">

				<h3>
					<span class="badge">돌봄장소 우편번호</span>
				</h3>
				<!-- 가져와져있음 -->
				<input type="text" id="" class="" style="width: 600px;"
					readonly="readonly"> <br>
				<br>
				<h3>
					<span class="badge">돌봄장소 상세주소</span>
				</h3>
				<!-- 가져와져있음 -->
				<input type="text" id="" class="" style="width: 600px;"
					readonly="readonly"> <br>
				<br>
				<h3>
					<span class="badge">돌봄장소 공개/비공개</span>
				</h3>
				<button class="btn btn-outline-warning">공개</button>

				<br>
				<br>
				<button type="button" class="updatePlace" id="updateSPInfo">돌봄장소
					수정하기</button>
				<!-- 첫 등록이라면 등록하기 -->
			</div>

		</div>
		<!-- 1행 1열 끝 -->

		<div class="col">

			<div id="sittingUpdate">
				<!-- 오른쪽 -->

				<button type="button" id="sittingBookList">예약내역</button>
				<button type="button" id="sittingReviewList">후기</button>
				<button type="button" id="sittingMoney">수익</button>

				<div class="myPageSprigth" id="myPageSPrigth">
					<!-- 오른쪽 버튼 아래 시작 -->

					<div>
						<!-- 마이페이지 펫시팅 들어왔을 때 디폴트 -->
						<div id="calendar"></div>

						<h3>
							<span class="badge">예약 내역</span>
						</h3>
						<!-- 그 달의 예약 내역이 보인다-->
						<div>

							<div class="card">
								<div class="card-header d-flex justify-content-between">
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
												<span class="card-text" style="font-size: 14pt;">2023-08-06
													14:00 ~ 2023-08-06 22:00</span>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>

					</div>
					<!-- 예약내역 눌렀을 때 끝 -->




				</div>
				<!-- 오른쪽 버튼 아래 끝 -->

			</div>

		</div>
		<!-- 1행 2열 끝 -->
	</div>
	<!-- 1행 끝 -->


</body>
</html>




