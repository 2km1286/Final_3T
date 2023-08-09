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
<title>대리산책공고글올리기</title>

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

<script type="text/javascript">


</script>


<style type="text/css">

@import url('https://fonts.googleapis.com/css?family=Jua:400');

*{font-family: "Jua"}

span.badge
{ 
	font-family: "Jua"; font-size: 23px; border-radius: 3px; margin-bottom: 20px;
	background-color: #4caf50; color: white; font-weight: lighter;
}
</style>

</head>
<body>
	<c:import url="/WEB-INF/components/index/HeaderForm.jsp">
	</c:import>
		
		<div class="card" style="margin-left: 15%; margin-top: 5%; width: 70%; overflow: auto;">
			<h3><span class="badge">대리산책 공고글 올리기</span></h3>
			<div class="cal-md">
				
				<div class="mb-3">
				  <label for="formGroupExampleInput" class="form-label">주소</label>
				  <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Example input placeholder">
				  <button type="button" id="checkZipcodeBtn">우편번호</button>
				</div>
				<input type="text" class="form-control" id="formGroupExampleInput" placeholder="Example input placeholder">
				
				<div class="mb-3">
				  <label for="formGroupExampleInput" class="form-label">상세주소</label>
				  <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Example input placeholder">
				</div>
				
				<div class="oneText row">
					<div class="col">
						<span class="card-text"><small class="text-muted">서비스 가능 시간</small></span><br> 
						<label for="time"></label> <input type="time" id="time" class="custom-textbox">
					</div>
					<div class="col">
						<span class="card-text"><small class="text-muted">서비스 종료 시간</small></span><br> 
						<label for="time"></label> <input type="time" id="time" class="custom-textbox">
						<span id="addResult"></span> <!-- 사용자가 시간을 추가한다면 ajax로 그 시간만큼 보여줘야함 -->
					</div>
				</div>
			
			</div>
		
		</div>
	
	
	<c:import url="/WEB-INF/components/index/FooterForm.jsp">
	</c:import>
</body>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</html>