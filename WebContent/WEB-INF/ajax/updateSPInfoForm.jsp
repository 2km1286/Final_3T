<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!-- 벼리언니 이거 지우면 안대 화이팅해 언니 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

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
.sittingtime { font-size: 13pt;}
.mypageWalkMonDon {margin-left: 500px;}
.firstInfo { font-size: 15pt; font-weight: bold; color: #2dd0fc;}
div .card { width: 700px;}
</style>

</head>
<body>

<div class="row" id="sittingPlaceDiv">
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
		    
		    <h3><span class="badge">돌봉장소 사진</span></h3>
		    <input type="file">
		    
		    <br><br>
		  	<h3><span class="badge">돌봄장소 이름</span></h3>
		    <input type="text" id="" class="" style="width: 600px;">
		    
		    <br><br>
		  	<h3><span class="badge">돌봄장소 소개</span></h3>
		    <textarea rows="5" cols="80"></textarea>
			
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
	
		</div>
	
	</div><!-- 1행 1열 끝 -->
	
	<div class="col">
		<h3><span class="badge">휴일</span></h3>
		<div>
			달력인데 2달만 보임
		</div>
		<h3><span class="badge">예약 내역</span></h3><!-- 2달치 -->
	   		<div>
	   		
	   			<div class="card">
					<div class="card-header d-flex justify-content-between"">
						펫시팅 <button type="button" class="detailBtn">자세히보러가기</button>
					</div>	
			    	  <div class="row g-0">
			    	    <div class="col-md cardInfo" >
			    	      <div class="card-body">
			    	        <div class="oneText">
			    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
			    		        <span class="card-text" style="font-size: 14pt;">2023-08-04 14:00 ~ 2023-08-05 16:00</span>
			    	        </div>
			    	      </div>
			    	    </div>
			    	  </div>
			    </div>
			    
			    <div class="card">
					<div class="card-header d-flex justify-content-between"">
						펫시팅 <button type="button" class="detailBtn">자세히보러가기</button>
					</div>	
			    	  <div class="row g-0">
			    	    <div class="col-md cardInfo" >
			    	      <div class="card-body">
			    	        <div class="oneText">
			    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
			    		        <span class="card-text" style="font-size: 14pt;">2023-08-06 14:00 ~ 2023-08-06 22:00</span>
			    	        </div>
			    	      </div>
			    	    </div>
			    	  </div>
			    </div>
	   		
	   		</div>
	   	<button type="button" class="updatePlace">돌봄장소 수정완료</button><!-- 돌봄장소 등록완료 -->
	    <br><br>		
		
		<h3><span class="badge">운영 시간</span></h3>
		<div class="form-group">
		  <label for="open-time"><span class="badge sittingtime">시작 시간</span></label>
		  <select class="form-select" id="open-time">
		    <option value="1">1:00</option>
		    <option value="2">2:00</option>
		    <option value="3">3:00</option>
		    <option value="4">4:00</option>
		    <option value="5">5:00</option>
		    <option value="6">6:00</option>
		    <option value="7">7:00</option>
		    <option value="8">8:00</option>
		    <option value="9">9:00</option>
		    <option value="10">10:00</option>
		    <option value="11">11:00</option>
		    <option value="12">12:00</option>
		    <option value="13">13:00</option>
		    <option value="14">14:00</option>
		    <option value="15">15:00</option>
		    <option value="16">16:00</option>
		    <option value="17">17:00</option>
		    <option value="18">18:00</option>
		    <option value="19">19:00</option>
		    <option value="20">20:00</option>
		    <option value="21">21:00</option>
		    <option value="22">22:00</option>
		    <option value="23">23:00</option>
		    <option value="24">24:00</option>
		  </select>
		</div>
		
		<div class="form-group">
		  <label for="close-time"><span class="badge sittingtime">종료 시간</span></label>
		  <select class="form-select" id="close-time">
		    <option value="1">1:00</option>
		    <option value="2">2:00</option>
		    <option value="3">3:00</option>
		    <option value="4">4:00</option>
		    <option value="5">5:00</option>
		    <option value="6">6:00</option>
		    <option value="7">7:00</option>
		    <option value="8">8:00</option>
		    <option value="9">9:00</option>
		    <option value="10">10:00</option>
		    <option value="11">11:00</option>
		    <option value="12">12:00</option>
		    <option value="13">13:00</option>
		    <option value="14">14:00</option>
		    <option value="15">15:00</option>
		    <option value="16">16:00</option>
		    <option value="17">17:00</option>
		    <option value="18">18:00</option>
		    <option value="19">19:00</option>
		    <option value="20">20:00</option>
		    <option value="21">21:00</option>
		    <option value="22">22:00</option>
		    <option value="23">23:00</option>
		    <option value="24">24:00</option>
		  </select>
		</div>
		 <button type="button" class="updatePlace">운영시간 수정완료</button><!-- 운영시간 등록완료 -->
	
	</div>	
	
</div>

</body>
</html>