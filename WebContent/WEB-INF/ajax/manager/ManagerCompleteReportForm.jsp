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
<title>관리자 처리완료 신고</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

<script type="text/javascript">

	//페이지 로딩 시에 실행되는 코드
	
	$(document).ready(function()
	{

		var flag =<%=request.getAttribute("flag")%>
			if (flag == 4)
				PetSittingReportComplete();
			if (flag == 5)
				DogWalkReportComplete();
			if (flag == 6)
				ProfileReportComplete();
		

		function PetSittingReportComplete()
		{
			$.ajax(
			{
				type : "POST",
				url : "sittingcompletelist.action",
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
		
		function DogWalkReportComplete()
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
		function ProfileReportComplete()
		{
			$.ajax(
			{
				type : "POST",
				url : "profilereportlist.action",
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
			<h2 style="margin-top: 20px;">처리완료된 신고</h2>
			<hr />
			<button class="report-button" id="pet-sitting-report">펫시팅 신고</button>
			<button class="report-button" id="dog-walking-report">대리산책 신고</button>
			<button class="report-button" id="profile-report">프로필 신고</button>
		</div>
		<div id="completeTable" class="mt-4">
			<table class="table table-bordered table-hover" id="tableComplete">
				<thead>
					<tr>
						<th style="color: white;">처리번호</th>
						<th style="color: white;">신고번호</th>
						<th style="color: white;">신고사유</th>
						<th style="color: white;">상세사유</th>
						<th style="color: white;">처리내용</th>
						<th style="color: white;">처리자(관리자)</th>
						<th style="color: white;">처리일자</th>
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