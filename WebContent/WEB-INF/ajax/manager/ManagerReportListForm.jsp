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
<title>관리자 현안</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<style type="text/css">

#emergency-report
{
   background-color: #FF0000; /* 붉은색 배경 */
   color: #FFFFFF; /* 흰색 텍스트 */
   font-size: 16px;
   padding: 10px 20px;
   border: none;
   border-radius: 5px;
   box-shadow: 0 2px 6px rgba(0, 0, 0, 0.4); /* 그림자 효과 */
   transition: background-color 0.3s ease; /* 색상 변경 시 부드러운 전환 */
   cursor: pointer;
   animation: vibration 3s infinite; /* 0.5초 간격으로 진동하는 애니메이션 반복 적용 있을 경우에만?? 가능?*/
   
  
}
#emergency-report:hover
{
	background-color: #FF3333; /* 더 진한 붉은색 배경 */
  	transform: scale(1.05); /* 호버 시 약간 커지는 효과 */
}


/* 애니메이션 흔들기 */
@keyframes vibration {
  0% { transform: translateX(0) translateY(0); }
  10% { transform: translateX(-2px) translateY(-2px) rotate(2deg); }
  20% { transform: translateX(2px) translateY(2px) rotate(-2deg); }
  30% { transform: translateX(-2px) translateY(-2px) rotate(2deg); }
  40% { transform: translateX(2px) translateY(2px) rotate(-2deg); }
  50% { transform: translateX(-2px) translateY(-2px) rotate(2deg); }
  60% { transform: translateX(2px) translateY(2px) rotate(-2deg); }
  70% { transform: translateX(-2px) translateY(-2px) rotate(2deg); }
  80% { transform: translateX(2px) translateY(2px) rotate(-2deg); }
  90% { transform: translateX(-2px) translateY(-2px) rotate(2deg); }
  100% { transform: translateX(0) translateY(0); }
}

</style>
<script type="text/javascript">

	//페이지 로딩 시에 실행되는 코드
	
	$(document).ready(function()
	{
		var count =<%=request.getAttribute("count")%>
		if (count < 1)
			{
				$("#emergency-report").css("animation", "none");
			}

		var flag =<%=request.getAttribute("flag")%>
			if (flag == 1)
				PetSittingReport();
			if (flag == 2)
				DogWalkReport();

		
		
		
		$("#dog-walking-report").click(function()
		{
			DogWalkReport();
		});

		function PetSittingReport()
		{
			$.ajax(
			{
				type : "POST",
				url : "sittingreportlist.action",
				async : true,
				success : function(data)
				{
					$("#subContent").html(data);

				},
				error : function(e)
				{
					alert(e.responseText);
				}

			});
		}
		
		function DogWalkReport()
		{
			$.ajax(
			{
				type : "POST",
				url : "walkreportlist.action",
				async : true,
				success : function(data)
				{
					$("#subContent").html(data);

				},
				error : function(e)
				{
					alert(e.responseText);
				}

			});
		}

	});
</script>
</head>
<body>
	<div id="subContent">
	<div style="margin-left: -10%; width: 120%;" id="subContent">
		<div>
			<h2 style="margin-top: 20px;">신고현안 및 비상관리</h2>
			<hr />
			<button class="report-button" id="pet-sitting-report">펫시팅 신고</button>
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
	</div>
</body>
</html>