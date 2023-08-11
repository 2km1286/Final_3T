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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<script type="text/javascript">
//페이지 로딩 시에 실행되는 코드
	$(document).ready(function()
	{
		 var count = <%=request.getAttribute("count") %>
		 if (count < 1) 
	 {
		 $("#emergency-report").css("animation", "none");
	 }
	});
</script>
</head>
<body>

		<div style="margin-left: -10%; width: 120%;" id="subContent">
		<div>
			<h2 style="margin-top: 20px;">신고현안 및 비상관리</h2>
			<hr />
			<button class="report-button" id="pet-sitting-report" style="background-color: gray;">펫시팅 신고</button>
			<button class="report-button" id="dog-walking-report">대리산책 신고</button>
			<button class="report-button" id="profile-report">프로필 신고</button>
			<button class="report-button" id="emergency-report">비상 상황</button>
		</div>
		<div id="completeTable" class="mt-4">
			<table class="table table-bordered table-hover" id="tableComplete">
				<thead>
					<tr>
						<th style="color: white;">신고번호</th>
						<th style="color: white;">회원번호</th>
						<th style="color: white;">돌봄장소번호</th>
						<th style="color: white;">신고사유</th>
						<th style="color: white;">상세사유</th>
						<th style="color: white;">신고접수일</th>
						<th style="color: white;">처리</th>
					</tr>
				</thead>
				<tbody>
						
					
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>