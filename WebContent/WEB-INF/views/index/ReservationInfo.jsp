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

*{font-family: "Jua";}

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


.imageUpload {
  color: white;
  background-color: #ffc0cb;
  border: none;
  padding: 10px 20px;
  cursor: pointer;
  font-size: 16px;
  transition: background-color 0.3s;
}

.imageUpload .btn:hover {
  background-color: #2980b9;
}

.star {
	cursor: pointer;
	font-size: 24px;
	color: #ccc;
}

.star.selected {
	color: gold;
}

.review-button {
	visibility: hidden;
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
			var result = confirm("타임라인을 종료하시겠습니까? 종료하시면 후기를 작성하실 수 있습니다.");

			if (result)
			{
				alert("타임라인을 종료하셨습니다. 후기를 작성해주세요.");
				$(".review-button").css("visibility", "visible");
				$(".timeline-end-button").hide();
				$(".emergency-button").hide();
				$(".upload-btn").hide();

			} else
			{
				console.log("타임라인을 종료하지 않으셨습니다.");
			}
		});

		$(".review-button").click(function()
		{
			$("#reviewModal").modal("show");

		});

		$("#submitReview").click(function()
		{
			var reviewText = $("#reviewText").val();

			$('#reviewModal').modal("hide");

		});

		$(".star").click(function()
		{
			var value = $(this).data("value");
			$("#starRating .star").each(function()
			{
				if ($(this).data("value") <= value)
				{
					$(this).addClass("selected");
				} else
				{
					$(this).removeClass("selected");
				}
			});
		});

		$("#submitReview").click(function()
		{
			alert("작성이 완료되었습니다.");
			$(".review-button").hide();
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
			<div class="card text-center" style="margin: 0 auto; max-width: 100%;">
				<div class="card-body">
					<h2 class="card-title">예약 정보 확인</h2>
					<h3 class="card-subtitle mb-2 text-muted">예약번호<c:out value="${num}"/></h3>
				</div>
			</div><br>
			
			<div class="container-fluid py-5bg-light">
			<div class="row">
				<div class="col-md-4">
				<%-- <c:choose>	<%-- 만약 예약건수가 있다면 
					<c:when test="${passed}"> --%>
					<div class="card" style="height: 935px;">
					<c:forEach var="dto" items="${petList}">
					<br><div class="text-center">
							<h4>산책할 반려견</h4>
						</div>
						<hr>
						<div class="text-center"><!--images/dogdog.png  -->
							<img src="${dto.petimage }" alt="" class="rounded-circle" style="width: 230px; margin: 20px;">
						</div>
						<div class="text-center">
							<h5>${dto.petname}</h5>							
							<h6 class="text-muted">${dto.petgen} / ${dto.petweight} / ${dto.petbirth}</h6>
							<p class="card-text" style="font-size: 1.3rem;">
     							 🐾 특이사항: ${dto.petspecial}
   							</p>
					    </div>
					 </c:forEach>
					 </div>
					 
					 
					</div>
				
				<div class="col-md-4">
					<div class="card">
					<br><div class="text-center">
							<h4>펫시터 정보</h4>
						</div>
						<hr>
						<div class="text-center">
							<img src="images/dogwalker.jpg" alt="" class="rounded-circle" style="width: 230px; height:230px; margin: 5px;">
						</div><br>
						<div class="text-center">
							<h5>[<c:out value="${grade}"/>] <c:out value="${nick}"/></h5>
							<h6 class="text-muted">${dto.spcontent}</h6>
							<h6><c:out value="${rate}"/> ⭐ ${dto.sbprice}원 </h6>
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
								<span class="nick card-text">${dto.spaddr1}</span>
								<hr><br>
								
								<span class="card-text"><small class="text-muted">최대 반려견 수</small></span><br>
								<span class="nick card-text">${dto.maxpet}</span>
								<hr><br>
								
								<span class="card-text"><small class="text-muted">만남장소</small></span><br> 
								<span class="card-text">${dto.spaddr1}</span>
								<hr>
							</div>
							
							<div class="oneText row">
								<div class="col">
									<span class="card-text"><small class="text-muted">체크인 날짜</small></span><br> <span class="card-text">${dto.sbstart}</span>
								</div>
								<div class="col">
									<span class="card-text"><small class="text-muted">체크아웃 날짜</small></span><br> <span class="card-text">${dto.sbend}</span>
								</div>
							</div>
							<hr>							
							<div class="oneText">
								<div class="row">
								<span class="card-text"><small class="text-muted">&nbsp;&nbsp;&nbsp;최종금액</small></span><br>
								<br>
									<div class="col">
										<span class="card-text"></span>
									</div>
									<div class="col">
										<span class="card-text">${dto.sbprice}원</span>
									</div>
								</div>
							
							</div>
							


					
						</div>
						</div>
				
				</div>
				<div class="col-md-4">
					<div class="card" style="height: 935px; width: 36rem;">
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
									
									<div style="margin-left: 220px;">
										<!-- <label class="upload-btn"> <input type="file"
											accept="image/*" style="display: none;" />
											<button class="btn btn-success">
												<i class="fas fa-camera"></i> 사진 추가
											</button> -->
											
											<label for="imageUpload" class="form-label">
												<i class="fas fa-camera"></i> 사진 추가
											</label><br>
											<input type="file" id="imageUpload" accept="image/*">
										<!-- </label> -->
									</div>
									<br>
									<hr>
									<div class="container mt-5">
										<div class="row">
											<div class="col-1">
												<div class="timeline-point"></div>
											</div>
											<div class="col-9">
												<h6 class="text-muted">2023년 6월 8일 12시 40분</h6>
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
												<h6 class="text-muted">2023년 6월 8일 13시 40분</h6>
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
												<h6 class="text-muted"> 2023년 6월 8일 14시 40분</h6>
											</div>
										</div>
										<div class="text-center">
											<img src="images/walktestpro.jpg" alt="" style="width: 400px; height:250px;">
										</div>
									</div>
									<br>
									<hr>
								<div class="center-button-container">
									<button class="btn btn-success timeline-end-button" style="width: 450px;">
	  								<i class="fas fa-stopwatch"></i> 타임라인 종료
									</button>
								</div>


								<div class="center-button-container">
									<button class="btn btn-success review-button" style="width: 450px;">
									후기 작성
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
	
	<!-- 모달 페이지 -->
		<div class="modal fade" id="reviewModal" tabindex="-1" role="dialog" aria-labelledby="reviewModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="reviewModalLabel">후기 작성</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>

				<div class="modal-body">
					<div id="starRating">
						<span class="star" data-value="1">&#9733;</span> <span
							class="star" data-value="2">&#9733;</span> <span class="star"
							data-value="3">&#9733;</span> <span class="star" data-value="4">&#9733;</span>
						<span class="star" data-value="5">&#9733;</span>
					</div>
					<textarea class="form-control" id="reviewText" rows="3"
						placeholder="여기에 후기를 작성해주세요."></textarea>
				</div>

				<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">닫기</button>
						<button type="button" class="btn btn-primary" id="submitReview">작성 완료</button>
					</div>
				</div>
			</div>
		</div>
	
	
	
	<section>
		<div>
			<c:import url="/WEB-INF/components/index/FooterForm.jsp">
			</c:import>
		</div>
	</section>

	<script>
		// 현재 날짜 및 시간 가져오기
		var currentDate = new Date();

		// ${dto.sbend} 값을 Date 객체로 변환
		var dateTimeStr = "${dto.sbend}"; 

		var dateParts = dateTimeStr.split(' ')[0].split('-');
		var timeParts = dateTimeStr.split(' ')[1].split(':');

		var targetDate = new Date(dateParts[0], dateParts[1] - 1, dateParts[2],
				timeParts[0], timeParts[1], timeParts[2]);

		// 현재 날짜 및 시간과 ${dto.sbend} 비교
		if (currentDate >= targetDate)
		{
			document.querySelector(".timeline-end-button").disabled = false;
		} else
		{
			document.querySelector(".timeline-end-button").disabled = true;
		}
	</script>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>

</html>