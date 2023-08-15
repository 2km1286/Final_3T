<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<%
	String MemSid = (String)session.getAttribute("memSid"); // 최초 요청시 "0"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펫시터 공고글 예약화면</title>

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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-a5z8pA2+zN2T0LdZ6AO3bBq4wuvhs1YLC3E/p6hcaV9w1dt7E/PxI2fYve2IqcO3" crossorigin="anonymous"></script>


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<link rel="stylesheet" type="text/css" href="https://npmcdn.com/flatpickr/dist/themes/material_green.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://npmcdn.com/flatpickr/dist/l10n/ko.js"></script>



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
		/* 
		$("#reportReservation").click(function()
		{
			window.location.href = "sittingpay.action";
		}); 
	 	*/
	});
	
  
    
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
		<!-- 맨 위에 사진과 캘린더 -->
		<div class="image-container align-items-center">
			<div class="image-half" style="background-image: url('images/sittingroom.png'); width: 100%;" ></div>
		</div>
			
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
									<h5>[${list.grade }] ${list.jmNickName } </h5>
									<h6 class="text-muted">${listBySpSid.sptitle }</h6>
									<p>${sittingSrwRate.srwRateAvg } ⭐ (${sittingSrwRate.srwCount }개의 후기) ${list.price }원 / 1박</p>
								</div>
							</div>
							<br>
							<hr>
							<div>
								<h5 class="card-title text-center">${list.jmNickName } 펫시터님을 소개합니다</h5><br>
								<h6 class="card-subtitle text-muted text-center">
									${list.spContent }
								</h6>
							</div>
							<hr>
							<br>
							<div>
								<h5 class="card-title text-center">이용 가능 서비스</h5>
								<c:forEach var="tag" items="${spListTags }">
									<button class="btn btn-outline-warning"  style="margin-left: 30px;">${tag.isptName }</button>
								</c:forEach>
								<!-- 
								<button class="btn btn-outline-warning" style="margin-left: 130px;">대형견 가능</button>
								<button class="btn btn-outline-warning">노견 가능</button>
								<button class="btn btn-outline-warning">홈캠 가능</button>
								<button class="btn btn-outline-warning">모발관리 가능</button>
								 -->									
							</div>
							<br>
							<hr><br>
							
							<div>
								<h5 class="card-title text-center">휴일</h5>
								<c:choose>
									<c:when test="${spRest != null }">
										<c:forEach var="rest" items="${spRest }">
											<div class="card-title text-center">
												<c:choose>
													<c:when test="${rest.srStart == rest.srEnd }">
														<li><span class="card-subtitle text-muted">${rest.srStart }</span></li>
													</c:when>
													<c:when test="${rest.srStart != rest.srEnd }">
														<li><span class="card-subtitle text-muted">${rest.srStart } ~ ${rest.srEnd }</span></li>
													</c:when>
												</c:choose>
											</div>
										</c:forEach>								
									</c:when>
									<c:otherwise>
										<h6>2달 이내에 휴일이 없습니다.</h6>
									</c:otherwise>
								</c:choose>
							</div>
							<br />
							
							<div>
								<h5  class="card-title text-center">영업시간</h5>
								<div class="card-title text-center">
									<li><span class="card-subtitle text-muted">체크인 가능 시간 : ${list.sphStart } 이후</span></li>
									<li><span class="card-subtitle text-muted">체크아웃 시간 : 영업시간 2시간 전 </span></li>
								</div>
							</div>
							<hr><br>
							
							<!-- 이용요금 -->
							<div>
								<h5 class="card-title text-center">이용 요금</h5>
								<br>
								<div class="row">
									<div class="col">
										<h6 class="card-title text-center">초보 펫시터</h6>
									</div>
									<div class="col">
										<h6 class="card-subtitle text-muted">20,000원 (24시간 기준)</h6>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<h6 class="card-title text-center">프로 펫시터</h6>
									</div>
									<div class="col">
										<h6 class="card-subtitle text-muted">45,000원 (24시간 기준)</h6>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<h6 class="card-title text-center">마스터 펫시터</h6>
									</div>
									<div class="col">
										<h6 class="card-subtitle text-muted">55,000원 (24시간 기준)</h6>
									</div>
								</div>
								<hr /><br>
								<h5 class="card-title text-center">반려견 추가비</h5><br>
								<div class="row">
									<div class="col">
										<h6 class="card-title text-center">초보 펫시터</h6>
									</div>
									<div class="col">
										<h6 class="card-subtitle text-muted">1마리 추가시 10,000원</h6>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<h6 class="card-title text-center">프로 펫시터</h6>
									</div>
									<div class="col">
										<h6 class="card-subtitle text-muted">1마리 추가시 22,500원</h6>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<h6 class="card-title text-center">마스터 펫시터</h6>
									</div>
									<div class="col">
										<h6 class="card-subtitle text-muted">1마리 추가시 27,500원</h6>
									</div>
								</div><br>
								<!-- 이용요금 끝 -->
									
							<div class="alert alert-warning alert-dismissible fade show"
								role="alert">
								<i class="fas fa-exclamation-circle"></i>
								<h6 class="text-center">
									체크아웃 시간을 엄수해주시기 바랍니다.<br> 만약 늦게 체크아웃하실 경우, 10분마다 3,000원의
									추가 비용이 발생하오니<br> 예약 시 이 점을 꼭 고려해주시기 바랍니다.
								</h6>
								<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>

						</div>
							<br>
							<hr>

							<!-- 후기 -->
							<div>
									<h5 class="card-title text-center">고객 후기 ⭐${sittingSrwRate.srwRateAvg } (${sittingSrwRate.srwCount }개)&nbsp;&nbsp;
									
									
									</h5>
								<br><br>

								<!-- 후기 사진 -->								
								<!-- <div class="row">
									<div class="col-3">
										<img src="images/cute.png" alt="" class="card-img-top" style="width: 100px; height: 100px; border-radius: 50%;">
									</div>
									<div class="col-5">
										<h5 class="card-title">baby</h5>
										<h6 class="card-subtitle text-muted">2023년 6월 18일</h6>
										<br>
										<h6 class="card-subtitle text-muted mt-2">
											저희 아기 산책 잘해주셔서 너무 감사해용~~ 다음에 또 이용할게요
										</h6>
									</div>
								</div> -->

							<c:forEach items="${reviews }" var="review">
								<div>
								<div class="row">
									<div class="col-3">
										<img src="images/cute.png" alt="" class="card-img-top"
											style="width: 100px; height: 100px; border-radius: 50%;">
									</div>
									<div class="col-5">
										<h5 class="card-title">[${review.pJmNickName }]
										&nbsp;&nbsp;&nbsp;&nbsp;⭐⭐⭐⭐⭐ </h5>
										<h5 class="card-title">${review.srwTitle }</h5>
										<h6 class="card-subtitle text-muted">${review.srwDate }</h6>
										<br>
										<h6 class="card-subtitle">${review.srwContent }</h6>
									</div>
								</div><br>
								
								<div class="row">
									<div class="col text-center" style="margin-right: 35px;">
									<c:forEach items="${reviewsPhoto }" var="photo">
										<c:if test="${photo.srwSid == review.srwSid }">
											<img src="${photo.srpLink }" alt="" class="card-img-top" style="width: 20%;">
										</c:if>
									</c:forEach>
									</div>
								</div>
								</div>
							<br><hr>
							</c:forEach>
							
					</div>
					</div>
				</div>
				<!-- 여기에는 견주의 정보입력칸  -->
				<div class="col-md-5">
				<form action="sittingpayrequest.action" id="reservationForm">
					<div class="card" style="height: 945px; width: 38rem;">
						<div class="card-header d-flex justify-content-between">
							예약정보 입력</div>
						<div class="row g-0">
							<div class="col-md cardInfo">
								<div class="card-body">
									<div class="oneText">
										<span class="card-text"><small class="text-muted">지역</small></span><br>
										<span class="nick card-text">${list.spAddr1 }</span>
										<span class="nick card-text">${list.extraAddr }</span>
									</div>
									<hr>
									<div class="oneText">
										<span class="card-text"><small class="text-muted">만남
												장소</small></span><br> <span class="card-text">예약 후 상세주소를 알려드려요.</span>
									</div>
									<hr>
								<div class="oneText row">
								    <div class="col">
								        <span class="card-text"><small class="text-muted">체크인 날짜</small></span><br>
								        <label for="datepicker"></label><input type="text" id="datepicker1" name="datepicker1" 
								        class="custom-textbox" readonly style="width: 115px;">
								    </div>
								    <div class="col">
								        <span class="card-text"><small class="text-muted">체크아웃 날짜</small></span><br>
								        <label for="datepicker"></label><input type="text" id="datepicker2" name="datepicker2" 
								        class="custom-textbox" readonly style="width: 115px;">
								    </div>
								    <br />
								    <div id="message" class="message"></div>
								    <c:choose>
								    
								        <c:when test="${spRest != null }">
								            <c:forEach var="rest" items="${spRest}">
								                <div class="card-title text-center">
								                    <input type="hidden" class="srStart" value="${rest.srStart}" />
								                    <input type="hidden" class="srEnd" value="${rest.srEnd}" />
								                </div>
								            </c:forEach>
								            
								            <script>
								                var srStartElements = document.querySelectorAll('.srStart');
								                var srEndElements = document.querySelectorAll('.srEnd');
								                
								                var fp1DisabledDates = [];
								                var fp2DisabledDates = [];
								
								                for (var i = 0; i < srStartElements.length; i++) {
								                    var startDate = new Date(srStartElements[i].value);
								                    var endDate = new Date(srEndElements[i].value);
								                    
								                    while (startDate <= endDate) {
								                        fp1DisabledDates.push(startDate.toISOString().split('T')[0]);
								                        fp2DisabledDates.push(new Date(startDate.getTime() + 86400000).toISOString().split('T')[0]);
								                        startDate.setDate(startDate.getDate() + 1);
								                    }
								                }
								                
								                var today = new Date();
								                var twoMonthsLater = new Date(today.getFullYear(), today.getMonth() + 2, today.getDate());
								                
								                var fp1 = flatpickr(document.getElementById("datepicker1"), {
								                    "locale": "ko",
								                    "disable": fp1DisabledDates,
								                    "minDate": today,
								                    "maxDate": twoMonthsLater,
								                    
								                    "onChange": function(selectedDates, dateStr, instance) {
								                        fp2.set("minDate", selectedDates[0]);
								                        
								                    }
								                });
												
								                var inDate = new Date(fp1.selectedDates[0]);
								                
								                var fp2 = flatpickr(document.getElementById("datepicker2"), {
								                    "locale": "ko",
								                    "disable": fp2DisabledDates,
								                    "minDate": new Date(today.getTime() + 86400000),
								                    "maxDate": new Date(inDate.getTime() + (3 * 86400000)),
								                    "onDayCreate": function(dObj, dStr, fp, dayElem) {
								                        if (fp1DisabledDates.includes(dStr)) {
								                            dayElem.classList.add("disabled-date");
								                        }
								                    },
								                    "onChange": function(selectedDates, dateStr, instance) {
								                        if (selectedDates[0]) {
								                            var checkinDate = fp1.selectedDates[0];
								                            var checkoutDate = selectedDates[0];
								                            var minCheckoutDate = new Date(checkinDate.getTime() + (3 * 86400000)); // 3 days
								                            // Check if there are any disabled dates between checkinDate and checkoutDate
												            var hasDisabledDates = false;
												            for (var d = new Date(checkinDate.getTime() + 86400000); d < checkoutDate; d.setDate(d.getDate() + 1)) {
												                var disabledDate = d.toISOString().split('T')[0];
												                if (fp2DisabledDates.includes(disabledDate)) {
												                    hasDisabledDates = true;
												                    break;
												                }
												            }
								                            
								                            
												            if (hasDisabledDates || checkoutDate < checkinDate) {
												                fp2.clear();
												                showMessage("체크아웃 날짜는 선택 불가합니다.");
												            } else {
												                hideMessage();
												            }
								                            
								                        }
								                    }
								                });
								                
								                function showMessage(message) {
								                    var messageElem = document.getElementById("message");
								                    messageElem.innerText = message;
								                    messageElem.style.display = "block";
								                }

								                function hideMessage() {
								                    var messageElem = document.getElementById("message");
								                    messageElem.style.display = "none";
								                }
								
								                fp2.config.disable.push(
								                    function(date) {
								                        return fp1DisabledDates.includes(date.toISOString().split('T')[0]);
								                    }
								                );
								            </script>
								            <style>
								                .disabled-date {
								                    pointer-events: none;
								                    opacity: 0.5;
								                }
								            </style>
								        </c:when>
								        <c:otherwise>
								            <h6>2달 이내에 휴일이 없습니다.</h6>
								        </c:otherwise>
								    </c:choose>
								</div>
								
								
								</div>



									<!-- 여기다가 당일예약, 기간예약인지에 따라서 체크인,체크아웃 시간 안내해 줄 수 있을듯? -->
									<!-- 
									<hr>
									<div class="oneText row">
										<div class="col">
											<span class="card-text"><small class="text-muted">시작 시간</small></span><br> 
											<label for="time"></label> <input type="time" id="time" class="custom-textbox">
										</div>
										<div class="col">
											<span class="card-text"><small class="text-muted">종료 시간</small></span><br> 
											<label for="time"></label> <input type="time" id="time" class="custom-textbox">
											<span id="addResult"></span> 사용자가 시간을 추가한다면 ajax로 그 시간만큼 보여줘야함
										</div>
									</div>
									 -->
									
									<hr>
									<div class="oneText">
										<span class="card-text"><small class="text-muted">최대 반려견 수</small></span><br> 
										<span class="card-text">${list.spMaxPet }</span>
									</div>
									<hr>
									<div class="oneText">
										<span class="card-text"><small class="text-muted">반려견 선택</small></span><br>
										
										<div class="row">
										
											
											<c:forEach items="${petList}" var="pet">
											<div class="col">
												<img src="${pet.petImage}" alt="" class="card-img-top pets" style="width: 40%; border-radius: 50%;" data-pet-sid="${pet.petSid}">
											<br>
												<div class="text-center">
												<span class="card-text">&nbsp;&nbsp;${pet.petName}</span>
												<input type="hidden" id="selectedPets" name="selectedPets" value="" />
												</div>
											</div>
											</c:forEach>
											
										</div><!-- .row end -->
									</div><!-- .oneText end -->
									<hr>
									<div class="oneText">
										<span class="card-text"><small class="text-muted">최종금액</small></span><br><br>
										<div class="row">
											<div class="col">
												<span class="card-text">기본금액(1박&1마리)</span>
											</div>
											<div class="col">
												<span class="card-text" id="price">&nbsp; + ${list.price }</span>
											</div>
										</div>
										<!-- .row -->
										<div class="row">
											<div class="col">
												<span class="card-text"> + 1마리 추가</span>
											</div>
											<div class="col">
												<span class="card-text">&nbsp; + 최종 금액의 50%</span>
											</div>
										</div>
									</div>
									<!-- .oneText -->
									<hr>
									<div class="row">
											<div class="col">
												<span class="card-text">최종 결제금액</span>
											</div>
											<div class="col">
												<span class="card-text" id="totalPrice" style="font-weight: bold; color: red;">&nbsp; = </span>
											</div>
										</div>
									<br>
									<!-- <div
										class="col d-flex align-items-center justify-content-center">
										<button class="btn btn-warning">예약요청</button>
									</div> -->
									<div class="col d-flex align-items-center justify-content-center">
    									<button type="button" class="btn btn-warning custom-button" id="payRequest">결제하기</button>
									</div>
									
								</div>
								<!-- close .card-body -->
							</div>
						</div>
						</form>
						
						<script type="text/javascript">
									
										$(function()
										{
											// 초기 가격 설정
									        var basePrice = ${list.price};
									        var additionalPrice = ${list.price / 2};
									        var selectedPets = 0;
									        var daysBetweenDates = 0;
									        
									        // 최종금액 초기 업데이트
									        $("#totalPrice").html(basePrice);
									        
									    	 // 최종 금액 업데이트 함수
									        function updateTotalPrice() {
									            var totalPrice = basePrice + ((daysBetweenDates-1) * basePrice);
									            
									            if (selectedPets === 2) {
									                totalPrice += totalPrice/2;
									            }
									            
									            $("#totalPrice").html(totalPrice);
									        }
									     	
									        $(".pets").click(function() {
									            $(this).toggleClass('selected');
									            if ($(this).hasClass('selected')) {
									                $(this).css('border', 'solid 5px #ff9800');
									                selectedPets += 1;
									                updateTotalPrice();
									            } else {
									                $(this).css('border', 'none');
									                selectedPets -= 1;
									                updateTotalPrice();
									            }
									            // 반려견 선택이 변경될 때마다 최종 금액 업데이트
									        });
									        
											
									    	 // 체크인, 체크아웃 날짜 변경 시 최종 금액 업데이트
									        fp1.config.onChange.push(function(selectedDates) {
									            if (selectedDates[0]) {
									                var checkinDate = selectedDates[0];
									                var checkoutDate = fp2.selectedDates[0];

									                // 체크인과 체크아웃 날짜 사이의 일 수 계산
									                daysBetweenDates = Math.floor((checkoutDate - checkinDate) / (24 * 60 * 60 * 1000));
									                updateTotalPrice();
									            }
									        });
									        
									        fp2.config.onChange.push(function(selectedDates) {
									            if (selectedDates[0]) {
									                var checkinDate = fp1.selectedDates[0];
									                var checkoutDate = selectedDates[0];

									                // 체크인과 체크아웃 날짜 사이의 일 수 계산
									                daysBetweenDates = Math.floor((checkoutDate - checkinDate) / (24 * 60 * 60 * 1000));
									                updateTotalPrice();
									            }
									        });
									        
									        // 결제 요청 번호 클릭 
									        $("#payRequest").click(function() {
												var selectedPets = [];
												
								                $('.pets.selected').each(function() 
								                {
								                	selectedPets.push($(this).attr('data-pet-sid'));
								                });
												
									            $('#selectedPets').val(selectedPets.join(','));
												
								                alert($("#selectedPets").val());
												
												$("#reservationForm").submit();
											});
									    
											    
										});
										
											  function openPopup() {
										      window.open("sittingpayrequest.action", "paymentWindow", "width=600,height=600");
										    }
										
									</script>
							<br>
						</div>
				</div>
			</div>
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

<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
</html>