<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath(); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대리산책러 리스트업 페이지</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
<!-- Google Fonts Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
<!-- MDB -->
<link rel="stylesheet" href="css/mdb.min.css" />

<style>
	#search-button
	{ width: 50px; 
      height: 50px; 
    }	
    
    .btn-custom {border-radius: 50px !important;}
    
    .fas.fa-star {color: gold;}
    
    .rounded-card {border-radius: 20px !important;}
    
    .smaller .form-control {
  		height: 30px;
  		font-size: 0.8rem;
	}
	
	.smaller .btn {
  		height: 30px;
  		font-size: 0.8rem;
	}
	
</style>


</head>
<body>

<section>
	<div>
		<c:import url="/WEB-INF/components/MenuForm.jsp"></c:import>
	</div>
</section>
<br><br>

<!-- 제일 상단의 2개의 버튼 -->
<div class="row justify-content-end text-end">
	<div class="col-auto">
		<button type="button" class="btn btn-outline-warning btn-rounded" data-mdb-ripple-color="dark" >대리산책 공고 등록하기</button>
	</div>
	<div class="col-auto">
		<button type="button" class="btn btn-outline-warning btn-rounded" data-mdb-ripple-color="dark" >대리산책러 되기</button>
	</div>
</div>
<br><br>

		
<!-- 지역, 날짜, 시간, 견수 필터 검색창  -->
	<div class="container my-5">
  			<form>
    			<div class="row">
      			<div class="col">
        		<input type="text" class="form-control" placeholder="지역" aria-label="지역">
      	</div>
     	 <div class="col">
        		<input type="datetime-local" class="form-control" aria-label="날짜와 시간">
      	</div>
      	<div class="col">
        	<select class="form-select" aria-label="견수">
          		<option selected>견수 선택</option>
          		<option value="1">1마리</option>
          		<option value="2">2마리</option>
        	</select>
      	</div>
     	 <div class="col">
        	<button type="submit" class="btn btn-warning">검색</button>
      	</div>
    	</div>
  		</form>
	</div>
	
	<!-- 검색창 밑에 선택할 수 있는 태그들 -->
	<div class="container my-5">
		<button type="button" class="btn btn-outline-warning btn-rounded" data-mdb-ripple-color="dark">대형견 가능</button>
		<button type="button" class="btn btn-warning btn-rounded">노견 케어</button>
		<button type="button" class="btn btn-outline-warning btn-rounded" data-mdb-ripple-color="dark">2마리 가능</button>
	</div>
	<br><br>

<!-- 검색 필터링된 대리산책러의 프로필 리스트들 -->
 <div class="container mt-3">
 	<div class="row">
 		<div class="col-md-4">
    	<div class="card rounded-card" style="width: 25rem; height: 550px;">
      <div class="card-header row">
        대리산책러 프로필&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div class="col">
	  	 <button type="button" class="btn btn-danger btn-custom">
    		<i class="fas fa-heart"></i> 찜하기
  		  </button>
      </div>
      </div>
		      
      <div class="card-body">
        <img src="./images/person.png" alt="프로필 이미지" class="img-fluid float-left rounded-circle mr-3 mb-3" style="width: 150px; height: 150px;">
        <div class="row">
    		<div class="col d-flex align-items-center">
        		<h5 class="card-title mr-3">마스터 산책러</h5>&nbsp;&nbsp;
        		<h4 class="card-title">멍뭉마스터</h4>
    		</div>
		</div>
        <p class="card-text">아이에게 편안한 환경을 제공합니다!</p>
        <p class="card-text">서울시 마포구 월드컵북로</p>
        
        <div>
        	<button type="button" class="btn btn-outline-secondary btn-rounded" data-mdb-ripple-color="dark">대형견 가능</button>
        	<button type="button" class="btn btn-outline-secondary btn-rounded" data-mdb-ripple-color="dark">노견 가능</button>
        </div>
        <br>
         
        	<ul class="list-group list-group-flush">
          		<div class="row">
    				<div class="col d-flex align-items-center">
        				<i class="fas fa-star"></i>&nbsp;
        				<a href="" class="ml-2">81개의 후기</a>
    				</div>
    				<div class="col d-flex align-items-center">
        			15,000 / 1시간
    				</div>
				</div>
        	</ul>
        	<br>
        	
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	&nbsp;&nbsp;&nbsp;&nbsp;
        	<button type="button" class="btn btn-light btn-custom">
    		<i class="fas fa-exclamation-triangle mr-2"></i> 프로필 신고
		  </button>
		  <br>
      	</div>
      	
    </div>
    </div>
  <br><br>
  &nbsp;
 
 <!-- 대리산책러 두번째 프로필 -->
 		<div class="col-md-4">
    	<div class="card rounded-card" style="width: 25rem; height: 550px;">
      <div class="card-header row">
        대리산책러 프로필&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div class="col">
	  	 <button type="button" class="btn btn-outline-danger btn-custom">
    		<i class="fas fa-heart"></i> 찜하기
  		  </button>
      </div>
      </div>
      
      
      <div class="card-body">
        <img src="./images/person.png" alt="프로필 이미지" class="img-fluid float-left rounded-circle mr-3 mb-3" style="width: 150px; height: 150px;">
        <div class="row">
    		<div class="col d-flex align-items-center">
        		<h5 class="card-title mr-3">프로 산책러</h5>&nbsp;&nbsp;
        		<h4 class="card-title">은평구체육인</h4>
    		</div>
		</div>
        <p class="card-text">은평구 산책은 저에게 맡겨주세요!</p>
        <p class="card-text">서울시 마포구 월드컵북로</p>
        
        <div>
        	<button type="button" class="btn btn-outline-secondary btn-rounded" data-mdb-ripple-color="dark">대형견 가능</button>
        	<button type="button" class="btn btn-outline-secondary btn-rounded" data-mdb-ripple-color="dark">노견 가능</button>
        	<button type="button" class="btn btn-outline-secondary btn-rounded" data-mdb-ripple-color="dark">2마리 가능</button>
        </div>
        <br>
         
        	<ul class="list-group list-group-flush">
          		<div class="row">
      	<!-- <div class="col d-flex align-items-center">
          				<a href="" class="ml-1">4.2</a>
          			</div> -->
    				<div class="col d-flex align-items-center">
        				<i class="fas fa-star"></i>&nbsp;
        				<a href="" class="ml-1">12개의 후기</a>
    				</div>
    				<div class="col d-flex align-items-center">
        			15,000 / 1시간
    				</div>
				</div>
        	</ul>
        	<br>
        	
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	&nbsp;&nbsp;&nbsp;&nbsp;
        	<button type="button" class="btn btn-light btn-custom">
    		<i class="fas fa-exclamation-triangle mr-2"></i> 프로필 신고
		  	</button>
		  	
		  	
		  
		          	
      	</div><!-- .card body  -->
    </div>
    </div><!-- .col-md-4 -->
    

    
    </div><!-- .row  -->
</div><!-- .container mt-3 -->
<br><br>
  

<section>
	<div>
		<c:import url="/WEB-INF/components/FooterForm.jsp"></c:import>
	</div>
</section>


</body>
</html>