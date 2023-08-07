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
<title>팝업_펫시터</title>

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

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/main.css">

<style type="text/css">
/* 마이페이지 레이아웃 스타일 */
.container-mypage {
  margin: 20px;;
  padding: 30px; /* 테두리와 요소들 사이의 간격 조정 */
  border: 2px solid black; /* 폼에 테두리 설정 */
  border-radius: 10px; /* 테두리의 둥근 정도 설정 */
}
.myPageMain
{
	padding: 20px 20px 20px 20px;
}

.mypageSidevar
{
	padding: 20px 10px 20px 10px;
	background-color: white;
	border-left: 2px solid;
	
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
div.card {margin-bottom: 10px;}
div.card-header {padding: 5px; }
div.cardImage {padding-right: 0;}
div.cardInfo {padding-right: 0; padding-left: 0;}
div .porfilSu{margin-left:20px; width: 300px; }

.nick {font-size: 16pt;}
.oneText {margin-bottom: 3px; border-bottom: 1px solid gray; }
.detailBtn
{
	-webkit-appearance: none;
	  -moz-appearance: none;
	  appearance: none;
	  outline: 0;
	  border: 1px solid #53e3a6;
	  background-color: white;
	  padding: 5px 5px 5px 5px;
	  color: #53e3a6;
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
  padding: 20px; /* 테두리와 요소들 사이의 간격 조정 */
  border: 2px solid black; /* 폼에 테두리 설정 */
  border-radius: 10px; /* 테두리의 둥근 정도 설정 */
}

</style>
<!-- FONT jua -->
<style>
 @import url('https://fonts.googleapis.com/css?family=Jua:400');
.badge { font-family: "Jua"; }
.mypageSidevar { font-family: "Jua"; font-size: 15pt;}
.card-header { font-family: "Jua"; font-size: 17pt;}
.card {font-family: "Jua";}
</style>

</head>
<body>

<c:import url="/WEB-INF/components/HeaderForm.jsp">
</c:import>


	<div class="row">
				<div class="col-md-6">
					
					<h3><span class="badge">펫시팅(돌봄공간) 정보</span></h3>
					
				</div>
				<div class="col-md-6"> <!-- 이미지, 닉네임, 등급, 별점, 알람, 후기, 팔로잉 -->
					
					<h3><span class="badge">내 프로필(펫시터)</span></h3>
					
					<div class="card profil">
				    	  
				    	  <div class="row g-0">
				    	  	<div class="col-md-4">
				    	  		<img src="images/client.jpg" class="img-fluid rounded-start" alt="프로필이미지">
				    	  	</div>
				    	    <div class="col-md-8 cardInfo" >
				    	      <div class="card-body">
				    	      	<div class="oneText">
				    	      		<span class="card-text"><small class="text-muted">프로펫시터</small></span><br>
				    	      		<span class="nick card-text">폴폴이</span>
				    	      	</div>
				    		        <span class="card-text">4.8 ⭐  (40개의 후기)</span>
				    	        </div>
				    	        <div class="porfilSu">
			    		        	<small class="text-muted ">알람</small>&nbsp;&nbsp;
			    		        	<small class="text-muted">후기</small>&nbsp;&nbsp;
			    		        	<small class="text-muted">팔로잉</small><br>
				    		        <span>1건</span>&nbsp;&nbsp;
				    		        <span>30건</span>&nbsp;&nbsp;
				    		        <span>5건</span>
				    		    </div>
				    	      </div>
				    	    </div>
				     </div>
				   </div>
			</div>
			
			<div class="row">
				<div class="col-md-6">
					
					<h3><span class="badge">내가 서비스 할 예약(펫시터)</span></h3>
					
					<div class="card">
						<div class="card-header d-flex justify-content-between">
							펫시팅 <button type="button" class="detailBtn">자세히보러가기</button>
						</div>	
				    	  <div class="row g-0">
				    	    <div class="col-md cardInfo" >
				    	      <div class="card-body">
				    	      	<div class="oneText">
				    	      		<span class="nick card-text">폴폴이</span>
				    	      		<span class="card-text"><small class="text-muted">프로펫시터</small></span>
				    	      	</div>
				    	        <div class="oneText">
				    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
				    		        <span class="card-text">2023-08-08 14:00 ~ 2023-08-10 16:00</span>
				    	        </div>
				    	        <div class="oneText">
				    		        <span class="card-text"><small class="text-muted">지역(상세주소)</small></span><br>
				    		        <span class="card-text">서울시 마포구 어디동 어디로 어디길 어디주택 00동 00호</span>
				    	        </div>
				    	        <div class="oneText">
				    		        <span class="card-text"><small class="text-muted">함께할 반려견</small></span><br>
				    		        <span class="card-text">까미</span><br>
				    	        </div>
				    	      </div>
				    	    </div>
				    	  </div>
				    </div>
					
					<div class="card">
						<div class="card-header d-flex justify-content-between">
							펫시팅 <button type="button" class="detailBtn">자세히보러가기</button>
						</div>	
				    	  <div class="row g-0">
				    	    <div class="col-md cardInfo" >
				    	      <div class="card-body">
				    	      	<div class="oneText">
				    	      		<span class="nick card-text">폴폴이</span>
				    	      		<span class="card-text"><small class="text-muted">프로펫시터</small></span>
				    	      	</div>
				    	        <div class="oneText">
				    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
				    		        <span class="card-text">2023-08-08 14:00 ~ 2023-08-10 16:00</span>
				    	        </div>
				    	        <div class="oneText">
				    		        <span class="card-text"><small class="text-muted">지역(상세주소)</small></span><br>
				    		        <span class="card-text">서울시 마포구 어디동 어디로 어디길 어디주택 00동 00호</span>
				    	        </div>
				    	        <div class="oneText">
				    		        <span class="card-text"><small class="text-muted">함께할 반려견</small></span><br>
				    		        <span class="card-text">까미</span><br>
				    	        </div>
				    	      </div>
				    	    </div>
				    	  </div>
				    </div>
					
				</div>	
				
				<div class="col-md-6">
					
					<h3><span class="badge">나의 활동비율</span></h3>
					
					
				</div>
			</div>

<c:import url="/WEB-INF/components/FooterForm.jsp">
</c:import>

</body>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</html>