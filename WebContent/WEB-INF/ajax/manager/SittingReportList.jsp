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
<title>펫시팅신고내역</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>

<script type="text/javascript">
//페이지 로딩 시에 실행되는 코드
	$(document).ready(function()
	{
		 var count = <%=request.getAttribute("count")%>
		 if (count < 1) 
	 {
		 $("#emergency-report").css("animation", "none");
	 }
		 
	});
	
	// 대리산책 신고내역 클릭시
	$("#dog-walking-report").click(function()
	{
		DogWalkReport();
	});
	
	// 프로필 신고내역 클릭시
	$("#profile-report").click(function()
	{
		ProfileReport();
	});
	
	
	// 대리산책 신고내역 버튼 클릭시 호출
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
	
	// 프로필 신고내역 버튼 클릭시 호출
	function ProfileReport()
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
	
	// 자세히
	function showDetail(detail)
	{
		alert(detail); 
	}
	
	
	// 블라인드 처리 했을때 분기 처리후 넘김 컨트롤러로
	function updateSittingPublic(ipSid,spSid)
	{
		if (ipSid =='1')
			var ipSid2 = parseInt(ipSid)+1;
		else
			var ipSid2 = parseInt(ipSid)-1;
		
		$.ajax(
		{
			type:"POST"
			, url:"sittingprivate.action?ipSid="+ipSid2+"&spSid="+spSid
			, async:true
			, success:function(data)
			{
				
				window.location.href = "managermain.action?flag="+'1';
				//window.location.href = "sittingreportlist.action";
									
			}
			, error:function(e)
			{
				alert(e.responseText);
			}
			
		});	
	}
	
	// 펫시팅 반려
	function DeleteSittingReport(srrSid,imaSid) 
	{
    if (confirm("반려 처리하시겠습니까?")) {
        $.ajax({
            type: "POST",
            url: "removesittingreport.action?srrSid=" + srrSid+"&miSid="+${miSid}+"&ima="+imaSid,
            async: true,
            success: function(data) 
            {
                window.location.href = "managermain.action?flag=1";
            },
            error: function(e) 
            {
                alert(e.responseText);
            }
        	});
   	 	}
	}
	// 펫시팅 수정요청
	function ChangeSittingReport(srrSid,imaSid) 
	{
    if (confirm("수정요청 하시겠습니까?")) {
        $.ajax({
            type: "POST",
            url: "removesittingreport.action?srrSid=" + srrSid+"&miSid="+${miSid}+"&ima="+imaSid,
            async: true,
            success: function(data) 
            {
                window.location.href = "managermain.action?flag=1";
            },
            error: function(e) 
            {
                alert(e.responseText);
            }
        	});
   	 	}
	}

	
	
</script>


</head>
<body>

	<div style="margin-left: -10%; width: 120%;" id="subContent">
		<div>
			<h2 style="margin-top: 20px;">신고현안 및 비상관리</h2>
			<hr />
			<button class="report-button" id="pet-sitting-report"
				style="background-color: gray;">펫시팅 신고</button>
			<button class="report-button" id="dog-walking-report">대리산책
				신고</button>
			<button class="report-button" id="profile-report">프로필 신고</button>
			<button class="report-button" id="emergency-report">비상 상황</button>
		</div>
		<div id="completeTable" class="mt-4">
			<table class="table table-bordered table-hover" id="tableComplete">
				<thead>
					<tr>
						<th style="color: white;">신고번호</th>
						<th style="color: white;">신고자(닉네임)</th>
						<th style="color: white;">신고공간번호</th>
						<th style="color: white;">신고사유</th>
						<th style="color: white;">상세사유</th>
						<th style="color: white;">신고접수일</th>
						<th style="color: white;">처리</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${sittingReportList }">
						<tr>
							<td>${list.srrSid}</td>
							<td>${list.jmNickName}</td>
							<td>${list.spSid}</td>
							<td>${list.irName}</td>
							<td><input class="report-button" type="button" value="확인하기"
								onclick="showDetail('${list.srrDetail}')"></td>
							<td>${list.srrDate}</td>
							<td id="actionBtn"><input class="report-button"
								type="button" value="정지" onclick="BannedSittingReport(${list.srrSid},5)"> 
								<input class="report-button"
								type="button" value="반려" onclick="DeleteSittingReport(${list.srrSid},4)"> 
								<input class="report-button"
								type="button" value="수정요청" onclick="ChangeSittingReport(${list.srrSid},3)"> 
								<!-- 분기처리 시작 --> 
								<c:if
									test="${list.ipSid == '1'}">
									<input class="report-button" type="button" value="블라인드하기"
										onclick="updateSittingPublic(${list.ipSid},${list.spSid})">
								</c:if> <c:if test="${list.ipSid == '2'}">
									<input class="report-button" type="button" value="블라인드해제"
										style="background-color: gray;"
										onclick="updateSittingPublic(${list.ipSid},${list.spSid})">
								</c:if></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
</body>
</html>