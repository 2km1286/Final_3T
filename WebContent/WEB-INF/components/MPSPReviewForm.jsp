<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MPSPBookForm.jsp</title>
<link rel="stylesheet" type="text/css" href="css/mdb.min.css">
<style type="text/css">

	.btn-style
	{
		margin: 5px;
	}
</style>
</head>
<body>
<div class="center">
  <div class="col-md-6 one" style="margin: 0%;">
    	
		
		<!-- 왼쪽 div -->
		<div class="card mb-3">
			
			<div class="container">
				<div class="row gx-2 ">
					<div class="col-md-6">
						핫도그님의 돌봄장소
					</div>
					
					<div class="col-md-6">
						찜 갯수
					</div>
				</div>
			</div>
			
			<!-- 돌봄장소 슬라이드 사진 시작 -->
		  <div id="carouselMaterialStyle" class="carousel slide carousel-fade card-img" data-mdb-ride="carousel">
		 <!-- Indicators -->
		 <div class="carousel-indicators">
			<button type="button" data-mdb-target="#carouselMaterialStyle" data-mdb-slide-to="0" class="active" aria-current="true"
			    aria-label="Slide 1"></button>
			<button type="button" data-mdb-target="#carouselMaterialStyle" data-mdb-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-mdb-target="#carouselMaterialStyle" data-mdb-slide-to="2" aria-label="Slide 3"></button>
		 </div><!-- end .carousel-indicators -->
		
		  <!-- Inner -->
		  <div class="carousel-inner rounded-5 shadow-4-strong">
		    <!-- Single item -->
		    <div class="carousel-item active">
		      <img src="https://mdbcdn.b-cdn.net/img/Photos/Slides/img%20(15).webp" class="d-block w-100"
		        alt="Sunset Over the City" />
		    </div>
		
		    <!-- Single item -->
		    <div class="carousel-item">
		      <img src="https://mdbcdn.b-cdn.net/img/Photos/Slides/img%20(22).webp" class="d-block w-100"
		        alt="Canyon at Nigh" />
		    </div>
		
		    <!-- Single item -->
		    <div class="carousel-item">
		      <img src="https://mdbcdn.b-cdn.net/img/Photos/Slides/img%20(23).webp" class="d-block w-100"
		        alt="Cliff Above a Stormy Sea" />
		    </div>
		  </div><!-- end .carousel-inner rounded-5 shadow-4-strong -->
		  <!-- end Inner -->
		
		  <!-- Controls -->
		  <button class="carousel-control-prev" type="button" data-mdb-target="#carouselMaterialStyle" data-mdb-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-mdb-target="#carouselMaterialStyle" data-mdb-slide="next">
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
		
		
		
		<!-- 왼쪽 div  끝 -->    
		
		
		<br />
		
		
		
		<br />	
    </div><!-- col-md-6 one -->
    

    <div class="col-md-6 two">
    
	
	<!-- 오른쪽 카드 구역 -->
	<div class="card">
		
		
		 
		  <!-- 수익, 등등 -->
		  <h5 class="card-title">
		  <button type="button" class="btn btn-warning">예약 내역</button>
		  <button type="button" class="btn btn-warning">후기 목록</button>
		  <button type="button" class="btn btn-warning">수익 관리</button>
		  <span class="text-right">$[7월 수익] 180,000원</span> </h5>	
		  <!-- 수익, 등등 끝-->
		<div class="card-body">  
		
		</div><!-- 연/월 선택 card-body 끝 -->
		
		
  	<div class="card-body">
    <h5 class="card-title">예약 내역</h5>
    <p class="card-text">
    <table class="table">
    	<tr>
    		<th>날짜</th>
    		<th>예약내역</th>
    		<th>상세보기</th>
    	</tr>
    	<tr>
    		<td>2023-07-30 13:00~17:00</td>
    		<td>비글 2마리</td>
    		<td>
    			<button type="button" class="btn btn-primary">Button</button>		
    		</td>
    	</tr>
    </table>
    </p>
    
  </div>
</div>
<!-- 오른쪽 카드 구역 끝 -->

    </div><!-- col-md-6 two -->
    </div>

</body>
</html>