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
<script type="text/javascript">

<script type="text/javascript">

//페이지 로딩 시에 실행되는 코드

$(document).ready(function()
{
	

	// 대리산책 신고내역 클릭시
	$("#dog-walking-acc").click(function()
	{
		DogWalkComplete();
	});

	// 프로필 신고내역 클릭시
	$("#profile-complete-acc").click(function()
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

});
	
	

</script>
</head>
<body>
	<div id="subContent">
	<div style="margin-left: -10%; width: 120%;" id="subContent">
		<div>
			<h2 style="margin-top: 20px;">사고처리 내역</h2>
			<hr />
			<button class="report-button" id="pet-sitting-acc"
			style="background-color: gray;">펫시팅 신고</button>
			<button class="report-button" id="dog-walking-acc">대리산책 신고</button>
			<button class="report-button" id="profile-complete-acc">프로필 신고</button>
		</div>
		<div id="completeTable" class="mt-4">
			<table class="table table-bordered table-hover" id="tableComplete">
				<thead>
					<tr>
						<th style="color: white;">처리번호</th>
						<th style="color: white;">예약번호</th>
						<th style="color: white;">처리자(관리자)</th>
						<th style="color: white;">처리일자</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${sittingAccList }">
						<tr>
							<td>${list.sacSid}</td>
							<td>${list.sbSid}</td>
							<td>${list.miName}</td>
							<td>${list.sacDate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	</div>
</body>
</html>