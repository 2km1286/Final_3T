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

<style type="text/css">
.place
{
	padding: 20px; /* 테두리와 요소들 사이의 간격 조정 */
  	border-right: 2px solid black;
}

</style>
</head>
<body>
	<div class="row">
	    <div class="col place">
			<div class="row">
				<div class="col-md-6">
					핫도그님의 돌봄장소
				</div>
				<div class="col-md-6">
					팔로워:5명
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
			    <span class="visually-hidden">Previous</span>
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Next</span>
			  </button>
			</div>
			<!-- 돌봄장소 슬라이드 사진 끝 -->
			
			
			<!-- Carousel wrapper -->
			  <div class="card-body">
			    <h5 class="card-title">돌봄장소 어필 태그(검색태그)</h5>
			    <p class="card-text">
			      <div class="row gx-5">
					  <div class="col-4">
					  	<button type="button" class="btn btn-primary btn-rounded btn-style" data-mdb-ripple-color="dark">홈캠 가능</button>
					  </div>
					   <div class="col-4">
					  	<button type="button" class="btn btn-primary btn-rounded btn-style" data-mdb-ripple-color="dark">목욕 가능</button>
					  </div>
					   <div class="col-4">
					  	<button type="button" class="btn btn-primary btn-rounded btn-style" data-mdb-ripple-color="dark">응급처치 가능</button>
					  </div>
					   <div class="col-4">
					  	<button type="button" class="btn btn-primary btn-rounded btn-style" data-mdb-ripple-color="dark">반려견유무</button>
					  </div>
					   <div class="col-4">
					  	<button type="button" class="btn btn-primary btn-rounded btn-style" data-mdb-ripple-color="dark">꼼꼼한 타임라인</button>
					  </div>
					   <div class="col-4">
					  	<button type="button" class="btn btn-primary btn-rounded btn-style" data-mdb-ripple-color="dark">모발관리 가능</button>
					  </div>
					   <div class="col-4">
					  	<button type="button" class="btn btn-primary btn-rounded btn-style" data-mdb-ripple-color="dark">장애견 케어 가능</button>
					  </div>
					   <div class="col-4">
					  	<button type="button" class="btn btn-primary btn-rounded btn-style" data-mdb-ripple-color="dark">노견 케어 가능</button>
					  </div>
				 </div>
			    <p class="card-text">
			    <p class="card-text">
			    	최대 가능 견수
			    	<select name="max-dog" id="max-dog">
			    		<option value="1">1마리</option>
			    		<option value="2">2마리</option>
			    		<option value="3">3마리</option>
			    		<option value="4">4마리</option>
			    		<option value="5">5마리</option>
			    	</select>
			    </p>
			    <form>
					  <!-- Name input -->
					  <div class="form-outline mb-4">
					    <input type="text" id="form4Example1" class="form-control" />
					    <label class="form-label" for="form4Example1">돌봄장소 이름</label>
					  </div>
					
					  <!-- Message input -->
					  <div class="form-outline mb-4">
					    <textarea class="form-control" id="form4Example3" rows="4"></textarea>
					    <label class="form-label" for="form4Example3">돌봄장소 소개</label>
					  </div>
				</form>
			      <small class="text-muted">
						<!-- Checked switch -->
						<div class="form-check form-switch">
						  <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked />
						  <label class="form-check-label" for="flexSwitchCheckChecked">공개/비공개</label>
						</div>
						<div class="text-end"><button type="button" class="btn btn-warning card-right text-end">수정</button></div>
				  </small>
			  </div>
	    </div>
	    <div class="col">
	      
	    </div>
  	</div>			
</body>
</html>




