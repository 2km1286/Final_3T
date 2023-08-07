<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/styleCal.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="content w-100">
				    <div class="calendar-container">
				      <div class="calendar"> 
				        <div class="year-header"> 
				          <span class="left-button fa fa-chevron-left" id="prev"> </span> 
				          <span class="year" id="label"></span> 
				          <span class="right-button fa fa-chevron-right" id="next"> </span>
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
				        <button class="button" id="add-button">예약하기</button>
				      </div>
				    </div>
				    <div class="events-container">
				    </div>
				    
				  </div>
				</div>
			</div>
		</div>
	</section>
<script type="text/javascript" src="js/bootstrapCal.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/popperCal.js"></script>
  <script type="text/javascript" src="js/mainCal.js"></script>

	</body>
</html>