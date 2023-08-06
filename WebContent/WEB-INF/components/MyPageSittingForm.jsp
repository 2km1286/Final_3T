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

<script type="text/javascript">

	$(function()
	{
		//alert("확인");
		$("#bookList").click(function()
		{
			$.ajax(
			{
				type:"POST"
				, url:"myPageSittingBookList.action"
				, async:true
				, success:function(data)
				{
					$("#myPageSittingInfo").html(data);
										
				}
				, error:function(e)
				{
					alert(e.responseText);
				}
				
			});
			
		});
		
		
		
	});
	

</script>

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
	    <div class="col place"> <!-- 펫시터 위상이 있다면 처음 들어왔을 때 채워진 상태. 한 마디로==업데이트폼 -->
	    						<!-- 그러므로 펫시터가 되고 첫 등록이라면 아무것도 채워져 있지 않다.  -->
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
			    <input type="file">
			    
			  	<h3><span class="badge">돌봄장소 이름</span></h3>
			    <input type="text" id="" class="" style="width: 600px;">
			    
			  	<h3><span class="badge">돌봄장소 소개</span></h3>
			    <textarea rows="5" cols="80"></textarea>
					  
			    <div class="form-check checkBox">
					<input class="form-check-input" type="checkbox" value="open" id="openClose">
					<label class="form-check-label" for="openClose">공개/비공개</label><br>
				</div>
				
				<button type="button" class="updatePlace">돌봄장소 수정</button>
				
			</div>
			
			<div>
				<div class="form-group">
				  <label for="open-time"><h3><span class="badge">시작 시간</span></h3></label>
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
				  <label for="close-time"><h3><span class="badge">종료 시간</span></h3></label>
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
				
				 <button type="button" class="updatePlace">운영시간 수정</button>


			</div>	
	    </div><!-- 1행 1열 끝 -->
	    
	    <div class="col">
	    
	    	<div><!--  -->
		    	<button type="button" id="bookList">예약내역</button>
		    	<button type="button" id="review">후기</button>
		    	<button type="button" id="money">수익</button>
		    
		    	
		    
		    	<div class="myPageSittingInfo" id="myPageSittingInfo"></div>	
		    	
	    	</div>
	    	
	    </div><!-- 1행 2열 끝 -->
  	</div><!-- 1행 끝 -->			
</body>
</html>




