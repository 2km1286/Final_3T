<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	String memSid = (String)session.getAttribute("memSid");		// 최초 요청시 "0"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대리산책</title>
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

</style>

<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
</head>
<body>
현재 접속자 : 0이면 게스트 → ${memSid }
	<c:import url="/WEB-INF/components/MenuForm_2.jsp">
	</c:import>
	<section>
	      <div class="py-5 bg-light">
	     <div class="container">
	       <!-- Selection Bar -->
	       <div class="selection-bar">
	         <label for="location">지역:</label>
	         <select id="location">
	         	<!-- memSid가 있으면 addr1 에 따라서 지역 checked  -->
	           <option value="seoul">서울</option>      
	           <option value="busan">부산</option>
	           <!-- Add more options as needed -->
	         </select>
				
	           <label for="datepicker">날짜 선택:</label>
	        <input type="text" id="datepicker" class="custom-textbox" readonly>
	
	
	         <label for="time">시간:</label>
	         <input type="time" id="time">
	
	         <label for="dogs">견수:</label>
	         <input type="number" id="dogs" min="1" max="5">
	
	         <button onclick="filterList()">적용</button>
	       </div>
	    
	    
	    
	     <h2>대리산책 공고글 </h2>
	     <hr>
	      <div class="row">
	        <div class="col-md-4">
	          <div class="card">
	            <div class="card-block">
	            <span class="card-title">마스터 산책러</span><br>
	            <img alt="" src="images/profilEx.png"  style="width: 120px;">
	              <h4 class="card-title">멍뭉 마스터</h4>
	              <h6 class="card-subtitle text-muted">시간 약속을 잘 지키는 성실한 집사입니다 !</h6>
	              <p class="card-text p-y-1">Some quick example text to build on the card title .</p>
	              <a href="#" class="card-link">link</a>
	              <a href="#" class="card-link">Second link</a>
	            </div>
	          </div>
	        </div>
	        <div class="col-md-4">
	          <div class="card">
	            <div class="card-block">
	            <span class="card-title">프로 산책러</span><br>
	            <img alt="" src="images/profilEx.png"  style="width: 120px;">
	              <h4 class="card-title">섬세하나</h4>
	              <h6 class="card-subtitle text-muted">시간 약속을 잘 지키는 성실한 집사입니다 !</h6>
	              <p class="card-text p-y-1">Some quick example text to build on the card title .</p>
	              <a href="#" class="card-link">link</a>
	              <a href="#" class="card-link">Second link</a>
	            </div>
	          </div>
	        </div>
	        <div class="col-md-4">
	          <div class="card">
	            <div class="card-block">
	            <span class="card-title">프로 산책러</span><br>
	            <img alt="" src="images/profilEx.png"  style="width: 120px;">
	              <h4 class="card-title">달려라구찌</h4>
	              <h6 class="card-subtitle text-muted">시간 약속을 잘 지키는 성실한 집사입니다 !</h6>
	              <p class="card-text p-y-1">Some quick example text to build on the card title .</p>
	              <a href="#" class="card-link">link</a>
	              <a href="#" class="card-link">Second link</a>
	            </div>
	          </div>
	        </div>
	      </div>
	      </div><br><br>	
	     <div class="container">
	      <div class="row">
	        <div class="col-md-4">
	          <div class="card">
	            <div class="card-block">
	            <span class="card-title">초보 산책러</span><br>
	            <img alt="" src="images/profilEx.png"  style="width: 120px;">
	              <h4 class="card-title">우사인볼트</h4>
	              <h6 class="card-subtitle text-muted">시간 약속을 잘 지키는 성실한 집사입니다 !</h6>
	              <p class="card-text p-y-1">Some quick example text to build on the card title .</p>
	              <a href="#" class="card-link">link</a>
	              <a href="#" class="card-link">Second link</a>
	            </div>
	          </div>
	        </div>
	        <div class="col-md-4">
	          <div class="card">
	            <div class="card-block">
	            <span class="card-title">마스터 산책러</span><br>
	            <img alt="" src="images/profilEx.png"  style="width: 120px;">
	              <h4 class="card-title">철인3종경기</h4>
	              <h6 class="card-subtitle text-muted">시간 약속을 잘 지키는 성실한 집사입니다 !</h6>
	              <p class="card-text p-y-1">Some quick example text to build on the card title .</p>
	              <a href="#" class="card-link">link</a>
	              <a href="#" class="card-link">Second link</a>
	            </div>
	          </div>
	        </div>
	        <div class="col-md-4">
	          <div class="card">
	            <div class="card-block">
	            <span class="card-title">초보 산책러</span><br>
	            <img alt="" src="images/profilEx.png"  style="width: 120px;">
	              <h4 class="card-title">느릿거북이</h4>
	              <h6 class="card-subtitle text-muted">시간 약속을 잘 지키는 성실한 집사입니다 !</h6>
	              <p class="card-text p-y-1">Some quick example text to build on the card title .</p>
	              <a href="#" class="card-link">link</a>
	              <a href="#" class="card-link">Second link</a>
	            </div>
	          </div>
	        </div>
	      </div>
	      <hr>
	      </div>
	    
	  </div>
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
	    flatpickr("#datepicker", {
	      dateFormat: 'Y-m-d',
	      position: "below",
	      defaultDate: "today",
	      theme: "airbnb"
	    });
	  </script>
	  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
	  <script src="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-alpha.6.min.js"></script>
	  <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
</html>