<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="./images/logo_transparent.png"/>
<link rel="stylesheet" href="css/mdb.min.css" />
<meta charset="UTF-8"> 
<title>PopupMemberForm</title>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<style type="text/css">

.mypageListCard { background-color: #fcf8de; border-radius: 10px; height: 180px; margin-bottom: 20px; position: relative;}
.mypageListCard .card-body { height: 100%; }
.mypageListTitle { font-size: 20px; font-weight: bold; background-color: white; padding: 5px; }
.mypageListSub {font-size: 18px; font-weight: bold;}
.mypageNomore
{ 
	background-color: #FFE090; font-size: 15px; font-weight: bold; margin-left: 500px; 
	position: absolute; position: absolute; bottom: 10px; right: 10px;
}

.popRowCol { margin-bottom: 20px; }
.popMypet, .popMyprofil { position: relative; height: 600px; overflow: auto; padding-left: 200px;}
.popPetCard { margin-bottom: 30px; width: 30rem; }
.popCol {padding: 10px 20px 10px 20px; border: solid 1px #FFE090;}
.petTag { font-size: 13pt;}
.popMyres { position: relative; height: 400px; overflow: auto; }

/* 팝업 프로필카드스타일 */
.profile-card {
 display: grid;
 grid-template-columns: repeat(3, 1fr);
 grid-template-rows: repeat(3, 1fr);
 gap: 10px;
 background-color: #FFE090;
 border-radius: 10px;
 padding: 10px;
 grid-template-areas: 
   "image nickname nickname"
   "grade rating reviews"
   "notifications reservations following";
  width: 600px;
  height: 300px;
  font-size: 18px;
}
.profile-picture {
  grid-area: image;
  width: 100px;
  height: 100px;
  object-fit: cover; /* 이미지의 비율을 유지하면서 크기에 맞게 조정 */
  overflow: scale-down;
}
.proPic { width: 100px;  height: 100px; }
.user-nickname { grid-area: nickname;}
.proName { font-size: 35px;}
.user-grade {grid-area: grade;width: 200px;}
.user-rating {grid-area: rating;width: 200px;}
.user-review-count {grid-area: reviews;width: 200px;margin-right: 20px;}
.notification-count {grid-area: notifications;color: #888;  width: 200px;}
.reservation-count { grid-area: reservations;color: #888; width: 200px;}
.following-count { grid-area: following; color: #888; width: 200px;}
.popProDiv { margin-top: 100px; margin-bottom: 200px;}
/* 팝업 프로필카드스타일 끝 */
	
</style>

</head>
<body>

<div class="row">
<div class="col-md-7 popCol"> 
<h3><span class="badge badge-warning popBadge">내 반려견</span></h3>
	<div class="row popRowCol"> <!-- 내 반려견 -->
		<div class="col-md-12">
			<!-- Spied element -->
		    <div
               data-mdb-spy="scroll"
               data-mdb-target="#scrollspy1"
               data-mdb-offset="0"
               class="scrollspy-example popMypet"
            >
	            <section>
					
					<div class="card popPetCard">
					  <img src="https://mdbcdn.b-cdn.net/img/new/standard/city/062.webp" class="card-img-top" alt="Chicago Skyscrapers"/>
					  <div class="card-body">
					    <h5 class="card-title">까미</h5>
					    <p class="card-text">까미 특이사항 ~~~~ </p>
					  </div>
					  <ul class="list-group list-group-light list-group-small">
					    <li class="list-group-item px-4">성별 : <span>O</span> </li>
					    <li class="list-group-item px-4">종 : <span>시고르브잡종</span> </li>
					    <li class="list-group-item px-4">태어난 날 : <span>2023.07.30</span></li>
					    <li class="list-group-item px-4">반려견 정보 : 
					    	<span class="badge rounded-pill badge-warning petTag">소형견</span>
					    </li>									  
					  </ul>
					</div>
					
				</section>
				
				<section>
					
					<div class="card popPetCard">
					  <img src="https://mdbcdn.b-cdn.net/img/new/standard/city/062.webp" class="card-img-top" alt="Chicago Skyscrapers"/>
					  <div class="card-body">
					    <h5 class="card-title">구찌</h5>
					    <p class="card-text">구찌 특이사항 ~~~~ </p>
					  </div>
					  <ul class="list-group list-group-light list-group-small">
					    <li class="list-group-item px-4">성별 : <span>O</span> </li>
					    <li class="list-group-item px-4">종 : <span>시고르브잡종</span> </li>
					    <li class="list-group-item px-4">태어난 날 : <span>2023.07.30</span></li>
					    <li class="list-group-item px-4">반려견 정보 : 
					    	<span class="badge rounded-pill badge-warning petTag">소형견</span>
					    </li>									  
					  </ul>
					</div>

				</section>
			
			</div>
		    <!-- Spied element -->
		</div>
	</div> <!-- 내 반려견 끝 -->
	
	<div class="row"> <!-- 확정된 예약 -->
	<h3><span class="badge badge-warning popBadge">확정된 예약(견주)</span></h3>
		<div class="col-md-12">
			<div
               data-mdb-spy="scroll"
               data-mdb-target="#scrollspy1"
               data-mdb-offset="0"
               class="scrollspy-example popMyres"
            >
	            <section>
					
					<div class="card mypageListCard">
					  <div class="card-body">
					    <h5 class="card-title mypageListTitle">대리산책</h5>
					    <p class="card-text">
					    <span class="mypageListSub">[만남장소]</span>
					    <span>서울시 도봉구 시루봉로 OO공원 2번 출구 앞</span><br>
					    <span class="mypageListSub">[산책시작일시 ~ 산책종료일시]</span>
					    <span> 2023-07-29 14:00 ~ 2023-07-29 16:00</span><br>
					    <span class="mypageListSub">[선택한 반려견]</span>
					    <span>까미</span><br>
					    <button type="button" class="btn btn-primary mypageNomore">자세히보기</button>
					    </p>
					  </div>
					</div>
					
				</section>
				
				<section>
					
					<div class="card mypageListCard">
					  <div class="card-body">
					    <h5 class="card-title mypageListTitle">펫시팅</h5>
					    <p class="card-text">
					    <span class="mypageListSub">[돌봄장소]</span>
					    <span>서울시 도봉구 시루봉로 OO길 OO-OO OO아파트 OOO동 OOO호</span><br>
					    <span class="mypageListSub">[펫시팅시작일시 ~ 펫시팅종료일시]</span>
					    <span> 2023-07-29 14:00 ~ 2023-07-30 10:00</span><br>
					    <span class="mypageListSub">[선택한 반려견]</span>
					    <span>구찌</span><br>
					    <button type="button" class="btn btn-primary mypageNomore">자세히보기</button>
					    </p>
					  </div>
					</div>

				</section>
				
				<section>
					
					<div class="card mypageListCard">
					  <div class="card-body">
					    <h5 class="card-title mypageListTitle">펫시팅</h5>
					    <p class="card-text">
					    <span class="mypageListSub">[돌봄장소]</span>
					    <span>서울시 도봉구 시루봉로 OO길 OO-OO OO아파트 OOO동 OOO호</span><br>
					    <span class="mypageListSub">[펫시팅시작일시 ~ 펫시팅종료일시]</span>
					    <span> 2023-07-29 14:00 ~ 2023-07-30 10:00</span><br>
					    <span class="mypageListSub">[선택한 반려견]</span>
					    <span>구찌</span><br>
					    <button type="button" class="btn btn-primary mypageNomore">자세히보기</button>
					    </p>
					  </div>
					</div>
					
				</section>
				
			</div>	
		</div>
	</div> <!-- 확정된 예약 끝-->
	
</div>

<div class="col-md-5 popCol">
	
	<div class="row popProDiv"> <!-- 내 프로필 -->
	<h3><span class="badge badge-warning popBadge">내 프로필</span></h3>
		<div class="col-md-12">
			
			<div class="profile-card">
			    <div class="profile-picture">
			      <img src="images/profilEx.png" alt="프로필 이미지" class="proPic">
			    </div>
			    <div class="user-nickname">
			    	<span class="badge badge-warning">닉네임</span><br>
			    	<span class="proName">폴폴이</span><br>
			    </div>
			    <div class="user-grade">
			    	<span class="badge badge-warning">등급</span><br>
			    	<span>(등급이 없습니다.)</span>
			    </div>
			    <div class="user-rating">
			    <span class="badge badge-warning">별점</span><br>
			    	<span>(달린 별점이 없습니다.)</span>
			    </div>
			    <div class="user-review-count">
			    	<span class="badge badge-warning">후기</span><br>
			    	<span>(달린 후기가 없습니다.)</span>
			    </div>
			    <div class="notification-count">
			    	<span class="badge badge-warning">알림</span><br>
			    	<span>1건</span>
			    </div>
			    <div class="reservation-count">
					<span class="badge badge-warning">진행중인 예약</span><br>
			    	<span>1건</span>
				</div>
			    <div class="following-count">
					<span class="badge badge-warning">팔로잉</span><br>
			    	<span>1건</span>
				</div>
			 </div>
								
		</div>	
	</div> <!-- 내 프로필 끝 -->
	
	<div class="row"> <!-- 맡겨보개 이용 비율 -->
	<h3><span class="badge badge-warning popBadge">맡겨보개 이용 비율</span></h3>
		<div class="col-md-12">
			<canvas id="myPieChart" width="400" height="400"></canvas>
			  <script>
			    var data = {
			      labels: ['펫시팅 서비스', '대리산책 서비스'],
			      datasets: [{
			        data: [30, 70],
			        backgroundColor: ['#FF6384', '#36A2EB'],
			      }],
			    };
			
			    var ctx = document.getElementById('myPieChart').getContext('2d');
			    var myPieChart = new Chart(ctx, {
			      type: 'pie',
			      data: data,
			      options: {
			        responsive: false,
			      },
			    });
			  </script>			
		</div>
	</div> <!-- 맡겨보개 이용 비율-->
	</div>
</div>


</body>
</html>