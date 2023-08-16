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
<title>대리산책신고내역</title>
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
	
	// 펫시터 신고내역 클릭시
	$("#pet-sitting-report").click(function()
			{
				PetSittingReport();
			});
			
	// 프로필 신고내역 클릭시
	$("#profile-report").click(function()
	{
		ProfileReport();
	});
	// 비상상황 신고내역 클릭시
	$("#emergency-report").click(function()
	{
		EmergReport();
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
	
	// 프로필 신고내역 버튼 클릭시
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
	// 비상상황  버튼 클릭시 호출
	function EmergReport()
	{
		$.ajax(
		{
			type : "POST",
			url : "emerglist.action",
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
	function showDetail(detail)
	{
		// 'detail' 매개변수를 사용하여 상세 내용을 표시하는 로직을 작성합니다.
		alert(detail); // 간단히 경고창으로 표시하는 예시입니다.
	}
	// 블라인드 처리 했을때 분기 처리후 넘김 컨트롤러로
	function updateWalkPublic(ipSid,wpSid)
	{
		if (ipSid =='1')
			var ipSid2 = parseInt(ipSid)+1;
		else
			var ipSid2 = parseInt(ipSid)-1;
		
		$.ajax(
		{
			type:"POST"
			, url:"walkprivate.action?ipSid="+ipSid2+"&wpSid="+wpSid
			, async:true
			, success:function(data)
			{
				
				window.location.href = "managermain.action?flag="+'2';
				//window.location.href = "sittingreportlist.action";
									
			}
			, error:function(e)
			{
				alert(e.responseText);
			}
			
		});	
		
		
	}
	
	// 대리산책 반려
	function DeleteWalkReport(wrrSid,imaSid) 
	{
    if (confirm("반려 처리하시겠습니까?")) {
        $.ajax({
            type: "POST",
            url: "removewalkreport.action?wrrSid="+ wrrSid+"&miSid="+${miSid}+"&imaSid="+imaSid,
            async: true,
            success: function(data) 
            {
                window.location.href = "managermain.action?flag=2";
            },
            error: function(e) 
            {
                alert(e.responseText);
            }
        	});
   	 	}
	}
	
	// 정지 모달창
    function openSuspensionModal(wrrSid,wpSid) {
        var modal = document.getElementById("suspensionModal");
        modal.style.display = "block"; // 모달 표시
        
        var confirmButton = document.getElementById("suspensionConfirm");
        confirmButton.onclick = function () 
        {
            var selectedValue = document.querySelector('input[name="suspensionOption"]:checked');
            if (selectedValue) {
                selectedValue = selectedValue.value;
                modal.style.display = "none"; // 모달 숨김
                DeleteSittingReport(srrSid, selectedValue,5,spSid);
            }
        };
    }
    function closeSuspensionPopup() {
        var popup = document.getElementById("suspensionModal");
        popup.style.display = "none";
    }
 // 모달 닫기 버튼
    $(".close").on("click", function() {
        $("#suspensionModal").css("display", "none");
    });
 	// 정지
	function DeleteSittingReport(srrSid,ibSid,imaSid,spSid) 
	{
 		
    	if (confirm("정지 처리하시겠습니까?")) {
        $.ajax({
            type: "POST",
            url: "memberbanned.action?wrrSid="+wrrSid+"&miSid="+${miSid}+"&imaSid="+imaSid+"&ibSid="+ibSid+"&wpSid="+wpSid,
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
			<button class="report-button" id="pet-sitting-report">펫시팅 신고</button>
			<button class="report-button" id="dog-walking-report"
			style="background-color: gray;">대리산책
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
					<c:forEach var="list" items="${WalkReportList }">
						<tr>
							<td>${list.wrrSid}</td>
							<td>${list.jmNickName}</td>
							<td>${list.wpSid}</td>
							<td>${list.irName}</td>
							<td><input class="report-button" type="button" value="확인하기"
								onclick="showDetail('${list.wrrDetail}')"></td>
							<td>${list.wrrDate}</td>
							<td id="actionBtn"><input class="report-button"
								type="button" value="정지"onclick="openSuspensionModal(${list.wrrSid},${list.wpSid})"> 
								<input class="report-button"
								type="button" value="반려" onclick="DeleteWalkReport(${list.wrrSid},4)"> 
								<input class="report-button"
								type="button" value="수정요청" onclick="ChangeWalkReport(${list.wrrSid},3)"> 
								<!-- 분기처리 시작 --> 
								<c:if
									test="${list.ipSid == '1'}">
									<input class="report-button" type="button" value="블라인드하기"
										onclick="updateWalkPublic(${list.ipSid},${list.wpSid})">
								</c:if> <c:if test="${list.ipSid == '2'}">
									<input class="report-button" type="button" value="블라인드해제"
										style="background-color: gray;"
										onclick="updateWalkPublic(${list.ipSid},${list.wpSid})">
								</c:if></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
			<!-- 모달 창 -->
			<div id="suspensionModal" class="modal">
			    <div class="modal-content">
			    	<span class="close" style="float: right; position: absolute;  
			    	top: 10px; right: 10px; font-size: 20px; font-weight: bold;">&times;</span>
			        <label><input type="radio" name="suspensionOption" value="1"> 3일 정지</label><br>
			        <label><input type="radio" name="suspensionOption" value="2"> 5일 정지</label><br>
			        <label><input type="radio" name="suspensionOption" value="3"> 7일 정지</label><br>
			        <label><input type="radio" name="suspensionOption" value="4"> 영구정지</label><br><br>
			        <button id="suspensionConfirm">확인</button>
			    </div>
			</div>
		</div>
	</div>
</body>
</html>