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
		$("#updateSPInfo").click(function()
		{
			
			
			$.ajax(
			{
				type : "POST",
				url : "updatespinfoform.action",
				async : true,
				success : function(data)
				{
					$("#sittingPlaceDiv").html(data);

				},
				error : function(e)
				{
					alert(e.responseText);
				}

			});

		});


	});
</script>

</head>
<body>

	<div class="row" id="sittingPlaceDiv">

		<div class="col container-mypage">
			<div class="row">
				<div class="col-md">
					<span class="badge">핫도그님의 돌봄장소</span>
				</div>
				<div class="col-md">
					<button type="button" class="detailBtn" style="margin-left: 50%;">돌봄장소 변경하기</button>
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
			<div class="container" style="padding: 0;">
				<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
			
				<link rel="stylesheet" href="css/styleCal.css">
				<div class="row">
					<div class="col-md-12">
						<div class="content w-100">
							<div class="calendar-container" style="padding: 0px;">
								<div class="calendar">
									<div class="year-header">
										<span class="left-button fa fa-chevron-left" id="prev">
										</span> <span class="year" id="label"></span> <span
											class="right-button fa fa-chevron-right" id="next"> </span>
									</div>
									<table class="months-table w-100">
										<tbody>
											<tr class="months-row">
												<td class="month">1월</td>
												<td class="month">2월</td>
												<td class="month">3월</td>
												<td class="month">4월</td>
												<td class="month">5월</td>
												<td class="month">6월</td>
												<td class="month">7월</td>
												<td class="month">8월</td>
												<td class="month">9월</td>
												<td class="month">10월</td>
												<td class="month">11월</td>
												<td class="month">12월</td>
											</tr>
										</tbody>
									</table>

									<table class="days-table w-100">
										<td class="day">일</td>
										<td class="day">월</td>
										<td class="day">화</td>
										<td class="day">수</td>
										<td class="day">목</td>
										<td class="day">금</td>
										<td class="day">토</td>
									</table>
									<div class="frame">
										<table class="dates-table w-100">
											<tbody class="tbody">
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="events-container" style="background-color: #4caf50;"></div>

						</div>
					</div>
				</div>
				<script type="text/javascript" src="js/popperCal.js"></script>
<!-- ======================================================================================================캘린더 스크립트 -->
<script type="text/javascript">
(function($) {

	"use strict";

	// Setup the calendar with the current date
$(document).ready(function(){
    var date = new Date();
    var today = date.getDate();
    // Set click handlers for DOM elements
    $(".right-button").click({date: date}, next_year);
    $(".left-button").click({date: date}, prev_year);
    $(".month").click({date: date}, month_click);
    $("#add-button").click({date: date}, new_event);
    // Set current month as active
    $(".months-row").children().eq(date.getMonth()).addClass("active-month");
    init_calendar(date);
    var events = check_events(today, date.getMonth()+1, date.getFullYear());
    show_events(events, months[date.getMonth()], today);
});

// Initialize the calendar by appending the HTML dates
function init_calendar(date) {
    $(".tbody").empty();
    $(".events-container").empty();
    var calendar_days = $(".tbody");
    var month = date.getMonth();
    var year = date.getFullYear();
    var day_count = days_in_month(month, year);
    var row = $("<tr class='table-row'></tr>");
    var today = date.getDate();
    // Set date to 1 to find the first day of the month
    date.setDate(1);
    var first_day = date.getDay();
    // 35+firstDay is the number of date elements to be added to the dates table
    // 35 is from (7 days in a week) * (up to 5 rows of dates in a month)
    for(var i=0; i<35+first_day; i++) {
        // Since some of the elements will be blank, 
        // need to calculate actual date from index
        var day = i-first_day+1;
        // If it is a sunday, make a new row
        if(i%7===0) {
            calendar_days.append(row);
            row = $("<tr class='table-row'></tr>");
        }
        // if current index isn't a day in this month, make it blank
        if(i < first_day || day > day_count) {
            var curr_date = $("<td class='table-date nil'>"+"</td>");
            row.append(curr_date);
        }   
        else {
            var curr_date = $("<td class='table-date'>"+day+"</td>");
            var events = check_events(day, month+1, year);
            if(today===day && $(".active-date").length===0) {
                curr_date.addClass("active-date");
                show_events(events, months[month], day);
            }
            // If this date has any events, style it with .event-date
            if(events.length!==0) {
                curr_date.addClass("event-date");
            }
            // Set onClick handler for clicking a date
            curr_date.click({events: events, month: months[month], day:day}, date_click);
            row.append(curr_date);
        }
    }
    // Append the last row and set the current year
    calendar_days.append(row);
    $(".year").text(year);
}

// Get the number of days in a given month/year
function days_in_month(month, year) {
    var monthStart = new Date(year, month, 1);
    var monthEnd = new Date(year, month + 1, 1);
    return (monthEnd - monthStart) / (1000 * 60 * 60 * 24);    
}

// Event handler for when a date is clicked
function date_click(event) {
    $(".events-container").show(250);
    $("#dialog").hide(250);
    $(".active-date").removeClass("active-date");
    $(this).addClass("active-date");
    show_events(event.data.events, event.data.month, event.data.day);
};


// Event handler for when a month is clicked
function month_click(event) {
    $(".events-container").show(250);
    $("#dialog").hide(250);
    var date = event.data.date;
    $(".active-month").removeClass("active-month");
    $(this).addClass("active-month");
    var new_month = $(".month").index(this);
    date.setMonth(new_month);
    init_calendar(date);
}

// Event handler for when the year right-button is clicked
function next_year(event) {
    $("#dialog").hide(250);
    var date = event.data.date;
    var new_year = date.getFullYear()+1;
    $("year").html(new_year);
    date.setFullYear(new_year);
    init_calendar(date);
}

// Event handler for when the year left-button is clicked
function prev_year(event) {
    $("#dialog").hide(250);
    var date = event.data.date;
    var new_year = date.getFullYear()-1;
    $("year").html(new_year);
    date.setFullYear(new_year);
    init_calendar(date);
}

// Event handler for clicking the new event button
function new_event(event) {
    // if a date isn't selected then do nothing
    if($(".active-date").length===0)
        return;
    // remove red error input on click
    $("input").click(function(){
        $(this).removeClass("error-input");
    })
    // empty inputs and hide events
    $("#dialog input[type=text]").val('');
    $("#dialog input[type=number]").val('');
    $(".events-container").hide(250);
    $("#dialog").show(250);
    // Event handler for cancel button
    $("#cancel-button").click(function() {
        $("#name").removeClass("error-input");
        $("#count").removeClass("error-input");
        $("#dialog").hide(250);
        $(".events-container").show(250);
    });
    // Event handler for ok button
    $("#ok-button").unbind().click({date: event.data.date}, function() {
        var date = event.data.date;
        var name = $("#name").val().trim();
        var count = parseInt($("#count").val().trim());
        var day = parseInt($(".active-date").html());
        // Basic form validation
        if(name.length === 0) {
            $("#name").addClass("error-input");
        }
        else if(isNaN(count)) {
            $("#count").addClass("error-input");
        }
        else {
            $("#dialog").hide(250);
            console.log("new event");
            new_event_json(name, count, date, day);
            date.setDate(day);
            init_calendar(date);
        }
    });
}

// Adds a json event to event_data
function new_event_json(name, count, link, date, day) {
    var event = {
        "occasion": name,
        "bookSid": number,
        "link": link,
        "year": date.getFullYear(),
        "month": date.getMonth()+1,
        "day": day
    };
    event_data["events"].push(event);
}

// Display all events of the selected date in card views
function show_events(events, month, day) {
    // Clear the dates container
    $(".events-container").empty();
    $(".events-container").show(250);
    console.log(event_data["events"]);
    // If there are no events for this date, notify the user
    if(events.length===0) {
        var event_card = $("<div class='event-card'></div>");
        var event_name = $("<div class='event-name'>해당 날짜에 예약이 없습니다</div>");
        $(event_card).css({ "border-left": "10px solid #FF1744" });
        $(event_card).append(event_name);
        $(".events-container").append(event_card);
    }
    else {
    	// Go through and add each event as a card to the events container
    	for(var i=0; i<events.length; i++) {
    	    var event_card = $("<div class='event-card'></div>");
    	    var event_name = $("<div class='event-name'>"+events[i]["occasion"]+":</div>");
    	    var event_count = $("<div class='event-count'>"+events[i]["bookSid"]+"</div>");
    	    var event_link = $("<div class='event-link'><a href='"+events[i]["link"]+"' target='_blank'>자세히보기</a></div>");
    	    if(events[i]["cancelled"]===true) {
    	        $(event_card).css({
    	            "border-left": "10px solid #FF1744"
    	        });
    	        event_count = $("<div class='event-cancelled'>Cancelled</div>");
    	    }
    	    $(event_card).append(event_name).append(event_count).append(event_link);
    	    $(".events-container").append(event_card);
    	}
    }
}

// Checks if a specific date has any events
function check_events(day, month, year, bookSid, link) {
    var events = [];
    for(var i=0; i<event_data["events"].length; i++) {
        var event = event_data["events"][i];
        if(event["day"]===day &&
            event["month"]===month &&
            event["year"]===year) {
                events.push(event);
            }
    }
    return events;
}

// Given data for events in JSON format
var event_data =
{
	"events":
	[
		<c:forEach items="${bookList}" var="book" varStatus="loop">
		    {
		        "occasion": " 예약번호 ",
		        "bookSid": ${book.sbSid},
		        "link" : "mainpage.action",
		        "year": ${book.sbStartYear},
		        "month": ${book.sbStartMonth},
		        "day": ${book.sbStartDay},
		        "cancelled": false
		    }<c:if test="${not loop.last}">,</c:if>
		</c:forEach>
    ]
};

const months = [ 
    "January", 
    "February", 
    "March", 
    "April", 
    "May", 
    "June", 
    "July", 
    "August", 
    "September", 
    "October", 
    "November", 
    "December" 
];

})(jQuery);
</script>
<!-- ======================================================================================================캘린더 스크립트 -->
			</div>
			<!-- 캘린더 끝 -->

			<div class="infoOne">
				<h4><span class="smallTitle">돌봄장소 특이사항</span></h4>
				<button class="btn btn-warning">대형견 가능</button>
				<button class="btn btn-warning">노견 가능</button>
				<button class="btn btn-warning">홈캠 가능</button>
			</div>
			
			<div class="infoOne">
				<h4><span class="smallTitle">최대 가능 견수</span></h4>
				<button class="btn btn-warning">2마리</button>
			</div>
			
			<div class="infoOne">
				<h4><span class="smallTitle">돌봄장소 이름</span></h4>
				<span class="smallText">폴폴이의 행복한 공간~</span>
			</div>
			
			<div class="infoOne">
				<h4><span class="smallTitle">돌봄장소 소개</span></h4>
				<span class="smallText">폴폴이의 행복한 공간~ 막 길게 말이 쓰여 있고 지금은 새벽이고 잠을 잘 수 없고
				유튜브로 노래나 틀어놔야지</span>
			</div>
			
			<div class="infoOne">
				<h4><span class="smallTitle">돌봄장소 주소</span></h4> <!-- (우편번호까지 붙여나오기) -->
				<span class="smallText">서울시 도봉구 어디로 어디길 12345</span><br>
				<span class="smallText">무슨아파트 무슨동 무슨호</span>
			</div>
			
			<div class="infoOne">
				<h4><span class="smallTitle">돌봄장소 공개/비공개</span></h4>
				<button class="btn btn-warning">공개</button>
			</div>
			
			<button type="button" class="detailBtn" id="updateSPInfo"
			style="margin-left: 40%;">돌봄장소 수정하기</button>

		</div>
		<!-- 1행 1열 끝 -->

		<!-- 1행 2열 시작 -->
		<div class="col">
			
			<!-- 1행 2열의 1행 시작 -->
			<div class="col-md-6 container-mypage" style="max-width: 95%;">
				<h3><span class="badge">후기</span></h3>
				<div class=""><!-- 후기 시작 -->
				
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
			   		
			   	</div><!-- 후기 끝 -->
			</div>
			<!-- 1행 2열의 1행 끝 -->
			
			<!-- 1행 2열의 2행 시작 -->
			<div class="col-md-6 container-mypage" style="max-width: 95%;">
				<h3><span class="badge">수익</span></h3>
				<div><!-- 수익내역 시작 -->
				
					<div class="money" style="margin-left: 75%;">
						<p id="totalEarningsValue" class="superscript">이번달 총 수익</p>
						<h4><span id="totalEarningsLabel">1,000,000 원</span></h4>
			        </div>
					
					<table class="EndTable" style="width: 700px;">
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




