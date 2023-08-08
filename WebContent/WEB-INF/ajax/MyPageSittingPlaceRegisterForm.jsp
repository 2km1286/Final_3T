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

<title>마이페이지_펫시팅_돌봄장소_등록</title>

<!-- 돌봄장소 이미지 넘기는 스크립트 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-a5z8pA2+zN2T0LdZ6AO3bBq4wuvhs1YLC3E/p6hcaV9w1dt7E/PxI2fYve2IqcO3"
	crossorigin="anonymous"></script>

<script type="text/javascript">
	$(function()
	{
		// 돌봄장소 변경하기를 누르면

		// 돌봄장소 등록하기를 누르면
		$("#updateSPInfo").click(function()
		{
			$.ajax(
			{
				type : "POST",
				url : "registerspinfoform.action",
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
			<div class="col-md">	
				<h2><span class="badge">핫도그님의 돌봄장소</span></h2>
			</div>
		</div>
			
		<div class="card-body">
		    <h3><span class="badge">돌봄장소 특이사항</span></h3>
		    <div class="checkBox">
			  <input type="checkbox" id="homeCam">
			  <label for="homeCam">홈캠 가능</label>
			</div>
			
			<div  class="checkBox">
			  <input type="checkbox" id="bathing">
			  <label for="bathing">목욕 가능</label>
			</div>
			
			<div  class="checkBox">
			  <input type="checkbox" id="emergencyTreatment">
			  <label for="emergencyTreatment">응급처치 가능</label>
			</div>
			
			<div class="checkBox">
			  <input type="checkbox" id="petOwner">
			  <label for="petOwner">반려견 있음</label>
			</div>
			
			<div class="checkBox">
			  <input type="checkbox" id="detailedTimeline">
			  <label for="detailedTimeline">꼼꼼한 타임라인</label>
			</div>
			
			<div class="checkBox">
			  <input type="checkbox" id="haircare">
			  <label for="haircare">모발관리 가능</label>
			</div>
			
			<div class="checkBox">
			  <input type="checkbox" id="disabledCare">
			  <label for="disabledCare">장애견 케어 가능</label>
			</div>
			
			<div class="checkBox">
			  <input type="checkbox" id="seniorDog">
			  <label for="seniorDog">노견 가능</label>
			</div>
			
			<div class="checkBox">
			  <input type="checkbox" id="smallMediumDog">
			  <label for="smallMediumDog">소/중형견 가능</label>
			</div>
			
			<div class="checkBox">
			  <input type="checkbox" id="largeDog">
			  <label for="largeDog">대형견 가능</label>
			</div>
			<br>
		    <h3><span class="badge">최대 가능 견수</span></h3>
		   	<select name="max-dog" id="max-dog" class="form-select form-select-lg mb-3" aria-label="Large select example"
		   			style="width: 400px;">
		    		<option value="1">1마리</option>
		    		<option value="2">2마리</option>
		    		<option value="3">3마리</option>
		    		<option value="4">4마리</option>
		    		<option value="5">5마리</option>
		    </select>
		    
		    <h3><span class="badge">돌봉장소 사진</span></h3>
		    <input type="file">
		    
		    <br><br>
		  	<h3><span class="badge">돌봄장소 이름</span></h3>
		    <input type="text" id="" class="" style="width: 600px;">
		    
		    <br><br>
		  	<h3><span class="badge">돌봄장소 소개</span></h3>
		    <textarea rows="5" cols="80"></textarea>
			
			<br><br>
		  	<h3><span class="badge">돌봄장소 주소</span></h3><!-- 주소는 수정불가 -->
		    <input type="text" id="" class="" style="width: 600px;" readonly="readonly">
		    
		    <h3><span class="badge">돌봄장소 우편번호</span></h3><!-- 가져와져있음 -->
			<input type="text" id="" class="" style="width: 600px;" readonly="readonly">
			
			<br><br>
		  	<h3><span class="badge">돌봄장소 상세주소</span></h3><!-- 가져와져있음 -->
		    <input type="text" id="" class="" style="width: 600px;" readonly="readonly">
			
			<br><br>
			<h3><span class="badge">돌봄장소 공개/비공개</span></h3>
			<div class="form-check">
			    <input class="form-check-input" type="radio" name="visibility" id="public" value="public">
			    <label class="form-check-label" for="public">공개</label>
			</div>
			<div class="form-check">
			    <input class="form-check-input" type="radio" name="visibility" id="private" value="private">
			    <label class="form-check-label" for="private">비공개</label>
			</div>
			<div>
				<button type="button" class="updatePlace" id="registerSPInfo">돌봄장소
					등록하기</button>
			</div>
		</div>
	
	</div><!-- 1행 1열 끝 -->

		<div class="col">

			<div id="sittingUpdate">
				<!-- 오른쪽 -->

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

			</div>

		</div>
		<!-- 1행 2열 끝 -->
	</div>
	<!-- 1행 끝 -->


</body>
</html>




