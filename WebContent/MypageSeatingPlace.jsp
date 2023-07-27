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
<title>MypageSeatingPlace.jsp</title>
<link rel="stylesheet" type="text/css" href="css/mdb.min.css">
<style type="text/css">

	.one
	{
		background-color: lightgray;
	}
	.two
	{
		background-color: lightgray;
	}
	.three
	{
		background-color: lightblue;
	}

</style>
</head>
<body>

<div class="container">
  <div class="row gx-5 ">

    <div class="col-md-6 one">
    	<br />
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
    
		<!-- Carousel wrapper -->
		<div id="carouselMaterialStyle" class="carousel slide carousel-fade" data-mdb-ride="carousel">
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
		</div><!-- carousel slide carousel-fade -->
		<!-- Carousel wrapper -->
		<br />
		
		<div class="row gx-5">
		  <div class="col-4">
		  	<button type="button" class="btn btn-outline-warning btn-rounded" data-mdb-ripple-color="dark">홈캠 가능</button>
		  </div>
		   <div class="col-4">
		  	<button type="button" class="btn btn-outline-warning btn-rounded" data-mdb-ripple-color="dark">목욕 가능</button>
		  </div>
		   <div class="col-4">
		  	<button type="button" class="btn btn-outline-warning btn-rounded" data-mdb-ripple-color="dark">응급처치 가능</button>
		  </div>
		   <div class="col-4">
		  	<button type="button" class="btn btn-outline-warning btn-rounded" data-mdb-ripple-color="dark">반려견유무</button>
		  </div>
		   <div class="col-4">
		  	<button type="button" class="btn btn-outline-warning btn-rounded" data-mdb-ripple-color="dark">꼼꼼한 타임라인</button>
		  </div>
		   <div class="col-4">
		  	<button type="button" class="btn btn-outline-warning btn-rounded" data-mdb-ripple-color="dark">모발관리 가능</button>
		  </div>
		   <div class="col-4">
		  	<button type="button" class="btn btn-outline-warning btn-rounded" data-mdb-ripple-color="dark">장애견 케어 가능</button>
		  </div>
		   <div class="col-4">
		  	<button type="button" class="btn btn-outline-warning btn-rounded" data-mdb-ripple-color="dark">노견 케어 가능</button>
		  </div>
		</div>
		
		<br />	
    </div><!-- col-md-6 one -->

    <div class="col-md-6 two">

    </div>

  </div>
</div>


</body>
</html>