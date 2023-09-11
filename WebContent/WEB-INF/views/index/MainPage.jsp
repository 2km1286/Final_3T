<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<%
	String memSid = (String) session.getAttribute("memSid"); // 최초요청시 null
String memNickName = (String) session.getAttribute("memNickName"); // 최초요청시 null

if (memSid == null) {
	memSid = "0";
	session.setAttribute("memSid", memSid);
}
%>
  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Dosis:400,500|Poppins:400,700&display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

<style>
  body, .modal-title, .badge, .card-title, .card-text, .nick, .detailBtn 
  {
        font-family: 'Jua', sans-serif;
  }
  
  #my-content 
  {
        font-size: 18px; /* 원하는 크기로 변경하세요 */
  }
    
</style>


<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="./images/logo_transparent.png" />

<meta charset="UTF-8">
<title>Main</title>

<!-- slider stylesheet -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

<!-- fonts style -->
<link
	href="https://fonts.googleapis.com/css?family=Dosis:400,500|Poppins:400,700&display=swap"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet" />
<!-- responsive style -->
<link href="css/responsive.css" rel="stylesheet" />

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<script type="text/javascript">

	$(function()
	{
		var flag =<%=request.getParameter("flag")%>

		if( flag == "5" )	// 내 정보 수정하고 왔을때
		{
			alert("회원정보가 수정되었습니다. 다시 로그인해주세요!");
		}
	});


</script>

</head>
<body>


	<section>
		<div>
			<c:import url="/WEB-INF/components/index/HeaderForm.jsp"></c:import>
		</div>
	</section>
	<section>
		<div>
			<c:import url="/WEB-INF/components/index/DefaultMainForm.jsp"></c:import>
		</div>
	</section>
	<section>
		<div>
			<c:import url="/WEB-INF/components/index/BestListForm.jsp">
			</c:import>
		</div>
	</section>
	<section>
		<div>
			<c:import url="/WEB-INF/components/index/FooterForm.jsp">
			</c:import>
		</div>
	</section>

	<!-- 기배 Modal 시작 ( 대리산책 펫시터 기록 X ) -->
	<div class="modal fade" id="initialModal1" tabindex="-1" role="dialog"
		aria-labelledby="initialModalLabel1" aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title" id="initialModalLabel">지원해보세요!</h2>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<div class="card rec">
									<img src="./images/welcome-walk.png"
										class="card-img-top hover-shadow"
										alt="Los Angeles Skyscrapers" />
									<div class="card-body">
										<a href="walktest.action"><h3 class="card-title">대리산책러 지원해보기</h3></a>
										<p class="card-text">대리산책러가 되어서 다양한 강아지들과 산책해보세요! 귀여운
											강아지들과 친구가 될 수 있어요.</p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="card rec">
									<img src="./images/welcome-petsitter.png"
										class="card-img-top hover-shadow" alt="Palm Springs Road" />
									<div class="card-body">
										<a href="sittingtest.action"><h3 class="card-title">펫시터 지원해보기</h3></a>
										<p class="card-text">
											펫시터가 되어서 다양한 강아지들을 돌봐주세요! <br /> 귀여운 강아지들과 친구가 될 수 있어요.
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 기배 Modal 끝 -->

	<!-- 기배 Modal 시작 ( 대리산책 타임라인 종료 횟수 > 펫시터 타임라인 종료 횟수 ) -->
    <div class="modal fade" id="initialModal2" tabindex="-1" role="dialog"
		aria-labelledby="initialModalLabel2" aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title" id="initialModalLabel">기민님의 대리산책</h2>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container-mypage">
						<div class="row">
							<div class="col-md-6">
	
							
								</div>
								<div style="float: left; margin-left: 20px;">
									<!-- 돌봄장소 슬라이드 사진 시작 -->
									<div id="carouselExample" class="carousel slide"
										style="width: 600px;">
										<div class="carousel-inner">
											<div class="carousel-item active">
												<img src="images/sitterroom.jpg" class="d-block w-100"
													alt="...">
												<h3  class="modal-title">
													<br>[마스터 대리산책러] 기민님의 프로필<hr>
												</h3>
											</div>
								
							
			

										
									</div>
									<!-- 돌봄장소 슬라이드 사진 끝 -->
								</div>
								<div style="float: left;">
									<div class="moneyReview" style="margin-left: 15px;">
										<div class="modal-title" id="my-content">
										이번달 총 수익 3,820,000 원
									    <br>이번달 예약완료 횟수 82건 
									    <br>❤️ 3,021
										<br>4.8 ⭐ (402개의 후기) 
										<br><br>
										</div>

									</div>
								</div>
							</div>
							<!-- 1행 1열 끝 -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 기배 Modal 끝 -->

	<!-- 기배 Modal 시작 ( 대리산책 타임라인 종료 횟수 < 펫시터 타임라인 종료 횟수 ) -->
	<div class="modal fade" id="initialModal3" tabindex="-1" role="dialog"
		aria-labelledby="initialModalLabel3" aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title" id="initialModalLabel"><%=session.getAttribute("jmNickName") %>님의 펫시팅</h2>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container-mypage">
						<div class="row">
							<div class="col-md-6">
	
							
								</div>
								<div style="float: left; margin-left: 20px;">
									<!-- 돌봄장소 슬라이드 사진 시작 -->
									<div id="carouselExample" class="carousel slide"
										style="width: 600px;">
										<div class="carousel-inner">
											<div class="carousel-item active">
												<img src="images/sitterroom.jpg" class="d-block w-100"
													alt="...">
												<h3  class="modal-title">
													<br>[<%=session.getAttribute("grade") %>] <%=session.getAttribute("spTitle") %><hr>
												</h3>
											</div>
														
									</div>
									<!-- 돌봄장소 슬라이드 사진 끝 -->
								</div>
								<div style="float: left;">
									<div class="moneyReview" style="margin-left: 15px;">
										<div class="modal-title" id="my-content">
									    이번달 예약완료 횟수 <%=session.getAttribute("endCount") %>건 
									    <br>찜한 사람 ❤️ <%=session.getAttribute("followCount") %>명
										<br>별점 <%=session.getAttribute("reviewRate") %> ⭐ (<%=session.getAttribute("reviewCount") %>개의 후기)
										<br><br>
										</div>

									</div>
								</div>
							</div>
							<!-- 1행 1열 끝 -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 기배 Modal 끝 -->
</body>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script>
	$(document).ready(function()
	{
		var dbValue = <%=session.getAttribute("dbValue")%>;

		if (dbValue === 0)
		{
			$('#initialModal1').modal('show');
			<%session.removeAttribute("dbValue");%>
	    } 
		else if (dbValue === 1)
		{
			$('#initialModal2').modal('show');
			<%session.removeAttribute("dbValue");%>
	    } 
		else if (dbValue === 2)
		{
			$('#initialModal3').modal('show');
		    <%session.removeAttribute("dbValue");%>
	    }
	});
</script>
</html>