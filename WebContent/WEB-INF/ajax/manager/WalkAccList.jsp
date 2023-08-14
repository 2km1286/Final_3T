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
//페이지 로딩 시에 실행되는 코드
$(document).ready(function()
{
	

	// 펫시팅 신고내역 클릭시
	$("#pet-sitting-acc").click(function()
	{
		SittingAccList();
	});

	

	// 대리산책 신고내역 버튼 클릭시 호출
	function SittingAccList()
	{
		$.ajax(
		{
			type : "POST",
			url : "sittingacclist.action",
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
			<button class="report-button" id="pet-sitting-acc">펫시팅 신고</button>
			<button class="report-button" id="dog-walking-acc" 
			style="background-color: gray;">대리산책 신고</button>
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
					<c:forEach var="list" items="${walkAccList }">
						<tr>
							<td>${list.wacSid}</td>
							<td>${list.wbSid}</td>
							<td>${list.miName}</td>
							<td>${list.wacDate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	</div>
</body>
</html>