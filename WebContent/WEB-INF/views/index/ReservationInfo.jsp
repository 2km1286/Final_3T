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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>예약 확인 페이지</title>

<style>

.container-mypage {
  margin: 20px;;
  padding: 30px; /* 테두리와 요소들 사이의 간격 조정 */
  border: 2px solid black; /* 폼에 테두리 설정 */
  border-radius: 10px; /* 테두리의 둥근 정도 설정 */
}

h2, h4, h5 {
	font-family: "Jua";
	font-size: 20pt;
}

.custom-card {
	border: 2px solid #3498db; /* 테두리 색상 */
	border-radius: 10px; /* 둥근 모서리 */
	transition: all 0.3s ease;
}

.custom-card:hover {
	border-color: #2980b9; /* 마우스 오버시 테두리 색상 변경 */
}

.emergency-button {
  color: white; /* 텍스트 색상 */
  font-weight: bold; /* 글꼴 굵기 */
  border-radius: 5px; /* 둥근 모서리 */
  padding: 20px 25px; /* 내부 여백 조정 */
  font-size: 20px; /* 글꼴 크기 조정 */
}

.timeline-end-button {
  color: white; /* 텍스트 색상 */
  border-radius: 5px; /* 둥근 모서리 */
  padding: 10px 20px; /* 내부 여백 */
  font-size: 16px; /* 글꼴 크기 */
  border: 2px solid #6c757d; /* 테두리 색상과 두께 */
  transition: all 0.3s ease; /* 부드러운 전환 효과 */
  background: #ffc0cb;
}

.timeline-end-button:hover {
  background-color: #5a6268; /* 마우스 오버시 배경색 변경 */
}

.timeline-point {
  width: 10px;
  height: 10px;
  background-color: #007bff;
  border-radius: 50%;
  position: relative;
}

.timeline-point::after {
  content: "";
  position: absolute;
  width: 2px;
  height: 100%;
  left: 4px;
  top: 10px;
 /*  background-color: #007bff; */
 background-color:#ffc0cb;
}

.center-button-container {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 15vh;
  }

/*  */
.timeline-point {
  width: 10px;
  height: 10px;
  background-color: #ffc0cb;
  border-radius: 50%;
  position: relative;
  margin-top: 5px;
}

.text-muted {
  font-size: 16px;
  color: #7f8c8d;
  font-weight: bold;
}

.col-1, .col-9 {
  padding: 10px;
}

/* 컨테이너 내부 간격 조정 */
.container {
  padding: 10px;
}


.upload-btn .btn {
  color: white;
  background-color: #ffc0cb;
  border: none;
  padding: 10px 20px;
  cursor: pointer;
  font-size: 16px;
  transition: background-color 0.3s;
}

.upload-btn .btn:hover {
  background-color: #2980b9;
}

</style>

<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="icon" href="./images/logo_transparent.png" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<script type="text/javascript">
	
	$().ready(function()
	{
		$(".emergency-button").click(function()
		{
			alert("비상상황이 접수되었습니다.");
		});
		
		$(".timeline-end-button").click(function()
		{
			alert("타임라인이 종료되었습니다.");
		});
	});
	
</script>

</head>
<body>

	<section>
		<c:import url="/WEB-INF/components/index/HeaderForm.jsp">
		</c:import>
	</section>

	<section>
	<div class="container-mypage">
		<!-- <div class="container mt-4"> -->
		<div class="container-fluid py-5bg-light">
			<div class="row">
				<div class="col-md-4">
					<div class="card" style="height: 935px;">
					<br><div class="text-center">
							<h4>산책할 반려견</h4>
						</div>
						<hr>
						<div class="text-center">
							<img src="images/dogdog.png" alt="" class="rounded-circle" style="width: 230px; margin: 20px;">
						</div>
						<div class="text-center">
							<h5>예약번호 20230608178</h5>
							<h5>깜돌이</h5>							
							<h6 class="text-muted">소형견 / 7살 / 남자</h6>
							<p class="card-text">
     							 🐾 특이사항: 물을 무서워함
   							</p>
					    </div><br>
						
						<div class="text-center">
							<img src="images/cute.png" alt="" class="rounded-circle" style="width: 230px; margin: 20px;">
						</div>
						<div class="text-center">
							<h5>예약번호 20230608178</h5>
							<h5>퍼피</h5>							
							<h6 class="text-muted">소형견 / 7살 / 남자</h6>
							<p class="card-text">
     							 🐾 특이사항: 물을 무서워함
   							</p>
					   </div>
				
					 </div>
					</div>
				
				<div class="col-md-4">
					<div class="card">
					<br><div class="text-center">
							<h4>대리산책러 정보</h4>
						</div>
						<hr>
						<div class="text-center">
							<img src="images/dogwalker.jpg" alt="" class="rounded-circle" style="width: 230px; height:230px; margin: 5px;">
						</div><br>
						<div class="text-center">
							<h5>[마스터 산책러] 멍멍박사</h5>
							<h6 class="text-muted">시간 약속을 잘 지키는 성실한 집사입니다!</h6>
							<p>4.2 ⭐ (991개의 후기) 15,000원</p>
						</div>
					</div><br>
					
					<div class="card" style="height: 450px;">
					<br><div class="text-center">
							<h4>매칭 조건 정보</h4>
						</div>
						<hr>
						<div class="card-body" style="overflow-y: auto;">
							<div class="oneText">
								<span class="card-text"><small class="text-muted">지역</small></span><br>
								<span class="nick card-text">서울시 마포구 월드컵북로</span>
								<hr><br>
								
								<span class="card-text"><small class="text-muted">만남장소</small></span><br> 
								<span class="card-text">멍멍동 멍멍아파트 단지 앞 왈왈 공원 입구</span>
								<hr>
							</div>
							
							<div class="oneText">
								<span class="card-text"><small class="text-muted">날짜</small></span><br>
								<span class="card-text">2023-06-08</span>
							</div>
							<hr>							
							<div class="oneText row">
								<div class="col">
									<span class="card-text"><small class="text-muted">시작 시간</small></span><br> <span class="card-text">12:00</span>
								</div>
								<div class="col">
									<span class="card-text"><small class="text-muted">종료 시간</small></span><br> <span class="card-text">2:00</span>
								</div>
							</div><hr>
							<div class="oneText">
								<span class="card-text"><small class="text-muted">최종금액</small></span><br>
								<br>
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
							<div class="oneText" style="text-align: right; margin-right: 195px;">
								<span class="card-text">30,000원</span>
							</div>


						</div>
						</div>
				
				</div>
				<div class="col-md-4">
					<div class="card" style="height: 935px; width: 40rem;">
						<br><div class="text-center">
								<h4>타임라인</h4>
							</div>
							<hr>
							<button class="btn btn-danger emergency-button" style="margin-left: 5px; margin-right: 10px;">
  								<i class="fas fa-bell"></i> 비상 상황
							</button>
							
						<div class="row g-0">
							<div class="col-md cardInfo">
								<div class="card-body" style="overflow-y: auto; height: 800px;">
									
									<div class="text-center">
										<h5>2023년 6월 8일</h5>
									</div>
									
									<div style="margin-left: 220px;">
										<label class="upload-btn"> <input type="file"
											accept="image/*" style="display: none;" />
											<button class="btn btn-success">
												<i class="fas fa-camera"></i> 사진 추가
											</button>
										</label>
									</div>


									<div class="container mt-5">
										<div class="row">
											<div class="col-1">
												<div class="timeline-point"></div>
											</div>
											<div class="col-9">
												<h6 class="text-muted">12시 40분</h6>
											</div>
										</div>
										<div class="text-center">
											<img src="images/cutedogdog.png" alt="" style="width: 400px;">
										</div>
									</div>
									
									<div class="container mt-5">
										<div class="row">
											<!-- <div class="col-2 text-right text-center">
												<strong>2023</strong>
											</div> -->
											<div class="col-1">
												<div class="timeline-point"></div>
											</div>
											<div class="col-9">
												<h6 class="text-muted">13시 40분</h6>
											</div>
										</div>
										<div class="text-center">
											<img src="images/walktestpro.jpg" alt="" style="width: 400px; height:250px;">
										</div>
									</div>
									
									<div class="container mt-5">
										<div class="row">
											<div class="col-1 text-center">
												<div class="timeline-point"></div>
											</div>
											<div class="col-9">
												<h6 class="text-muted">14시 40분</h6>
											</div>
										</div>
										<div class="text-center">
											<img src="images/walktestpro.jpg" alt="" style="width: 400px; height:250px;">
										</div>
									</div>
									

								<div class="center-button-container">
									<button class="btn btn-success timeline-end-button" style="width: 450px;">
	  								<i class="fas fa-stopwatch"></i> 타임라인 종료
									</button>
								</div>	
								</div> 
							</div>
							</div>
					</div>
				
				</div>
							
		
			</div>
		</div>
		</div>
	</section>
	
	
	<section>
		<div>
			<c:import url="/WEB-INF/components/index/FooterForm.jsp">
			</c:import>
		</div>
	</section>
	

</body>

</html>