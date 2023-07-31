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
<title>PopupSittingForm</title>

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
.popCol {padding: 10px 20px 10px 20px;}
.petTag { font-size: 13pt;}
.popMyres { position: relative; height: 400px; overflow: auto; }

/* 팝업 프로필카드스타일 */
.profile-card {
 display: grid;
 grid-template-columns: repeat(3, 1fr);
 grid-template-rows: repeat(3, 1fr);
 gap: 10px;
 background-color: #fcf8de;
 border-radius: 10px;
 padding: 10px;
 grid-template-areas: 
   "image nickname nickname"
   "grade rating reviews"
   "notifications reservations following";
  width: 600px;
  height: 300px;
  width: 610px;
  font-size: 20px;
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
.user-review-count {grid-area: reviews;width: 200px;}
.notification-count {grid-area: notifications;color: #888;  width: 200px;}
.reservation-count { grid-area: reservations;color: #888; width: 200px;}
.following-count { grid-area: following; color: #888; width: 200px;}
.popProDiv {margin-bottom: 210px;}
/* 팝업 프로필카드스타일 끝 */
.mypageWalkMonDon {width: 200px; font-size: 15pt; padding-top: 40px;}
.sittingPlace { border: 1px solid #FFE090; width: 500px; height: 500px;}	
.popWlakInfo { width: 700px; margin-left: 100px;}

</style>

</head>
<body>

<div class="row">
<div class="col-md-7 popCol"> 
<h3><span class="badge badge-warning popBadge">펫시팅 정보</span></h3>
	<div class="row popRowCol"> <!-- 펫시터 정보 -->
		<div class="col-md-12">
			<div class="row popWlakInfo">
				<div class="col-md-6 sittingPlace">
					돌봄장소 사진? 돌봄장소가 뿌려질 곳
				</div>
				<div class="col-md-6 mypageWalkMonDon">
					<span class="badge badge-warning popBadge">수익</span>
					<p id="totalEarningsValue" class="superscript">이번달 총 수익</p>
					<h4><span id="totalEarningsLabel">1,000,000 원</span></h4><br>
					<p class="badge badge-warning popBadge">별점</p><br>
					<span>4.9점</span><br><br>
					<p class="badge badge-warning popBadge">후기</p><br>
					<span>20건의 후기</span>
				</div>
			</div>
		</div>
	</div> <!-- 펫시팅 정보 끝 -->
	
	<div class="row"> <!-- 확정된 예약 -->
	<h3><span class="badge badge-warning popBadge">내가(펫시터) 서비스 할 예약</span></h3>
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
	</div> <!-- 내가(펫시터) 서비스 할 예약 -->
	
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
			    	<span>초보펫시터</span>
			    </div>
			    <div class="user-rating">
			    <span class="badge badge-warning">별점</span><br>
			    	<span>4.9</span>
			    </div>
			    <div class="user-review-count">
			    	<span class="badge badge-warning">후기</span><br>
			    	<span>20건</span>
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
			      labels: ['견주', '대리산책러', '펫시터'],
			      datasets: [{
			        data: [20, 30, 50],
			        backgroundColor: ['#FF6384', '#82f77e', '#78aafa'],
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