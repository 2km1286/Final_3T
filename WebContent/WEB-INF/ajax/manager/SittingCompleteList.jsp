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
<title>SittingCompleteList</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>

<script type="text/javascript">
	$(document).ready(function()
	{

		// 대리산책 신고내역 클릭시
		$("#dog-walking-complete").click(function()
		{
			DogWalkComplete();
		});

		// 프로필 신고내역 클릭시
		$("#profile-complete").click(function()
		{
			ProfileComplete();
		});

		// 대리산책 신고내역 버튼 클릭시 호출
		function DogWalkComplete()
		{
			$.ajax(
			{
				type : "POST",
				url : "walkcompletelist.action",
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

		// 프로필 신고내역 버튼 클릭시 호출
		function ProfileComplete()
		{
			$.ajax(
			{
				type : "POST",
				url : "profilecompletelist.action",
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

		// 자세히
		function showDetail(detail)
		{
			alert(detail);
		}
		//자세히
		function showDetail(detail)
		{
			alert(detail);
		}
	});
</script>

</head>
<body>
	<div style="margin-left: -10%; width: 120%;" id="subContent">
		<div>
			<h2 style="margin-top: 20px;">처리완료된 신고</h2>
			<hr />
			<button class="report-button" id="pet-sitting-complete"
				style="background-color: gray;">펫시팅 신고</button>
			<button class="report-button" id="dog-walking-complete">대리산책
				신고</button>
			<button class="report-button" id="profile-complete">프로필 신고</button>
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
					<c:forEach var="list" items="${sittingCompleteList }">
						<tr>
							<td>${list.srcSid}</td>
							<td>${list.srrSid}</td>
							<td>${list.irName}</td>
							<td><input class="report-button" type="button" value="확인하기"
								onclick="showDetail('${list.srrDetail}')"></td>
							<td>${list.imaName}</td>
							<td>${list.miName}</td>
							<td>${list.srcDate}</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
</body>
</html>