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
<link rel="icon" href="./images/logo_transparent.png" />
<meta charset="UTF-8">

<title>마이페이지_펫시팅</title>

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

<!-- 돌봄장소 이미지 넘기는 스크립트 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-a5z8pA2+zN2T0LdZ6AO3bBq4wuvhs1YLC3E/p6hcaV9w1dt7E/PxI2fYve2IqcO3"
	crossorigin="anonymous"></script>

<script type="text/javascript">

	$(function()
	{
		
		
		// 돌봄장소 변경하기를 누르면

		// 돌봄장소 수정하기를 누르면
		$("#updateSP").click(function()
		{
			$.ajax(
			{
				type : "POST",
				url : "updatesittingplac.action",
				async : true,
				success : function(data)
				{
					$("#myPageMain").html(data);

				},
				error : function(e)
				{
					alert(e.responseText);
				}

			});

		});
		
		
	});
</script>

<script type="text/javascript">
	
	function openPopup(url, name, specs)
	{
	    window.open(url, name, specs);
	}

</script>

</head>
<body>

	<div class="row" id="sittingPlaceDiv">

		<div class="col container-mypage" style="overflow: auto; height: 1200px;">
			<div class="row">
				<div class="col-md-6">
					<span class="badge">${info.jmNickName }님의 돌봄장소</span>
				</div>
				<div class="col-md-6">
					<button type="button" class="detailBtn" id="updateSP" style="margin-right: 10px;" >돌봄장소 수정하기</button>
					<button type="button" class="detailBtn">돌봄장소 변경하기</button>
				</div>
			</div>

			<!-- 돌봄장소 슬라이드 사진 시작 -->
			<div id="carouselExample" class="carousel slide">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="images/sitterroom.jpg" class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img
							src="https://mdbcdn.b-cdn.net/img/Photos/Slides/img%20(22).webp"
							class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img
							src="https://mdbcdn.b-cdn.net/img/Photos/Slides/img%20(23).webp"
							class="d-block w-100" alt="...">
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExample" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExample" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
				</button>
			</div>
			<!-- 돌봄장소 슬라이드 사진 끝 -->

			<!-- 캘린더 -->
			
			<!-- 캘린더 끝 -->
			
			<div class="infoOne" style="margin-top: 10px;">
				<h4><span class="smallTitle">운영시간</span></h4>
				<span class="smallText">${info.sphStart } ~ ${info.sphEnd }</span>
			</div>
			
			<div class="infoOne">
				<h4><span class="smallTitle">제목</span></h4>
				<span class="smallText">${info.sptitle }</span>
			</div>
			
			<div class="infoOne">
				<h4><span class="smallTitle">돌봄장소 소개글</span></h4>
				<span class="smallText">${info.spContent }</span>
			</div>
			
			<div class="infoOne">
				<h4><span class="smallTitle">최대 반려견 수</span></h4>
				<span class="smallText">${info.spMaxPet }마리</span>
			</div>
			
			<div class="infoOne">
				<h4><span class="smallTitle">돌봄장소 주소</span></h4>
				<label for="spZipCode">우편번호</label><br>
				<button class="btn" id="spZipCode" name="spZipCode" style="margin: 5px; background-color: #4caf50; color: white; padding: 10px 20px;">
				${info.spZipCode }</button><br>
				<label for="spAddr1">주소</label><br>
				<button class="btn" id="spAddr1" name="spAddr1" style="margin: 5px; background-color: #4caf50; color: white; padding: 10px 20px;">
				${info.spAddr1 }</button><br>
				<label for="spAddr2">상세주소</label><br>
				<button class="btn" id="spAddr2" name="spAddr2" style="margin: 5px; background-color: #4caf50; color: white; padding: 10px 20px;">
				${info.spAddr2 }</button><br>
			</div>
			
			<div class="infoOne" style="margin-top: 20px;">
				<h4><span class="smallTitle">돌봄장소 특이사항</span></h4>
				<c:forEach items="${tags }" var="tag">
					<button class="btn" style="margin: 5px; background-color: #4caf50; color: white; padding: 10px 20px;">
					${tag.isptName}</button>
				</c:forEach>
			</div>
			
			<div class="infoOne">
				<h4><span class="smallTitle">돌봄장소 공개/비공개</span></h4>
				<button class="btn" style="margin: 5px; background-color: #4caf50; color: white; padding: 10px 20px;">
				<c:choose>
					<c:when test="${info.ipSid eq 1}">공개</c:when>
					<c:otherwise>비공개</c:otherwise>
				</c:choose>
				</button>
			</div>
			
		</div>
		<!-- 1행 1열 끝 -->

		<!-- 1행 2열 시작 -->
		<div class="col">
			
			<!-- 1행 2열의 1행 시작 -->
			<div class="col-md-6 container-mypage" style="max-width: 95%; overflow: auto; height: 550px;">
				<h3><span class="badge">후기</span></h3>
				<div class=""><!-- 후기 시작 -->
				<c:choose>
				<c:when test="${empty reviews }">
						<div class="noNotice"><h2><span>후기가 없습니다.</span></h2></div>
				</c:when>
				
				<c:otherwise>
				
					<table class="EndTable" style="width: 680px;">
					    <tr>
					      <th class="EndTh">후기 작성자</th>
					      <th class="EndTh">후기 작성일</th>
					      <th class="EndTh">별점</th>
					      <th class="EndTh"></th>
					    </tr>
					    <c:forEach items="${reviews }" var="review">
					    <tr>
					      <td class="EndTd">
					      <c:forEach items="${reviewers }" var="reviewer">
					      	<c:if test="${reviewer.pMemSid eq review.pMemSid }">
					      		${reviewer.pJmNickName }
					      	</c:if>	
					      </c:forEach>
					      </td>
					      <td class="EndTd">${review.srwDate }</td>
					      <td class="EndTd">${review.srwRate }</td>
					      <td class="EndTd"><button type="button" class="detailBtn" 
					      onclick="openPopup('sittingreview.action?srwSid=${review.srwSid}', 'sittingReviewWindow', 'width=600,height=600')">자세히보기</button></td>
					    </tr>
					    </c:forEach>
					</table>
				
				</c:otherwise>	
				</c:choose>	
			   		
			   	</div><!-- 후기 끝 -->
			</div>
			<!-- 1행 2열의 1행 끝 -->
			
			<!-- 1행 2열의 2행 시작 -->
			<div class="col-md-6 container-mypage" style="max-width: 95%; overflow: auto; height: 550px;">
				<h3><span class="badge">수익 아직바인딩안함</span></h3>
				<div><!-- 수익내역 시작 -->
				
					<div class="money" style="margin-left: 75%;">
						<p id="totalEarningsValue" class="superscript">이번달 총 수익</p>
						<h4><span id="totalEarningsLabel">1,000,000 원</span></h4>
			        </div>
					
					<table class="EndTable" style="width: 680px;">
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
				</div>
				<!-- 수익내역 끝 -->
			</div>
			<!-- 1행 2열의 2행 끝 -->

		</div>
		<!-- 1행 2열 끝 -->
	</div>
	<!-- 1행 끝 -->


</body>
</html>




