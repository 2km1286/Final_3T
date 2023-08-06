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
		// 돌봄장소 수정하기를 누르면
		$("#updateSPInfo").click(function()
		{
			$.ajax(
			{
				type:"POST"
				, url:"updateSPInfoForm.action"
				, async:true
				, success:function(data)
				{
					$("#sittingPlaceDiv").html(data);
										
				}
				, error:function(e)
				{
					alert(e.responseText);
				}
				
			});
			
			
		});
		
		
		
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
.sittingtime { font-size: 13pt;}
.mypageWalkMonDon {margin-left: 500px;}
.firstInfo { font-size: 15pt; font-weight: bold; color: #2dd0fc;}
</style>
</head>
<body>
	<div class="row" id="sittingPlaceDiv">
	    
	    <div class="col place" > 
			<div class="row">	
				<div class="col-md-4">	
					<h2><span class="badge">핫도그님의 돌봄장소</span></h2>
				</div>
				<div class="col-md-4">
					<h3><span class="badge">팔로워 5명</span></h3>
				</div>
				<div class="col-md-4">
					<button type="button" class="updatePlace">돌봄장소 변경하기</button>
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
			    <span class="firstInfo">[홈캠가능]</span>
			    <span class="firstInfo">[목욕 가능]</span>
			    <span class="firstInfo">[반려견 있음]</span>
			    <span class="firstInfo">[대형견 가능]</span><br> <!-- 4개마다 br하기 -->
			    <span class="firstInfo">[소/중형견 가능]</span>
			    
				<br>
			    <h3><span class="badge">최대 가능 견수</span></h3>
		    	<span class="firstInfo">[2마리]</span>
			    
			    <br><br>
			  	<h3><span class="badge">돌봄장소 이름</span></h3><!-- 가져와져있음 -->
			    <input type="text" id="" class="" style="width: 600px;" readonly="readonly">
			    
			    <br><br>
			  	<h3><span class="badge">돌봄장소 소개</span></h3><!-- 가져와져있음 -->
			    <textarea rows="5" cols="80" readonly="readonly"></textarea>
				
				<br><br>
				<h3><span class="badge">돌봄장소 공개/비공개</span></h3>
				<span class="firstInfo">[공개]</span>
				
				<br><br>
				<button type="button" class="updatePlace" id="updateSPInfo">돌봄장소 수정하기</button><!-- 첫 등록이라면 등록하기 -->
			</div>
				
	    </div><!-- 1행 1열 끝 -->
	    
	    <div class="col">
	    
	    	<div id="sittingUpdate"><!-- 오른쪽 -->
	    	
		    	<button type="button" id="bookList">예약내역</button>
		    	<button type="button" id="review">후기</button>
		    	<button type="button" id="money">수익</button>
		    
		    	<!-- 우선은 아래에 다 적는데 이 div #myPageSittingInfo에 ajax로 처리해주면 될것같습니다. 오른쪽 디폴트 예약 내역-->
		    	<div class="myPageSittingInfo" id="myPageSittingInfo"></div>	
		    	
		    	
		    	<div><!-- 예약내역 눌렀을 때 -->
		    		<div>달력이 있고</div>
		    		
		    		<h3><span class="badge">예약 내역</span></h3><!-- 그 달의 예약 내역이 보인다-->
		    		<div>
		    		
		    			<div class="card">
							<div class="card-header d-flex justify-content-between"">
								펫시팅 <button type="button" class="detailBtn">자세히보러가기</button>
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
					    
					    <div class="card">
							<div class="card-header d-flex justify-content-between"">
								펫시팅 <button type="button" class="detailBtn">자세히보러가기</button>
							</div>	
					    	  <div class="row g-0">
					    	    <div class="col-md cardInfo" >
					    	      <div class="card-body">
					    	        <div class="oneText">
					    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
					    		        <span class="card-text" style="font-size: 14pt;">2023-08-06 14:00 ~ 2023-08-06 22:00</span>
					    	        </div>
					    	      </div>
					    	    </div>
					    	  </div>
					    </div>
		    		
		    		</div>
			    		
		    	</div><!-- 예약내역 눌렀을 때 끝 -->
		    	
		    	<div><!-- 후기 눌렀을 때 -->
			    	
			    	<h3><span class="badge">후기</span></h3>
			    	<div>
			    		
			    		<div class="card reviewCard">
						  <img src="..." class="card-img-top"/>
						  <div class="card-body">
						    <h5 class="card-title">후기 제목 입니다아아아</h5>
						    <p class="card-text">후기 내용 어쩌고 저쩌고 </p>
						  </div>
						  <ul class="list-group list-group-light list-group-small">
						    <li class="list-group-item px-4">별점 : ⭐ </li>
						    <li class="list-group-item px-4">작성자 : 견주닉네임</li>
						    <li class="list-group-item px-4">작성일 : 2023-08-05 </li>
						  </ul>
						</div>
						
						<div class="card reviewCard">
						  <img src="..." class="card-img-top"/>
						  <div class="card-body">
						    <h5 class="card-title">후기 제목 입니다아아아</h5>
						    <p class="card-text">후기 내용 어쩌고 저쩌고 </p>
						  </div>
						  <ul class="list-group list-group-light list-group-small">
						    <li class="list-group-item px-4">별점 : ⭐ </li>
						    <li class="list-group-item px-4">작성자 : 견주닉네임</li>
						    <li class="list-group-item px-4">작성일 : 2023-08-05 </li>
						  </ul>
						</div>
			    		
			    	</div>
		    		
		    	</div><!-- 후기 눌렀을 때 끝 -->
		    	
		    	<div><!-- 수익 눌렀을 때 -->
		    		<h3><span class="badge">수익내역</span></h3>
					<div><!-- 수익내역 시작 -->
						<div class="mypageWalkMonDon">
							<p id="totalEarningsValue" class="superscript">이번달 총 수익</p>
							<h4><span id="totalEarningsLabel">1,000,000 원</span></h4>
				        </div>
						
						<table class="EndTable">
						    <tr>
						      <th class="EndTh">서비스 완료일</th>
						      <th class="EndTh">매칭상대(닉네임)</th>
						      <th class="EndTh">가격</th>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						   <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						</table>
						
					</div><!-- 수익내역 끝 -->
		    	
		    	</div><!-- 수익 눌렀을 때 끝 -->
		    	
	    	</div>
	    	
	    </div><!-- 1행 2열 끝 -->
  	</div><!-- 1행 끝 -->			
</body>
</html>




