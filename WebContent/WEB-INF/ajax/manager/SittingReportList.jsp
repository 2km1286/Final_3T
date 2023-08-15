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
		
		// 비상상황 신고내역 클릭시
		$("#emergency-report").click(function()
		{
			EmergReport();
		});
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
	
	// 자세히
	function showDetail(detail)
	{
		alert(detail); 
	}
	
	
	
	
	// 펫시팅 반려
	function DeleteSittingReport(srrSid,imaSid) 
	{
    if (confirm("반려 처리하시겠습니까?")) {
        $.ajax({
            type: "POST",
            url: "removesittingreport.action?srrSid="+srrSid+"&miSid="+${miSid}+"&imaSid="+imaSid,
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
	// 정지 모달창
    function openSuspensionModal(srrSid,spSid) {
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
            url: "memberbanned.action?srrSid="+srrSid+"&miSid="+${miSid}+"&imaSid="+imaSid+"&ibSid="+ibSid+"&spSid="+spSid
     		,async: true,
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
    function openReservation(srrSid) 
    {
        //alert(srrSid);
    	window.location.href = "openwithsrrid.action?srrSid="+srrSid;
    };

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
						<th style="color: white;">게시물보기</th>
						<th style="color: white;">신고접수일</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="list" items="${sittingReportList }">
						<tr class="row-clickable">
							<td class="srrSid">${list.srrSid}</td>
							<td>${list.jmNickName}</td>
							<td><input class="report-button" type="button" value="${list.spSid }"
							 onclick="openReservation(${list.srrSid})"></td>
							<td>${list.irName}</td>
							<td><input class="report-button" type="button" value="확인하기"
								onclick="showDetail('${list.srrDetail}')"></td>
							<td>${list.srrDate}</td>
							<td id="actionBtn"><input class="report-button"
								type="button" value="정지" onclick="openSuspensionModal(${list.srrSid},${list.spSid})"> 
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
								</c:if>
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