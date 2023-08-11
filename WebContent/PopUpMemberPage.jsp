<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팝업_일반회원</title>

<!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Dosis:400,500|Poppins:400,700&display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

<style type="text/css">
.container-mypage {
  margin: 20px;;
  padding: 20px; /* 테두리와 요소들 사이의 간격 조정 */
  border: 2px solid black; /* 폼에 테두리 설정 */
  border-radius: 50px; /* 테두리의 둥근 정도 설정 */
  width: 1700px;
}
.badge	
{-webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  outline: 0;
  border: 0;
  padding: 10px 15px;
  border-radius: 3px;
  cursor: pointer;
  font-size: 18px;
  -webkit-transition-duration: 0.25s;
  transition-duration: 0.25s;
}
div.col-md-6 { padding: 20px 20px 20px 20px; }
div.card-header {padding: 5px; }
div.cardImage {padding-right: 0;}
div.cardInfo {padding-right: 0; padding-left: 0;}
div .porfilSu{margin-left:20px; width: 300px; }

.nick {font-size: 16pt;}
.detailBtn
{
	-webkit-appearance: none;
	  -moz-appearance: none;
	  appearance: none;
	  outline: 0;
	  border: 1px solid #4caf50;
	  background-color: white;
	  padding: 5px 5px 5px 5px;
	  color: #4caf50;
	  border-radius: 3px;
	  width: 120px;
	  height: 35px;
	  cursor: pointer;
	  font-size: 18px;
	  -webkit-transition-duration: 0.25s;
	  transition-duration: 0.25s;
}

div.profil
{ 
  padding: 20px;
  border: 2px solid black; 
  border-radius: 10px;
  width: 500px;
  margin: 100px 20px 20px 20px;
}
.carousel-control-prev, .carousel-control-next
{
    background-color: transparent; /* 배경색 투명으로 설정 */
    border: none; /* 테두리 제거 */
}

.petCard {width: 320px;}
 .petCardContainer
{
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
	width: 700px;
}
.px-4 {padding: 2px 5px 2px 5px; width: 320px; }

</style>
<!-- FONT jua -->
<style>
 @import url('https://fonts.googleapis.com/css?family=Jua:400');
.badge { font-family: "Jua"; }
.card-header { font-family: "Jua"; font-size: 17pt;}
.card {font-family: "Jua";}
.superscript {font-family: "Jua";}
</style>

</head>
<body>
<div class="container-mypage">
	<div class="row">
				<div class="col-md-6"><!-- 1행 1열 시작 -->
				<h3><span class="badge">반려견 카드</span></h3>
					<div class="petCardContainer"><!-- 반려견 카드 목록 시작 -->
				
					<div class="card petCard">
						<img src="images/cute.png" class="card-img-top" style="width: 100%;">
						<div class="card-body">
						<h5 class="card-title">인절미</h5>
						<p class="card-text">특이사항이 적혀있어요. 우리 절미는 뛰는걸 싫어해요. 걷기만 해주세요</p>
					</div>
						<ul class="list-group list-group-light list-group-small">
							<li class="list-group-item px-4">성별 : <span>남</span> </li>
							<li class="list-group-item px-4">무게(kg) : <span>15</span> </li>
							<li class="list-group-item px-4">출생년도 : <span>2020</span> </li>
							<li class="list-group-item px-4">종 : <span>시고르브잡종</span> </li>
						</ul>
					</div>
					
					
					<div class="card petCard">
						<img src="images/cute.png" class="card-img-top" style="width: 100%;">
						<div class="card-body">
						<h5 class="card-title">인절미</h5>
						<p class="card-text">특이사항이 적혀있어요. 우리 절미는 뛰는걸 싫어해요. 걷기만 해주세요</p>
					</div>
						<ul class="list-group list-group-light list-group-small">
							<li class="list-group-item px-4">성별 : <span>남</span> </li>
							<li class="list-group-item px-4">무게(kg) : <span>15</span> </li>
							<li class="list-group-item px-4">출생년도 : <span>2020</span> </li>
							<li class="list-group-item px-4">종 : <span>시고르브잡종</span> </li>
						</ul>
					</div>
					
				</div><!-- 반려견 카드 목록 끝 -->
				</div><!-- 1행 1열 끝 -->
				<div class="col-md-6">
					
					<h3><span class="badge">내 프로필(대리산책러)</span></h3>
					
					<div class="card profil">
				    	  
				    	  <div class="row g-0">
				    	  	<div class="col-md-4">
				    	  		<img src="images/client.jpg" class="img-fluid rounded-start" alt="프로필이미지">
				    	  	</div>
				    	    <div class="col-md-8 cardInfo" >
				    	      <div class="card-body">
				    	      	<div class="oneText">
				    	      		<span class="card-text"><small class="text-muted">일반회원</small></span><br>
				    	      		<span class="nick card-text">폴폴이</span>
				    	      	</div>
				    		        <span class="card-text">달린 후기가 없습니다.</span>
				    	        </div>
				    	        <div class="porfilSu">
			    		        	<small class="text-muted ">알람</small>&nbsp;&nbsp;&nbsp;
			    		        	<small class="text-muted">후기</small>&nbsp;&nbsp;&nbsp;
			    		        	<small class="text-muted">팔로잉</small><br>
				    		        <span>1건</span>&nbsp;&nbsp;&nbsp;
				    		        <span>30건</span>&nbsp;&nbsp;&nbsp;
				    		        <span>5건</span>
				    		    </div>
				    	      </div>
				    	    </div>
				     </div>
				   </div>
			</div>
			
			<div class="row">
				<div class="col-md-6">
					
					<h3><span class="badge">확정된 예약</span></h3>
					
					<div class="card" style="margin-bottom: 10px;">
								<div class="card-header d-flex justify-content-between"">
									대리산책 <button type="button" class="detailBtn">자세히보러가기</button>
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
						    
					<div class="card" style="margin-bottom: 10px;">
								<div class="card-header d-flex justify-content-between"">
									대리산책 <button type="button" class="detailBtn">자세히보러가기</button>
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
					
					
				</div>	
				
				<div class="col-md-6" >
					
					<h3><span class="badge">나의 활동비율</span></h3>
					
					
				</div>
			</div>
</div>
</body>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</html>