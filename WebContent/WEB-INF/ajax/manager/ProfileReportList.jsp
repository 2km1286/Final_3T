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
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<!-- 스타일과 모달 창 표시를 위한 스크립트 -->
<style>
    /* 모달 스타일 */
    .modal {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.4);
        z-index: 1;
    }
    
    .modal-content {
        background-color: white;
        width: 300px;
        padding: 20px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
        border-radius: 10px; /* 모달 창 둥글게 */
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3); /* 그림자 추가 */
    }

    /* 닫기 버튼 스타일 */
    .close {
        color: #aaa;
        float: right;
        font-size: 20px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
    }
</style>
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
			
	// 대리산책 신고내역 클릭시
	$("#dog-walking-report").click(function()
	{
		DogWalkReport()();
	});
	// 비상상황 신고내역 클릭시
	$("#emergency-report").click(function()
	{
		EmergReport();
	});
	
	// 펫시팅 신고내역
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
	
	// 대리산책 신고내역
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
	
	
	// 프로필 반려
	function DeleteProfileReport(prrSid,imaSid) 
	{
    if (confirm("반려 처리하시겠습니까?")) {
        $.ajax({
            type: "POST",
            url: "removeprofilereport.action?prrSid="+ prrSid+"&miSid="+${miSid}+"&imaSid="+imaSid,
            async: true,
            success: function(data) 
            {
                window.location.href = "managermain.action?flag=3";
            },
            error: function(e) 
            {
                alert(e.responseText);
            }
        	});
   	 	}
	}
	
	// 정지 모달창
    function openSuspensionModal(prrSid) {
        var modal = document.getElementById("suspensionModal");
        modal.style.display = "block"; // 모달 표시
        
        var confirmButton = document.getElementById("suspensionConfirm");
        confirmButton.onclick = function () 
        {
            var selectedValue = document.querySelector('input[name="suspensionOption"]:checked');
            if (selectedValue) {
                selectedValue = selectedValue.value;
                modal.style.display = "none"; // 모달 숨김
                DeleteSittingReport(prrSid, selectedValue,5);
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
	function DeleteSittingReport(prrSid,ibSid,imaSid) 
	{
 		
    	if (confirm("정지 처리하시겠습니까?")) {
        $.ajax({
            type: "POST",
            url: "memberbannedprofile.action?prrSid="+prrSid+"&miSid="+${miSid}+"&imaSid="+imaSid+"&ibSid="+ibSid,
            async: true,
            success: function(data) 
            {
                window.location.href = "managermain.action?flag=3";
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
			<button class="report-button" id="dog-walking-report">대리산책
				신고</button>
			<button class="report-button" id="profile-report"
			style="background-color: gray;">프로필 신고</button>
			<button class="report-button" id="emergency-report">비상 상황</button>
		</div>
		<div id="completeTable" class="mt-4">
			<table class="table table-bordered table-hover" id="tableComplete">
				<thead>
					<tr>
						<th style="color: white;">신고번호</th>
						<th style="color: white;">신고자(닉네임)</th>
						<th style="color: white;">신고대상(닉네임)</th>
						<th style="color: white;">신고사유</th>
						<th style="color: white;">신고접수일</th>
						<th style="color: white;">처리</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${ProfileReportList }">
						<tr>
							<td>${list.prrSid}</td>
							<td>${list.reporterJmNickName}</td>
							<td>${list.reportedJmNickName}</td>
							<td><input class="report-button" type="button" value="확인하기"
								onclick="showDetail('${list.prrDetail}')"></td>
							<td>${list.prrDate}</td>
							<td id="actionBtn"><input class="report-button" type="button" value="정지"
								onclick="openSuspensionModal(${list.prrSid})"> 
								<input class="report-button"type="button" value="반려" onclick="DeleteProfileReport(${list.prrSid},4)">
									<input class="report-button" type="button" value="프로필임의변경"
										onclick="updateProPublic(${list.ipSid},${list.prrSid})">
							</td>
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