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
<link rel="icon" href="./images/logo_transparent.png"/>
<meta charset="UTF-8"> 
<title>마이페이지_펫시팅</title>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-a5z8pA2+zN2T0LdZ6AO3bBq4wuvhs1YLC3E/p6hcaV9w1dt7E/PxI2fYve2IqcO3" crossorigin="anonymous"></script>

<style type="text/css">
.place
{
	padding: 20px; /* 테두리와 요소들 사이의 간격 조정 */
  	border-right: 2px solid black;
}
.carousel-control-prev, .carousel-control-next
{
    background-color: transparent; /* 배경색 투명으로 설정 */
    border: none; /* 테두리 제거 */
}

</style>
</head>
<body>
	<div class="row">
	    <div class="col place">
			<div class="row">
				<div class="col-md-6">
					<h2><span class="badge">핫도그님의 돌봄장소</span></h2>
				</div>
				<div class="col-md-6">
					<h3><span class="badge">팔로워 5명</span></h3>
				</div>
			</div>
				
			<!-- 돌봄장소 슬라이드 사진 시작 -->
			<div id="carouselExample" class="carousel slide">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="images/sitterroom.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img src="https://mdbcdn.b-cdn.net/img/Photos/Slides/img%20(22).webp" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img src="https://mdbcdn.b-cdn.net/img/Photos/Slides/img%20(23).webp" class="d-block w-100" alt="...">
			    </div>
			  </div>
			  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			  </button>
			</div>
			<!-- 돌봄장소 슬라이드 사진 끝 -->
			
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
			    
			    <h3><span class="badge">사진첨부</span></h3>
			    
			    <form>	<!-- 얘만 form 인 이유는? -->
					  <div class="form-outline mb-4">
					  	<h3><span class="badge">돌봄장소 이름</span></h3>
					  	<!-- <label class="form-label" for="form4Example1">돌봄장소 이름</label> -->
					    <input type="text" id="form4Example1" class="form-control" />
					  </div>
					  <div class="form-outline mb-4">
					  	<h3><span class="badge">돌봄장소 소개</span></h3>
					  	<!-- <label class="form-label" for="form4Example3">돌봄장소 소개</label> -->
					    <textarea class="form-control" id="form4Example3" rows="4"></textarea>
					  </div>
				</form>
			    <div class="form-check checkBox">
					<input class="form-check-input" type="checkbox" value="open" id="openClose">
					<label class="form-check-label" for="openClose">공개/비공개</label><br>
				</div>
					 <button type="button" class="updatePlace">수정</button>
			</div>
	    </div>
	    <div class="col">
	    	<a href="#">예약내역</a>
	    	<a href="#">후기</a>
	    	<a href="#">수익</a>
	    	
	    	<div class="myPageSittingInfo" id="myPageSittingInfo">뿌려</div>
	    </div>
  	</div>			
</body>
</html>




