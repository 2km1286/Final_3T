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
<title>펫시터 공고글</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

<style>


h2,h4 {
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

 .custom-textbox 
 {
	padding: 8px;
    font-size: 16px;
    border: 1px solid #ddd;
    border-radius: 5px;
    outline: none;
 }



.card-content {
  padding-top: 40px; /* Adjust the value to add space between card title and rank */
}

.selection-bar {
  background-color: #333;
  color: #fff;
  padding: 10px;
}

.selection-bar label,
.selection-bar select,
.selection-bar button {
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
    padding: 5px 10px;
    cursor: pointer;
    margin-right: 10px;
    border-radius: 5px;
}

/* 선택된 라디오 버튼의 스타일 */
.radio-button.selected {
    background-color: #ff0000;
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
</style>

<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

		$().ready(function()
		{
			 
			 // 펫시팅 돌봄장소 클릭시 예약화면
			 $("#cardContainer").click(function()
			{
				 window.location.href = "sittingreservationpage.action";
			});
		});
	
</script>

</head>
<body>
	현재 접속자 : 0이면 게스트 → ${memSid }
	<c:import url="/WEB-INF/components/Header.jsp">
	</c:import>
	<section>
		<div class="container py-5 bg-light">

			<!-- Selection Bar -->
			<div class="selection-bar mb-4">
				<label for="location">지역:</label> <select id="location"
					class="custom-textbox">
					<option value="seoul">서울</option>
					<option value="busan">부산</option>
					<!-- Add more options as needed -->
				</select> <label for="datepicker">날짜 선택:</label> <input type="text"
					id="datepicker" class="custom-textbox" readonly> <label
					for="dogs">견수:</label> <input type="number" id="dogs"
					class="custom-textbox" min="1" max="5">

				<button class="btn btn-danger" onclick="filterList()">적용</button>
			</div>

			<div class="mb-4">
				<!-- 버튼 모양의 복수 선택 라디오 버튼 -->
				<c:forEach var="dto" items="${IndexTagList }">
					<button class="btn btn-danger radio-button"
						onclick="toggleRadioButton(this)" value="${dto.isptSid }">${dto.isptName }</button>

				</c:forEach>

			</div>

			<h2>펫시터 공고글</h2>
			<hr>
			<div id="cardContainer" class="row">
				<!-- 카드 데이터를 미리 선언 -->
				<c:set var="cards">
					<div class="col-md-4">


						<c:forEach var="dto" items="${list }" varStatus="status">
						<div class="card">
							<img src="images/sitterroom.jpg" alt="" class="card-img-top"
								style="width: 320px;">
							<div class="card-body">
								<h5 class="card-title">[${gradeList[status.index].grade}] ${dto.jmNickName }</h5>
								<h6 class="card-subtitle text-muted">
									${dto.spAddr1 } <br />
									${dto.sptitle } <br />
									<%-- <c:forEach var="dto1" items="${tagList }">
										<button class="btn btn-danger radio-button"
										onclick="toggleRadioButton(this)" value="${dto1.isptSid }">${dto1.isptName }</button>
									</c:forEach> --%>
								</h6>
								<br>
								<p>4.8 ⭐ (452개의
									후기)
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									${gradeList[status.index].price }원/ 1박</p>
							</div>
						</div>
						</c:forEach>


					</div>
				</c:set>

				<!-- 기본 카드 9개 표시 -->
				<c:forEach var="i" begin="1" end="9">
					<c:if test="${i % 3 == 1}">
						<div class="row">
					</c:if>
					<c:out value="${cards}" escapeXml="false" />
					<c:if test="${i % 3 == 0 || i == 9}">
			</div>
			<br>
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
			<c:import url="/WEB-INF/components/FooterForm.jsp">
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
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-alpha.6.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

</html>