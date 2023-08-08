<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<%
	String memSid = (String) session.getAttribute("memSid"); // 최초 요청시 "0"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대리산책 공고글</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

<style>
h2, h4 {
	font-family: "Jua";
	font-size: 20pt;
}

h2 span {
	font-weight: lighter;
	font-size: 18pt;
	color: red;
}

.card-rank {
	display: inline-block;
	width: 30px;
	height: 30px;
	line-height: 30px;
	text-align: center;
	background-color: #f00;
	color: #fff;
	border-radius: 50%;
}

.custom-textbox {
	padding: 8px;
	font-size: 16px;
	border: 1px solid #ddd;
	border-radius: 5px;
	outline: none;
}

.card-content {
	padding-top: 40px;
	/* Adjust the value to add space between card title and rank */
}

.selection-bar {
	background-color: #333;
	color: #fff;
	padding: 10px;
}

.selection-bar label, .selection-bar select, .selection-bar button {
	margin-right: 10px;
}

.selection-bar button {
	background-color: #f00;
	color: #fff;
	border: none;
	padding: 5px 10px;
	cursor: pointer;
}

.selection-bar button:hover {
	background-color: #ff0000;
}

/* 버튼 스타일 */
.radio-button {
	display: inline-block;
	background-color: #f00;
	color: #fff;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
	margin-right: 10px;
	border-radius: 5px;
}

/* 선택된 라디오 버튼의 스타일 */
.radio-button.selected {
	background-color: #367539; /* 선택된 버튼에 진한 녹색 계열 배경 색상 적용 */
}

@import url('https://fonts.googleapis.com/css?family=Jua:400');

/* 모든 p 태그 글자 폰트 적용 */
p {
	font-family: "Jua";
	font-weight: Regular;
}

/* .btn-box 클래스 글자 폰트 적용 */
.btn-box {
	font-family: "Jua";
}

.tags {
	margin-bottom: 50px;
}

.selection-bar.mb-4 {
	background-color: #fff; /* 배경색을 하얀색으로 */
	color: #000; /* 글자색을 검정색으로 */
	padding: 10px; /* 패딩 추가 */
	border: 2px solid #000; /* 테두리 추가 */
	border-radius: 5px; /* 테두리 둥글기 설정 */
	margin-bottom: 20px; /* 아래쪽 여백 추가 */
}

.selection-bar.mb-4 label, .selection-bar.mb-4 select, .selection-bar.mb-4 button
	{
	margin-right: 10px;
}

.selection-bar.mb-4 button {
	background-color: #fff;
	color: #000;
	border: 2px solid #000;
	padding: 5px 10px;
	cursor: pointer;
	border-radius: 5px;
}

.selection-bar.mb-4 button:hover {
	background-color: #4caf50;
}
</style>

<style>
@import url('https://fonts.googleapis.com/css?family=Jua:400');

.badge {
	font-family: "Jua";
}

.mypageSidevar {
	font-family: "Jua";
	font-size: 15pt;
}

.card-header {
	font-family: "Jua";
	font-size: 17pt;
}

.card {
	font-family: "Jua";
	cursor: pointer;
}

.checkBox {
	font-family: "Jua";
	font-size: 15pt;
}

.superscript {
	font-family: "Jua";
}

.detailBtn {
	font-family: "Jua";
}

.updatePlace {
	font-family: "Jua";
	font-weight: normal;
}
</style>

<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
	$().ready(function()
	{

		// 펫시팅 돌봄장소 클릭시 예약화면
		$("#cardContainer").click(function()
		{
			window.location.href = "walkreservation.action";
		});
	});
</script>

</head>
<body>
	<c:import url="/WEB-INF/components/index/HeaderForm.jsp">
	</c:import>
	<section>
		<div class="container-fluid py-5 bg-light"
			style="padding-left: 150px; padding-right: 150px;">

			<!-- Selection Bar -->
			<div class="selection-bar mb-4"
				style="font-family: Jua; font-size: 13pt; padding-left: 30px; padding-right: 30px;">
				<label for="location">지역:</label> <select id="location"
					class="custom-textbox">
					<option value="seoul">서울</option>
					<option value="busan">부산</option>
					<!-- Add more options as needed -->
				</select> <label for="datepicker">날짜 선택:</label> <input type="text"
					id="datepicker" class="custom-textbox" readonly
					style="width: 115px;"> 
					
					<label for="timepicker">시간:</label> <input type="text" 
					id="timepicker" class="custom-textbox"
					readonly style="width: 80px;"> 
					
					<label for="dogs">견수:</label>
				    <input type="number" id="dogs" class="custom-textbox" min="1"
					max="5">

				<button class="button" onclick="filterList()">적용</button>
				
				<button class="button" onclick="walkTest()" style="float: right;">대리산책러
					지원하기</button>
				<button class="button" onclick="walkWrite()" style="float: right;">대리산책 공고글 작성
					</button>
				<script>
					function walkTest()
					{
						window.location.href = "walktest.action";
					}
					
					function walkWrite()
					{
						
					}
				</script>
			</div>

			<div class="mb-4" style="font-family: Jua; font-size: 25pt;">
				<!-- 버튼 모양의 복수 선택 라디오 버튼 -->
				<c:forEach var="dto" items="${IndexTagList }">
					<button class="btn radio-button"
						style="margin: 5px; background-color: #4caf50; color: white; padding: 10px 20px"
						value="${dto.iwptsid }">${dto.iwptname }</button>
				</c:forEach>
			</div>

			<script>
				$(document).ready(function()
				{
					// 클릭한 버튼에 selected 클래스 추가 및 제거
					$('.radio-button').click(function()
					{
						$(this).toggleClass('selected');
						if ($(this).hasClass('selected'))
						{
							$(this).css('background-color', '#367539'); // 선택된 스타일로 변경
						} else
						{
							$(this).css('background-color', '#4caf50'); // 원래 스타일로 변경
						}
					});
				});
			</script>





			<h2>대리산책 공고글</h2>
			<hr>

			<div id="cardContainer">
				<c:forEach var="dto" items="${list}" varStatus="status">
					<c:if test="${status.count % 3 == 1}">
						<div class="row justify-content-between">
					</c:if>

					<div class="card" style="margin: 5px; width: 32%; margin-bottom: 50px;">
						<img src="images/sitterroom.jpg" alt="" class="card-img-top"
							style="width: 100%;">
						<div class="card-body">
							<h5 class="card-title" >
								${dto.wptitle}</h5>
							<h6 class="card-subtitle text-muted">${dto.wpaddr1}
								<br /> ${dto.wpcontent}
							</h6>
							<br>
							<p>4.8 ⭐ (452개의 후기)
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								45,000원/ 1박</p>
						</div>
						<!-- end .card-body -->
					</div>
					<!-- end .card -->

					<c:if test="${status.count % 3 == 0}">
			</div>
			<!-- end .row -->
			</c:if>
			</c:forEach>
		</div>
		</div>


		<script>
			// 무한 스크롤 함수
			function infiniteScroll()
			{
				// 현재 스크롤 위치
				var scrollTop = $(window).scrollTop();
				// 화면의 높이
				var windowHeight = $(window).height();
				// 문서 전체 높이
				var documentHeight = $(document).height();

				// 스크롤이 문서 맨 아래에 도달하면 새로운 카드를 추가
				if (scrollTop + windowHeight >= documentHeight)
				{
					// 새로운 카드를 추가하는 작업을 여기에 작성합니다.
					// 예시로 9개의 기존 카드를 복사하여 추가하는 코드를 작성합니다.
					var cards = `<c:out value="${cards}" escapeXml="false" />`;
					for (var i = 0; i < 9; i++)
					{
						$("#cardContainer").append(cards);
					}
				}
			}

			// 스크롤 이벤트를 감지하여 무한 스크롤 함수 호출
			$(window).on("scroll", infiniteScroll);

			// 초기에 한번 스크롤 이벤트를 발생시키기 위해 호출
			infiniteScroll();
		</script>
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
		<script
			src="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-alpha.6.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
	</section>
	<section>
		<div>
			<c:import url="/WEB-INF/components/index/FooterForm.jsp">
			</c:import>
		</div>
	</section>
	<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
</body>

<script>
	flatpickr("#datepicker",
	{
		dateFormat : 'Y-m-d',
		position : "below",
		defaultDate : "today",
		theme : "airbnb"
	});
</script>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

</html>