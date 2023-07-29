<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.lang.Math" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	// 이전 페이지(SendAndReceive07.jsp 즉, 자기 자신 페이지)로부터 넘어온 데이터 수신
	// → year, month
	String sYear = request.getParameter("year");
	String sMonth = request.getParameter("month");
	

	// Calendar 객체 생성
	//java.util.Calender cal = java.util.Calender.getInstance();
	Calendar cal = Calendar.getInstance();
	
	// 현재 년, 월, 일 확인
	int nowYear = cal.get(Calendar.YEAR);			//-- 2023
	int nowMonth = cal.get(Calendar.MONTH)+1;		//--5
	int nowDay = cal.get(Calendar.DAY_OF_MONTH); 	//-- 18
	
	// 표시할 달력의 년, 월 구성 → 페이지 최초 요청을 감안한 코드 
	int selectYear = nowYear;
	int selectMonth = nowMonth;
	
	// 페이지에 대한 요청이 최초 요청이 아닐 경우
	// → line 7~8 을 통해 수신한 데이터로 표시할 달력의 년, 월 구성
	if(sYear != null || sMonth != null)
	{
		selectYear = Integer.parseInt(sYear);
		selectMonth = Integer.parseInt(sMonth);
	}
	
	// 테스트
	//out.print("<h1>selectYear : " + selectYear + "</h1>");
	//out.print("<h1>selectMonth : " + selectMonth + "</h1>");
	
	// 확인한 날짜로 년도 select opion 구성 --------------------------------------
	//<option value="2013">2013</option>
	//<option value="2014">2014</option>
	//<option value="2015">2015</option>
	//					:
	//<option value="2023" selected="selected">2023</option>
	//					:
	//<option value="2031">2013</option>
	//<option value="2032">2032</option>
	//<option value="2033">2033</option>
	String yOptions = "";
	for(int year=(selectYear-10); year<=(selectYear+10); year++)
	{
		// 관찰1. 
		//yOptions += "<option value="2013">2013</option>";
		//yOptions += "<option value='" + year + "'>" + year + "</option>";
		//-- selected가 올바르지 않음. 
		
		// 관찰2.
		//if(year == nowYear)
		//	yOptions += "<option value='" + year + "' selected = 'selected'>" + year + "</option>";
		//else
		//	yOptions += "<option value='" + year + "'>" + year + "</option>"; 
		
		// 상황1. 페이지 최초 요청일 때 	 → sYear 는 null / 현재 년도와 옵션이 같을 때 → selected(○)
		// 상황2. 페이지 최초 요청이 아닐 때 → sYear 는 null 아님 / 선택 년도와 옵션이 같을 때 → selected(○)
		// 상황3. 나머지					 → selected(Ⅹ)
		if(sYear==null && year==nowYear)
			yOptions += "<option value='" + year + "' selected = 'selected'>" + year + "</option>";
		else if(sYear!=null && year==Integer.parseInt(sYear))
			yOptions += "<option value='" + year + "' selected = 'selected'>" + year + "</option>";
		else
			yOptions += "<option value='" + year + "'>" + year + "</option>";
	}
	
	// --------------------------------------확인한 날짜로 년도 select opion 구성
	
	
	
	
	
	// 확인한 날짜로 월도 select opion 구성 --------------------------------------
	// <option value='1'>1</option>
	// <option value='2'>2</option>
	// <option value='3'>3</option>
	//					:
	// <option value='5'>5</option>
	//					:
	// <option value='10'>10</option>
	// <option value='11'>11</option>
	// <option value='12'>12</option>
	
	String mOptions = "";
	for(int month=1; month<=12; month++)
	{
		// 상황1. 페이지 최초 요청일 때      → sMonth는 null /  현재 월과 옵션이 같을 때 → selected(○)
		// 상황2. 페이지 최초 요청이 아닐 때 → sMonth는 null이 아님 / 현재 월과 옵션이 같을 때 → selected(○)
		// 상황3. 나머지					 → selected(Ⅹ)
		if(sMonth==null && month==nowMonth)
			mOptions += "<option value='" + month + "' selected = 'selected'>" + month + "</option>";
		else if(sMonth!=null && month==Integer.parseInt(sMonth))
			mOptions += "<option value='" + month + "' selected = 'selected'>" + month + "</option>";
		else
			mOptions += "<option value='" + month + "'>" + month + "</option>";
			
	}
	
	// --------------------------------------확인한 날짜로 월도 select opion 구성 

	
	// 그려야 할 달력의 1일이 무슨 요일인지 확인 필요. 
	// (만년달력)
	
	int[] months = {31,28,31,30,31,30,31,31,30,31,30,31};
	
	if(selectYear%4==0 && selectYear%100!=0 || selectYear%400==0)
		months[1] = 29;
	
	// 총 날 수 누적 변수
	int nalsu;
	
	// 요일 항목 배열 구성
	String[] weekNames = {"SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"};
	
	// 현재 년도 → 입력받은 년도 이전 년도까지의 날 수 계산
	nalsu = (selectYear-1)*365 + (selectYear-1)/4 - (selectYear-1)/100 + (selectYear-1)/400;
	
	// 현재 월 → 입력받은 월의 이전 월까지의 날 수 계산
	for(int i=0; i<selectMonth-1; i++)
		nalsu += months[i];
	
	nalsu++;		// +1  → 해당월 1일
	
	int week = nalsu % 7; 						//-- 요일 변수
	int lastDay = months[selectMonth-1];		//-- 마지막 날짜 변수
	
	// 달력 그리기 -------------------------------------------------------------------------
	String calStr = "";
	calStr += "<table border='1' class='myCalendar'>";
	
	// 요일 이름 발생
	calStr += "<tr>";
	for(int i=0; i<weekNames.length; i++)
	{
		//calStr += "<th>" + weekNames[i] + "</th>";
		
		if(i==0)																//-- 일요일
			calStr +=  "<th style='color: red;'>" + weekNames[i] + "</th>";
		else if(i==6)															//-- 토요일
			calStr +=  "<th style='color: blue;'>" + weekNames[i] + "</th>";
		else
			calStr +=  "<th>" + weekNames[i] + "</th>";
			
	}
	calStr += "</tr>";
	
	// 빈 칸 공백 td 발생
	calStr += "<tr>";
	for(int i=1; i<=week; i++)
	{
		calStr += "<td></td>";
	}
	
	// 날짜 td 발생
	for(int i=1; i<=lastDay; i++)
	{
		week++;
		//-- 날짜가 하루씩 찍힐 때 마다(구성이 이루어질 때 마다)
		//   요일도 함께 1씩 증가할 수 있도록 처리
		
		//calStr += "<td>" + i + "</td>";
		
		
		// css 에 style 추가.
		if(selectYear==nowYear && selectMonth==nowMonth && i==nowDay && week%7==0)			//-- 토요일인 오늘
			calStr += "<td class='nowSat'>" + i + "</td>";
		else if(selectYear==nowYear && selectMonth==nowMonth && i==nowDay && week%7==1)		//-- 일요일인 오늘
			calStr += "<td class='nowSun'>" + i + "</td>";
		else if(selectYear==nowYear && selectMonth==nowMonth && i==nowDay)				//-- 평일인 오늘
			calStr += "<td class='now'>" + i + "</td>";
		else if(week%7==0)																//-- 오늘이 아닌 토요일
			calStr += "<td class='sat'>" + i + "</td>";
		else if(week%7==1)																//-- 오늘이 아닌 일요일
			calStr += "<td class='sun'>" + i + "</td>";
		else																			//-- 오늘이 아닌 평일 
			calStr += "<td>" + i + "</td>";
		
		if(week%7==0)
			calStr += "</tr><tr>";
	}
	
	
	// 빈 칸 공백 td 발생
	for(int i=0; i<=week; i++, week++)
	{
		if(week%7==0)
			break;	
		
		calStr += "<td></td>";
	}
	
	if(week%7!=0)
		calStr += "</tr>";
	
	calStr += "</table>";
	
	// ------------------------------------------------------------------------- 달력 그리기
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MPSPBookForm.jsp</title>
<link rel="stylesheet" type="text/css" href="css/mdb.min.css">
<style type="text/css">

	.myCalendar
	{
		width: 100%; height: 80%;
	}

</style>
</head>
<body>

 
	
	<!-- 오른쪽 카드 구역 -->
	<div class="card">
		
		
		 
		  <!-- 수익, 등등 -->
		  <h5 class="card-title">
		  <button type="button" class="btn btn-warning">예약 내역</button>
		  <button type="button" class="btn btn-warning">후기 목록</button>
		  <button type="button" class="btn btn-warning">수익 관리</button>
		  <span class="text-right">$[7월 수익] 180,000원</span> </h5>	
		  <!-- 수익, 등등 끝-->
		<div class="card-body">  
		
		<!-- form 의 action 속성값 생략 → 요청 페이지 / 데이터 수신처는 자기 자신 -->
		<form action="" method="post">
			<select id="year" name="year" onchange="formCalendar(this.form)">
				<!-- <option value="9999">9999</option> -->
				<%=yOptions %>		
			</select>년
			<select id="month" name="month" onchange="formCalendar(this.form)">
				<!-- <option value="99">99</option> -->
				<%=mOptions %>
			</select>월
		</form>
		<!-- 달력을 그리게 될 지점 -->
		<%=calStr %>
		</div><!-- 연/월 선택 card-body 끝 -->
		
		
  	<div class="card-body">
    <h5 class="card-title">예약 내역</h5>
    <p class="card-text">
    <table class="table">
    	<tr>
    		<th>날짜</th>
    		<th>예약내역</th>
    		<th>상세보기</th>
    	</tr>
    	<tr>
    		<td>2023-07-30 13:00~17:00</td>
    		<td>비글 2마리</td>
    		<td>
    			<button type="button" class="btn btn-primary">Button</button>		
    		</td>
    	</tr>
    </table>
    </p>
    
  </div>
</div>
<!-- 오른쪽 카드 구역 끝 -->


</body>
</html>