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
<title>MPSeatingPlaceForm.jsp</title>
<link rel="stylesheet" type="text/css" href="css/mdb.min.css">
<style type="text/css">

	.btn-style
	{
		margin: 3px;
	}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
</head>
<body>

<div class="row all">
  <div class="col-md-6 one" style="margin: 0%;">
    	
		
		<!-- 왼쪽 div -->
		<div class="card">
		  <div class="card-body">
			<div class="container">
				<div class="row gx-2 ">
					<div class="col-md-6">
						핫도그님의 돌봄장소
					</div>
				</div>
			</div>
			
			<!-- 돌봄장소 슬라이드 사진 시작 -->
		  <div id="carouselMaterialStyle" class="carousel slide carousel-fade card-img" data-mdb-ride="carousel">
		
		  <!-- Inner -->
		  <div class="carousel-inner rounded-5 shadow-4-strong">
		    <!--Image-->
			<div>
			    <div class="mb-4 d-flex justify-content-center">
			        <img src="https://mdbootstrap.com/img/Photos/Others/placeholder.jpg"
			        alt="example placeholder" style="width: 300px;" />
			    </div>
			    <div class="d-flex justify-content-center">
			        <div class="btn btn-primary btn-rounded">
			            <label class="form-label text-white m-1" for="customFile1">Choose file</label>
			            <input type="file" class="form-control d-none" id="customFile1" />
			        </div>
			    </div>
			</div>
		  </div><!-- end .carousel-inner rounded-5 shadow-4-strong -->
		  <!-- end Inner -->
		
		</div>
		<!-- 돌봄장소 슬라이드 사진 끝 -->
		</div>
		
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
					<div class="text-end"><button type="button" class="btn btn-warning card-right text-end">등록완료</button></div>
			  </small>
		  </div>
		</div>
		</div>
		
		
	<!-- 왼쪽 div  끝 -->    
    </div><!-- col-md-6 one -->
    
	
	<!-- 오른쪽 -->
    <div class="col-md-6 two">
    
    
    </div><!-- 오른쪽 끝 -->

</body>
</html>